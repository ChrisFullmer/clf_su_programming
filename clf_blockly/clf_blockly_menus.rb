# See the loader file for license and author info

module CLF_Extensions_NS
	module CLF_Blockly
    require 'sketchup.rb'
    #require 'C:\blockly_src\plugins\clf_blockly\clf_blockly_data.rb'
    require NAME+'/'+NAME+'_data.rb'
  end

  if !file_loaded?('clf_menu2_loader')
    @@clf_tools_menu = UI.menu("Plugins").add_submenu("Chris Fullmer Tools")
  end
    
	#------New menu Items---------------------------
	if !file_loaded?('clf_ew_loader')
		@@clf_ew_menu = @@clf_tools_menu.add_submenu("-=Extension Warehouse=-")
    @@clf_ew_menu.add_separator
		@@clf_ew_menu.add_item("My Extension Warehouse Store"){UI.openURL "http://extensions.sketchup.com/user/46/store"}
    @@clf_tools_menu.add_separator
    @@clf_ew_menu.add_separator
	end
    @@clf_ew_menu.add_item(CLF_Blockly::MENU_NAME+" Page"){UI.openURL "http://extensions.sketchup.com/content/clf-blockly"}
	#------------------------------------------------
    
  if !file_loaded?(__FILE__)

    clf_cam_ob = CLF_Blockly::initialize_blockly
    cam_recorder_sub_menu = @@clf_tools_menu.add_submenu("Blockly Programming") 
    
		toolbar = UI::Toolbar.new(CLF_Blockly::MENU_NAME)

    cmd1 = UI::Command.new("Start Blockly") do
      dlg = CLF_Blockly::initialize_blockly
      dlg.show

    end
    cam_recorder_sub_menu.add_item cmd1   
    cmd1.small_icon = "./images/blockly_16.png"
    cmd1.large_icon = "./images/blockly_24.png"
    cmd1.tooltip = "Start Blockly"
    toolbar = toolbar.add_item cmd1    

    
    state = toolbar.get_last_state 
    if (state == TB_VISIBLE)
        toolbar.restore
        # Per bug 2902434, adding a timer call to restore the toolbar. This
        # fixes a toolbar resizing regression on PC as the restore() call
        # does not seem to work as the script is first loading.
        UI.start_timer(0.1, false) {
          toolbar.restore
        }
    end 

  end
    
  file_loaded('clf_ew_loader')    
  file_loaded('clf_menu2_loader')
  file_loaded(__FILE__)
end