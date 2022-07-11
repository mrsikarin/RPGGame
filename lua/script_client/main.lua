print('script_client:hello world')
local status

World.Timer(10, function()
    --local guiMgr = GUIManager:Instance()
  status = UI:openWindow("playerUI")
  status:refreshBar()
  

end)

PackageHandlers.registerClientHandler("refreshBar",function(context)
    status:refreshBar()
end)


PackageHandlers.registerClientHandler("CheckWeapon",function(player, packet)
   
    if packet.index == 1 then
      UI:openWindow("btnMeleeAtk")
      UI:closeWindow("btnMagicAtk")
    elseif packet.index == 2 then
      UI:openWindow("btnMagicAtk")
      UI:closeWindow("btnMeleeAtk")
    else
      UI:closeWindow("btnMeleeAtk")
      UI:closeWindow("btnMagicAtk")
    end
end)


