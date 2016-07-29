do 

local function oscarteam(msg, matches) 
  if matches[1] == "/kik spamer" then 
     local spamerx = 'spamerx:'..msg.to.id 
     redis:set(spamerx, true) 
     return " تم قفل مضاد الجيوش مع الطرد{✔️}😈 " 
  end 

  if matches[1] == "/unkik spamer" then 
     local spamerx = 'spamerx:'..msg.to.id 
     redis:del(spamerx) 
     return " تم فتح مضاد الجيوش في المجموعة{✔️}😈 " 
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