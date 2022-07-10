PackageHandlers:Receive("NormalAttack",function(player, packet)
    Skill.Cast("myplugin/".."c4028628-c045-46ff-bd93-6310bbc4ebb9",{}, player)
  end)

PackageHandlers:Receive("GetReward", function(player,packet)
    --local quest = player:getValue("quest")
    player:addItem("myplugin/".."08c9386d-6545-4454-b269-97a8b11cd166",10,nil,"reward")
    player:addVp(10 * 30)
  end)