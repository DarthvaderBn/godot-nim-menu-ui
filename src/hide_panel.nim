# DarthvaderBn, 2021

import godot
import godotapi / [scene_tree, base_button, global_constants , input_event_mouse_button, panel, canvas_item]

gdobj HidePanel of BaseButton:
    method ready*() =
        self.setProcessInput(true)
    
    method pressed*() =
        let showing_panel = self.getParent() as CanvasItem
        showing_panel.visible = false
