do 

local function oscarteam(msg, matches) 
  if matches[1] == "/lock emoji" then 
     local emojx = 'emojx:'..msg.to.id 
     redis:set(emojx, true) 
     return " تم تفعيل قفل الايموجي داخل المجموعة😜🤘🏿 " 
  end 

  if matches[1] == "/unlock emoji" then 
     local emojx = 'emojx:'..msg.to.id 
     redis:del(emojx) 
     return " تم الغاء قفل الايموجي داخل المجموعة😜🤘🏿 " 
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