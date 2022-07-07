local acceptBtn = self:child("AcceptBtn")

acceptBtn.onMouseClick = function()
  print("Accept quest")
  
  local quest = {
    title = "Kill monster",
    task = {"Kill monster",1},
    reward = 10}
  
  
end