module AresMUSH
  module Prefs
    
    def self.build_web_profile_data(char, viewer)
      {
        rp_prefs: Website.format_markdown_for_html(char.rp_prefs)
      }
    end
    
    def self.save_web_profile_data(char, enactor, args)
      if (Prefs.can_edit_prefs?(enactor, char))
        char.update(rp_prefs: Website.format_input_for_mush(args['rp_prefs']))
      end
      
      nil
    end
    
    def self.build_web_profile_edit_data(char, enactor, is_profile_manager)
      {
        rp_prefs: Website.format_input_for_html(char.rp_prefs),
        show_rp_prefs_tab: Prefs.can_edit_prefs?(enactor, char)
      }
    end
  end
end
