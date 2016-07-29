-- made by { @MUSTAFADEV } 
 do 

local function mustafadev(msg, matches) 
   if matches[1] == "phone" then 
      return "اهلا عزيزي😽"..msg.from.print_name.."\nرقم البوت هوه👇🏻📱\n"..(msg.to.phone or "لايوجد") 

   end 

end 

return { 
  patterns = { 
       "^[#!/](phone)$", 
  }, 
  run = mustafadev, 
} 

end 
--[[ 

🌐🌐🌐🌐🌐🌐🌐🌐🌐🌐 
🌐🌐🌐🌐🌐🌐🌐🌐🌐🌐 
Team: oscar 
Dev: MUSTAFADEV 

🌐🌐🌐🌐🌐🌐🌐🌐🌐🌐 
🌐🌐🌐🌐🌐🌐🌐🌐🌐🌐 

--]] 
