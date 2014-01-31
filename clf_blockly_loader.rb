=begin
Original work Copyright 2013, Chris Fullmer
All Rights Reserved

Disclaimer
THIS SOFTWARE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.

License
???

Information
Author - Google and tweaked for SU by Chris Fullmer
Organization - www.ChrisFullmer.com and distributed on the SketchUp Extension Warehouse and smustard.com
Name - SketchUp Blockly
SU Version - 2014, 2013, 8, 7

Description
Info needed

Usage
Info needed

History::
1.0:: 2014-1-29
   * Began work
=end


module CLF_Extensions_NS
  
  module CLF_Blockly            #EDIT
    require 'sketchup.rb'
    require 'extensions.rb'
    
    NAME = "clf_blockly"        #EDIT
    UNAME = "CLF Blockly"       #EDIT
    MENU_NAME = "Blockly Programming"       #EDIT
    version = "0.1.0"           #EDIT
    desc = "This is blockly"
    copy_year = "2014"
    author = "Google, tweaked for SketchUp by Chris Fullmer"
    
#------edit above--------------------------------------------------------------- 

    
    extension = SketchupExtension.new UNAME, NAME+"/"+NAME+"_menus.rb"

    #The name= method sets the name which appears for an extension inside the Extensions Manager dialog.
    extension.name = UNAME

    # The description= method sets the long description which appears beneath an extension inside the Extensions Manager dialog.
    extension.description = desc + "  Access it via Plugins > Chris Fullmer Tools > "+MENU_NAME

    # The version method sets the version which appears beneath an extension inside the Extensions Manager dialog.
    extension.version = version

    # Create an entry in the Extension list that loads a script called
    # stairTools.rb.
    extension.copyright = copy_year
     
    # The creator= method sets the creator string which appears beneath an extension inside the Extensions Manager dialog.
    extension.creator = author

    # The register_extension method is used to register an extension with SketchUp's extension manager (in SketchUp preferences).
    Sketchup.register_extension( extension, true )
    
  end
end
