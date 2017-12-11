local L = LibStub("AceLocale-3.0"):NewLocale("Chinchilla", "esMX")
if not L then return end

--@non-debug@
-- L["Achievements tracker"] = ""
-- L["Alliance"] = ""
-- L["Allow for a customized look of the minimap"] = ""
-- L["Allow for moving of the minimap and surrounding frames"] = ""
-- L["Allow the coordinate indicator to be moved"] = ""
-- L["Allow the location indicator to be moved"] = ""
-- L["Allow the minimap to be movable so you can drag it where you want"] = ""
-- L["Allow the ping indicator to be moved"] = ""
-- L["Angle"] = ""
-- L["Angle on the minimap"] = ""
-- L["Appearance"] = ""
-- L["Attach to minimap"] = ""
-- L["Automatically zoom out after a specified time."] = ""
-- L["Auto zoom"] = ""
-- L["Available daily quest"] = ""
-- L["Available quest"] = ""
-- L["Background"] = ""
-- L["Battleground"] = ""
-- L["Big Blizzard"] = ""
-- L["Blip size"] = ""
-- L["Blizzard"] = ""
-- L["Border"] = ""
-- L["Border color"] = ""
-- L["Border radius"] = ""
-- L["Border style"] = ""
-- L["Bottom"] = ""
-- L["Bottom-left"] = ""
-- L["Bottom-right"] = ""
-- L["Button border opacity"] = ""
--[==[ L[ [=[Button to use on the minimap to open the preferences window.
Note: you can always open with /chin]=] ] = "" ]==]
-- L["Calendar"] = ""
-- L["Capture bar"] = ""
-- L["Center"] = ""
-- L["Change how the tracking dots look on the minimap."] = ""
-- L["Chinchilla Minimap"] = ""
-- L["Clock"] = ""
-- L["Color"] = ""
-- L["Color of the circle"] = ""
-- L["Color of the indicators"] = ""
-- L["Combat opacity"] = ""
-- L["Compass"] = ""
-- L["Completed daily quest"] = ""
-- L["Completed quest"] = ""
-- L["Coordinates"] = ""
-- L["Corner, bottom-left rounded"] = ""
-- L["Corner, bottom-right rounded"] = ""
-- L["Corner, top-left rounded"] = ""
-- L["Corner, top-right rounded"] = ""
-- L["Dialog"] = ""
-- L["Durability"] = ""
-- L["Enable"] = ""
-- L["Enable this module"] = ""
-- L["Enemy npc"] = ""
-- L["Enemy player"] = ""
-- L["Expander"] = ""
-- L["Fadeout time"] = ""
-- L["Flat"] = ""
-- L["Frame level"] = ""
-- L["Friendly npc"] = ""
-- L["Friendly player"] = ""
-- L["Fullscreen"] = ""
-- L["Fullscreen-dialog"] = ""
-- L["Glass Spheres"] = ""
-- L["High"] = ""
-- L["Horizontal position"] = ""
-- L["Horizontal position of the button on-screen"] = ""
-- L["How long the ping will show on the minimap"] = ""
-- L["How long will it take for the ping to fade"] = ""
-- L["In combat"] = ""
-- L["Keybinding"] = ""
-- L["Left"] = ""
-- L["LFG"] = ""
-- L["Location"] = ""
-- L["Location bar"] = ""
-- L["Location text"] = ""
-- L["Lock"] = ""
-- L["Lock any draggable items regarding the minimap, so they can't be dragged mistakenly."] = ""
-- L["Lock buttons in place so that they won't be mistakenly dragged"] = ""
-- L["Low"] = ""
-- L["Mail"] = ""
-- L["Medium"] = ""
-- L["Middle mouse button"] = ""
-- L["Minimap"] = ""
-- L["Minimap addon of awesomeness. *chewing sound*. It'll nibble your hay pellets."] = ""
-- L["Minimap pinged by %s"] = ""
-- L["Mouse button #4"] = ""
-- L["Mouse button #5"] = ""
-- L["Movable"] = ""
-- L["Move Buttons"] = ""
-- L["Move buttons around the minimap"] = ""
-- L["Neutral npc"] = ""
-- L["Neutral player"] = ""
-- L["New flight path"] = ""
-- L["None"] = ""
-- L["Non-north size"] = ""
-- L["North"] = ""
-- L["Opacity"] = ""
-- L["Open a standlone config window, allowing you to actually configure Chinchilla Minimap."] = ""
-- L["Outline"] = ""
-- L["Out of combat"] = ""
-- L["Party member or pet"] = ""
-- L["Ping"] = ""
-- L["Ping by %s"] = ""
-- L["Ping time"] = ""
-- L["Point"] = ""
-- L["Point of the screen the capture bar is anchored to"] = ""
-- L["Point of the screen the durability man is anchored to"] = ""
-- L["Point of the screen the minimap is anchored to"] = ""
-- L["Point of the screen the quest timer is anchored to"] = ""
-- L["Point of the screen the quest tracker is anchored to"] = ""
-- L["Position"] = ""
-- L["Position of the achievements tracker on the screen"] = ""
-- L["Position of the capture bar on the screen"] = ""
-- L["Position of the metal durability man on the screen"] = ""
-- L["Position of the minimap on the screen"] = ""
-- L["Position of the quest/achievement tracker on the screen"] = ""
-- L["Position of the quest timer on the screen"] = ""
-- L["Position of the quest tracker on the screen"] = ""
-- L["Position of the vehicle seat indicator on the screen"] = ""
-- L["Position of the world state indicator on the screen"] = ""
-- L["Precision"] = ""
-- L["Preferences button"] = ""
-- L["Preview"] = ""
-- L["Quest and achievement tracker"] = ""
-- L["Quest timer"] = ""
-- L["Quest tracker"] = ""
-- L["Radius"] = ""
-- L["Raid member"] = ""
-- L["Range circle"] = ""
-- L["Recording"] = ""
-- L["Right"] = ""
-- L["Right mouse button"] = ""
-- L["Round"] = ""
-- L["See how the tracking dots will look"] = ""
-- L["Set how far away from the center to place buttons on the minimap"] = ""
-- L["Set how large the blips on the minimap are"] = ""
-- L["Set how large the border texture is."] = ""
-- L["Set how large the minimap is"] = ""
-- L["Set how transparent or opaque the minimap button borders are."] = ""
-- L["Set how transparent or opaque the minimap is when in combat"] = ""
-- L["Set how transparent or opaque the minimap is when not in combat"] = ""
-- L["Set the amount of numbers past the decimal place to show."] = ""
-- L["Set the background color"] = ""
-- L["Set the border color"] = ""
-- L["Set the color the minimap border is."] = ""
-- L["Set the position of the battleground indicator"] = ""
-- L["Set the position of the calendar"] = ""
-- L["Set the position of the clock"] = ""
-- L["Set the position of the coordinate indicator"] = ""
-- L["Set the position of the location indicator"] = ""
-- L["Set the position of the looking for group indicator"] = ""
-- L["Set the position of the mail indicator"] = ""
-- L["Set the position of the ping indicator"] = ""
-- L["Set the position of the recording button"] = ""
-- L["Set the position of the tracking indicator"] = ""
-- L["Set the position of the voice chat button"] = ""
-- L["Set the position of the world map button"] = ""
-- L["Set the position of the zoom in button"] = ""
-- L["Set the position of the zoom out button"] = ""
-- L["Set the position on the x-axis for the achievements tracker."] = ""
-- L["Set the position on the x-axis for the capture bar."] = ""
-- L["Set the position on the x-axis for the coordinate indicator relative to the minimap."] = ""
-- L["Set the position on the x-axis for the durability man."] = ""
-- L["Set the position on the x-axis for the location indicator relative to the minimap."] = ""
-- L["Set the position on the x-axis for the minimap."] = ""
-- L["Set the position on the x-axis for the ping indicator relative to the minimap."] = ""
-- L["Set the position on the x-axis for the quest timer."] = ""
-- L["Set the position on the x-axis for the quest tracker."] = ""
-- L["Set the position on the x-axis for the ticket status indicator."] = ""
-- L["Set the position on the x-axis for the vehicle seat indicator."] = ""
-- L["Set the position on the x-axis for the world state indicator."] = ""
-- L["Set the position on the y-axis for the achievements tracker."] = ""
-- L["Set the position on the y-axis for the capture bar."] = ""
-- L["Set the position on the y-axis for the coordinate indicator relative to the minimap."] = ""
-- L["Set the position on the y-axis for the durability man."] = ""
-- L["Set the position on the y-axis for the location indicator relative to the minimap."] = ""
-- L["Set the position on the y-axis for the minimap."] = ""
-- L["Set the position on the y-axis for the ping indicator relative to the minimap."] = ""
-- L["Set the position on the y-axis for the quest timer."] = ""
-- L["Set the position on the y-axis for the quest tracker."] = ""
-- L["Set the position on the y-axis for the ticket status indicator."] = ""
-- L["Set the position on the y-axis for the vehicle seat indicator."] = ""
-- L["Set the position on the y-axis for the world state indicator."] = ""
-- L["Set the shape of the minimap."] = ""
-- L["Set the size of the coordinate display."] = ""
-- L["Set the size of the location display."] = ""
-- L["Set the size of the ping display."] = ""
-- L["Set the style of how the tracking dots should look."] = ""
-- L["Set the text color"] = ""
-- L["Set the time it takes between manually zooming in and automatically zooming out"] = ""
-- L["Set what texture style you want the minimap border to use."] = ""
-- L["Set which frame level the minimap is layered on in relation to others in your interface."] = ""
-- L["Set which layer the minimap is layered on in relation to others in your interface."] = ""
-- L["Shape"] = ""
-- L["Show a circle on the minimap at a prefered range"] = ""
-- L["Show a frame that is movable to show where you want the achievements tracker to be"] = ""
-- L["Show a frame that is movable to show where you want the capture bar to be"] = ""
-- L["Show a frame that is movable to show where you want the durability man to be"] = ""
-- L["Show a frame that is movable to show where you want the quest timer to be"] = ""
-- L["Show a frame that is movable to show where you want the quest tracker to be"] = ""
-- L["Show a frame that is movable to show where you want the ticket status indicator to be"] = ""
-- L["Show a frame that is movable to show where you want the vehicle seat indicator to be"] = ""
-- L["Show a frame that is movable to show where you want the world state indicator to be"] = ""
-- L["Show and hide interface elements of the minimap"] = ""
-- L["Show an expanded minimap on keypress"] = ""
-- L["Show a test ping"] = ""
-- L["Show close button"] = ""
-- L["Show coordinates on or near the minimap"] = ""
-- L["Show direction indicators on the minimap"] = ""
-- L["Show / Hide"] = ""
-- L["Show in chat"] = ""
-- L["Show the battleground indicator"] = ""
-- L["Show the button to hide the minimap"] = ""
-- L["Show the calendar"] = ""
-- L["Show the clock"] = ""
-- L["Show the location bar above the minimap"] = ""
-- L["Show the location text above the minimap"] = ""
-- L["Show the looking for group indicator"] = ""
-- L["Show the mail indicator"] = ""
-- L["Show the north symbol on the minimap"] = ""
-- L["Show the recording button"] = ""
-- L["Show the ticket status indicator"] = ""
-- L["Show the tracking indicator"] = ""
-- L["Show the vehicle seats indicator"] = ""
-- L["Show the voice chat button"] = ""
-- L["Show the world map button"] = ""
-- L["Show the zoom in and out buttons"] = ""
-- L["Show who last pinged the minimap"] = ""
-- L["Show who pinged in chat instead of in a frame on the minimap."] = ""
-- L["Show zone information on or near minimap"] = ""
-- L["Side, bottom rounded"] = ""
-- L["Side, left rounded"] = ""
-- L["Side, right rounded"] = ""
-- L["Side, top rounded"] = ""
-- L["Size"] = ""
-- L["Size of the east, west, and south indicators relative to the north indicator"] = ""
-- L["Size of the indicators"] = ""
-- L["Solid"] = ""
-- L["Solid Spheres"] = ""
-- L["Square"] = ""
-- L["Standalone config"] = ""
-- L["Strata"] = ""
-- L["Style"] = ""
-- L["Test"] = ""
-- L["Text"] = ""
-- L["The distance from the center of the minimap to show the indicators."] = ""
-- L["The key to press to show the expanded minimap"] = ""
-- L["The radius in yards of how large the radius of the circle should be"] = ""
-- L["These settings apply when in combat"] = ""
-- L["These settings apply when out of combat"] = ""
-- L["The size of the expanded minimap"] = ""
-- L["Thin"] = ""
-- L["Ticket status"] = ""
-- L["Time to zoom"] = ""
-- L["Tooltip"] = ""
-- L["Top"] = ""
-- L["Top-left"] = ""
-- L["Top-right"] = ""
-- L["Tracked resource"] = ""
-- L["Tracking"] = ""
-- L["Tracking dots"] = ""
-- L["Tri-corner, bottom-left square"] = ""
-- L["Tri-corner, bottom-right square"] = ""
-- L["Tri-corner, top-left square"] = ""
-- L["Tri-corner, top-right square"] = ""
-- L["Tubular"] = ""
-- L["Use the mouse wheel to zoom in and out on the minimap."] = ""
-- L["Vehicle seats"] = ""
-- L["Version: %s"] = ""
-- L["Vertical position"] = ""
-- L["Vertical position of the button on-screen"] = ""
-- L["Voice chat"] = ""
-- L["What texture style to use for the circle"] = ""
-- L["Wheel zoom"] = ""
--[==[ L[ [=[Whether to stay attached to the minimap or move freely.
Note: If you hold Alt while dragging, it will automatically unattach.]=] ] = "" ]==]
-- L["World map"] = ""
-- L["World state"] = ""
-- L["Zoom"] = ""
-- L["Zoom in"] = ""
-- L["Zoom out"] = ""

--@end-non-debug@
