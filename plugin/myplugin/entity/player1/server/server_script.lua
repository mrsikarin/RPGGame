PackageHandlers:Receive("melee_normal",function(player, packet)
    Skill.Cast("myplugin/".."player_melee_normal",{}, player)
  end)

Trigger.RegisterHandler(this:cfg(), "HAND_ITEM_CHANGED", function(context)
      local entity = context.obj1                                             
      local newItem = context.item
      local oldItem = context.oldItem
      print(newItem:full_name())
      if string.match(newItem:full_name(),"Sword") then
        PackageHandlers.sendServerHandler(entity,"CheckWeapon",{index = 1})
      elseif string.match(newItem:full_name(),"Magic") then
        PackageHandlers.sendServerHandler(entity,"CheckWeapon",{index = 2})
      else
        PackageHandlers.sendServerHandler(entity,"CheckWeapon",{index = 0})
      end
end)