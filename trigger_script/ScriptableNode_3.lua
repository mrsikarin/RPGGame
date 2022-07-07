--You can use 'params.parameter name' to get the parameters defined in the node. 					
--For example, if a parameter named 'entity' is defined in the node, you can use 'params.entity' to get the value of the parameter.
print(params.player:prop("damage"))
print(params.player:prop("maxVp"))
print("Level",params.player:getValue("level"))
print("exp",params.player:getValue("exp"))
<<<<<<< HEAD
=======

>>>>>>> develop
