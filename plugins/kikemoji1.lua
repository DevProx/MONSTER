do 

local function oscarteam(msg, matches) 
  if matches[1] == "/kik emoji" then 
     local emojx = 'emojx:'..msg.to.id 
     redis:set(emojx, true) 
     return " تم قفل الايموجي مع الطرد{✔️}😈 " 
  end 

  if matches[1] == "/unkik emoji" then 
     local emojx = 'emojx:'..msg.to.id 
     redis:del(emojx) 
     return " تم فتح الايموجي دز براحتك{✔️}😹 " 
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