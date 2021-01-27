# Darthvader Naxxx, 2021

import godot
import godotapi / [scene_tree, label , global_constants , input_event_mouse_button, panel, canvas_item]

gdobj ShowPanel of Label:
    method ready*() =
        self.setProcessInput(true)
    
    method guiInput*(event: InputEvent) =
      if event of InputEventMouseButton:
          let ev = event as InputEventMouseButton
          if ev.buttonIndex == BUTTON_LEFT:
                let showing_panel = self.getParent().getNode("settingspanel") as CanvasItem
                showing_panel.visible = true