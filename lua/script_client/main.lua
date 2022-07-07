print('script_client:hello world')
<<<<<<< HEAD

World.Timer(10, function()
    --local guiMgr = GUIManager:Instance()
  local status = UI:openWindow("playerUI")
=======
local status
World.Timer(10, function()
    --local guiMgr = GUIManager:Instance()
  status = UI:openWindow("playerUI")
>>>>>>> develop
  status:refreshBar()
  --local SceneUI = Instance.Create("SceneUI")
 -- local window = UI:CreateGUIWindow("test")
  --SceneUI.Window = window
  --print(SceneUI.Layout
end)

PackageHandlers.registerClientHandler("refreshBar",function(context)
<<<<<<< HEAD
    --status:refreshBar()
=======
    status:refreshBar()
>>>>>>> develop
end)



