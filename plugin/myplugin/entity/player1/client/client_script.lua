print('sandbox:hello word....................................................')

PackageHandlers:Receive("ChangeWeapon", function(player,packet)
    if packet.index == 1 then
      UI:openWindow("btn-melee-atk")
      UI:closeWindow("btn-magic-atk")
    elseif packet.index == 2 then
      UI:openWindow("btn-magic-atk")
      UI:closeWindow("btn-melee-atk")
    else
      UI:closeWindow("btn-melee-atk")
      UI:closeWindow("btn-magic-atk")
    end
    print(packet.index)
end)