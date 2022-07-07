--You can use 'params.parameter name' to get the parameters defined in the node. 					
--For example, if a parameter named 'entity' is defined in the node, you can use 'params.entity' to get the value of the parameter.
local player = params.player_1
local point = player:data('point')
player:setData('point',point+1)
print(point)