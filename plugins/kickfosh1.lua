do 

local function oscarteam(msg, matches) 
  if matches[1] == "/kik fosh" then 
     local kik = 'kik:'..msg.to.id 
     redis:set(kik, true) 
     return " تم تفعيل قفل كلمات السيئه مع الطرد😈✔️ " 
  end 

  if matches[1] == "/unkik fosh" then 
     local kik = 'kik:'..msg.to.id 
     redis:del(kik) 
     return " تم فتح كلمات السيئه في المجموعة😈✔️ " 
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