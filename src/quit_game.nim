# DarthvaderBn, 2021

import godot
import godotapi / [scene_tree, label , global_constants , input_event_mouse_button, canvas_item]

gdobj QuitGame of Label:
    method ready*() =
        self.setProcessInput(true)
    
    ##method input*(event: InputEvent) =
    ##    if event of InputEventMouseButton:
    ##        let ev = event as InputEventMouseButton
    ##        if ev.buttonIndex == BUTTON_LEFT:
    ##            
    ##            self.getTree().quit()
    ## Something like this but much better
    method guiInput*(event: InputEvent) =
      if event of InputEventMouseButton:
          let ev = event as InputEventMouseButton
          if ev.buttonIndex == BUTTON_LEFT:
                print("Exiting")
                self.getTree().quit()
