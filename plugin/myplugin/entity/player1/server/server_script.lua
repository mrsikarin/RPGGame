PackageHandlers:Receive("meleeAttack",function(player, packet)
    Skill.Cast("myplugin/".."player-melee-normal",{}, player)
end)

PackageHandlers:Receive("magicAttack",function(player, packet)
    Skill.Cast("myplugin/".."c-player-magic-normal",{}, player)
end)

PackageHandlers:Receive("GetReward", function(player,packet)
    --local quest = player:getValue("quest")
    player:addItem("myplugin/".."08c9386d-6545-4454-b269-97a8b11cd166",10,nil,"reward")
    player:addVp(10 * 30)
  end)

Trigger.RegisterHandler(this:cfg(), "HAND_ITEM_CHANGED", function(context)
      local entity = context.obj1                                             
      local newItem = context.item
      local oldItem = context.oldItem
      local  index = 0
      if newItem ~= nil then
        if string.match(newItem:full_name(),"Sword")  then
          index = 1
        elseif string.match(newItem:full_name(),"Magic")  then
          index = 2
        end
      end
      PackageHandlers:SendToClient(this, "ChangeWeapon", {index = index})
      print("Change")
end)