--[[ ▄▇▇▇▇▇▇▄▇▇▇▇▇▇▄ 

     ❉❉❉ ฿ᵧ ➣ @PXPP3 
   ➥ CHANNEL ◐ @INSTAOFFICIAL 
    ▄▇▇▇▇▇▇▄▇▇▇▇▇▇▄ 
]] 
do 
local function run(msg,matches) 
local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'warns' then 
  local xviper = [[⇒MOMSTER BOT V 2.0 ♺
         *↝WARNS↝*
--------------------
➥WARNS :
✇warn media : لقفل جميع الميديا بالتحذير
✇unwarn media : لفتح جميع الميديا بالتحذير
✇warn photo : لقفل الصور بالتحذير
✇unwarn photo : لفتح الصور بالتحذير
✇warm video : لقفل الفيديو بالتحذير
✇unwarn video : لفتح الفيديو بالتحذير
✇warn audio : لقفل الصوتيات بالتحذير
✇unwarn audio : لفتح صوتيات بالتحذير
✇warn fwd : لقفل اعادة توجيه بالتحذير
✇unwarn fwd : لفتح توجيه بالتحذير
✇warn link : لقفل روابط بالتحذير
✇unwarn link : لفتح الروابط بالتحذير ]]
reply_msg(reply_id, xviper, ok_cb, false) 
end 

local reply_id = msg['id'] 
if not is_momod(msg) then 
local xviper = "فَقًطِ لُلُمٌشِرَفَيَنَ ْعزُيَزُيَ" 
reply_msg(reply_id, xviper, ok_cb, false) 
end 

end 
return { 
patterns ={ 
  "^[!#/](warns)$", 
}, 
run = run 
} 
end
-----------------------