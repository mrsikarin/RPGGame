--You can use 'params.parameter name' to get the parameters defined in the node. 					
--For example, if a parameter named 'entity' is defined in the node, you can use 'params.entity' to get the value of the parameter.
local player = params.player
local dmg = params.damage


local SceneUI = Instance.Create("SceneUI")
local window = UI:CreateGUIWindow("damage")
window:setDmg(dmg)
SceneUI.Window = window
SceneUI:setPosition(player:getPosition())

World.Timer(10, function()
  SceneUI:destroy()
end)