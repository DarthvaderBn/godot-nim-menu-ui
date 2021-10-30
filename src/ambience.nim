# DarthvaderBn, 2021

import godot
import godotapi / [scene_tree, audio_stream_player , canvas_item, slider, range]

gdobj Ambience of AudioStreamPlayer:
    method ready*() =
        self.setProcess(true)
    
    method process*(delta: float64) =
        let ambience = self.getParent().getNode("menu-ui").getNode("settingspanel").getNode("ambience_slider") as Range
        let volume = self.getParent().getNode("menu-ui").getNode("settingspanel").getNode("volume_slider") as Range

        self.volumeDb = -75 + ambience.value + volume.value
