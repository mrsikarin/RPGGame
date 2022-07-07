print("startup ui")

local expbar = self:child("expbar")
local level = self:child("level")
local maxValue,curValue
function self:refreshBar()
  maxValue = Me:getValue("level") * 100
  curValue = Me:getValue("exp")
  level:setText(string.format("Lv.%s",Me:getValue("level")))
  expbar:setMaxValue(maxValue)
  expbar:setCurrentValue(curValue)

end


