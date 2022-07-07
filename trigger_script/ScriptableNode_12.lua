--You can use 'params.parameter name' to get the parameters defined in the node. 					
--For example, if a parameter named 'entity' is defined in the node, you can use 'params.entity' to get the value of the parameter.
local player = params.player
local exp = params.exp
local curExp = player:getValue("exp")
local level = player:getValue("level")
local maxXp = level * 100
--local status = UI:openWindow("playerUI")
if curExp + exp >= maxXp then
  player:setValue("level",level+1)
  player:setValue("exp",(curExp + exp) - maxXp)
  player:setValue("point",player:getValue("point") + 4)
else
  player:setValue("exp",curExp + exp)
end
--status:refreshBar()
PackageHandlers.sendClientHandler("refreshBar",{},function(...) end)