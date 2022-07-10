print('script_client:hello world')
local status
World.Timer(10, function()
    --local guiMgr = GUIManager:Instance()
  status = UI:openWindow("playerUI")
  status:refreshBar()
  status:questUpdate()

end)

PackageHandlers.registerClientHandler("refreshBar",function(context)
    status:refreshBar()
end)

PackageHandlers.registerClientHandler("questUpdate",function(context)
    status:questUpdate()
end)


