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



