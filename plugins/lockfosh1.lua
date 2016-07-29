do 

local function oscarteam(msg, matches) 
  if matches[1] == "/lock fosh" then 
     local on = 'on:'..msg.to.id
     redis:set(on, true)
     return "تم تفعيل منع كلمات سيئة 🤐😈"
  end
  

  if matches[1] == "/unlock fosh" then
     local on = 'on:'..msg.to.id
     redis:del(on)
     return "تم ايقاف منع كلمات سيئة 😄👍"
  end


  if matches[1] == "صنع" then
     --return " cods simsim by @iq_plus and @dev_2 "

  end
end 

return { 
  patterns = { 
     "(.*)"
  }, 
  run = oscarteam, 
} 

end 
-- @dev_2