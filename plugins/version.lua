do 

local function oscar(msg, matches) 
  return [[ 
source created by @XVIPER 👾 
TEAM channel 💡 @oscarteam 💡 
Source channel 💠 @M0NSTERB0T 💠

〰〰〰〰〰〰〰〰〰〰〰〰 
  .            💠 SUPER MONSTER v2.0 💠 

Created by team ;
@XVIPER
@ll9Oll
@u_B_u
Dev
]] 

end 

return { 
  patterns = { 
       "^[!/#](version)$", 
  }, 
  run = oscar, 
} 

end 
