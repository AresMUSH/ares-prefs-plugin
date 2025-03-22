module AresMUSH
  module Prefs
    def self.categories
      Global.read_config('prefs', 'categories') || []
    end
    
    def self.can_edit_prefs?(actor, model)
      return false if !actor
      return true if actor.name == model.name
      actor && actor.has_permission?("manage_prefs")
    end
    
    def self.uninstall_plugin(client)
      begin 
        Character.all.each do |c|
          c.update(rp_prefs: nil)
          c.update(prefs: nil)
          c.update(prefs_notes: nil)
        end
         Manage.uninstall_plugin("prefs")
         client.emit_success "Plugin uninstalled."
      
       rescue Exception => e
         client.emit_failure "Error uninstalling plugin: #{e} backtrace=#{e.backtrace[0,10]}"
       end
    end
  end
end