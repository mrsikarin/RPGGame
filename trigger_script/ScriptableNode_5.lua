--You can use 'params.parameter name' to get the parameters defined in the node. 					
--For example, if a parameter named 'entity' is defined in the node, you can use 'params.entity' to get the value of the parameter.

local player = params.player
print(type(params.point))
--player:setValue("money",params.point)
player:setData('point',params.point)
player:setData('str',params.str)
player:setData('agi',params.agi)
player:setData('int',params.int)
player:setData('vit',params.vit)
player:setData('dex',params.dex)