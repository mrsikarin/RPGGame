local btn = self:child("Button")

btn.onMouseClick = function()
  PackageHandlers:SendToServer("melee_normal", {})
end