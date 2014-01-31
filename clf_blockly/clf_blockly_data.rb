# See the loader file for license and author info

require 'sketchup.rb'
module CLF_Extensions_NS
	module CLF_Blockly
    class Clf_Blockly_Dlg
      @@base_path = File.dirname(__FILE__)
      def self.make_dlg
        @@blockley_dlg = UI::WebDialog.new("Google Blockly for SketchUp", true, "ShowSketchUpDotCom", 739, 641, 150, 150, true);
        @@blockley_dlg.set_file( File.join(@@base_path,"su_blockly","index.html"))
        #@@blockley_dlg.set_url("https://blockly-demo.appspot.com/static/demos/fixed/index.html")
        

        return @@blockley_dlg
      end
    end

    @@blockley_dlg = nil
     
    def self.initialize_blockly
      if @@blockley_dlg
        return @@blockley_dlg
      else
        @@blockley_dlg = Clf_Blockly_Dlg.make_dlg
        return @@blockley_dlg
      end
    end

  end
end





