--[[ ▄▇▇▇▇▇▇▄▇▇▇▇▇▇▄ 

     ❉❉❉ ฿ᵧ ➣ @PXPP3 
   ➥ CHANNEL ◐ @M0NSTERB0T
    ▄▇▇▇▇▇▇▄▇▇▇▇▇▇▄ 
]] 
do 

local function xviper(msg,matches) 

local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'help' then 
  local xviper = [[ ⇒ MONSTER BOT V 2.0 ♺
----------------------
جميع اوامر تعمل بالاشِارات < !  او / >
----------------------
✇home : قائمه رئيسية
✇banhelp : اوامر طرد وحضر
✇locks : اوامر حماية
✇Қiks : اوامر حماية بالطرد
✇Warns : اوامر حماية بالتحذير
✇wlchelp : لمعرفه كيفية وضع تحيب
♺sudohelp : اوامر مطور 
----------------------
✇channel : لرؤية قناة البوت
✇support : لكروب توزيع البوت
---------------------- ]] 
reply_msg(reply_id, xviper, ok_cb, false) 
end 

local reply_id = msg['id'] 
if not is_momod(msg) then 
local xviper = "فَقًطِ لُلُمٌشِرَفَيَنَ ْعزُيَزُي!َ" 
reply_msg(reply_id, xviper, ok_cb, false) 
end 

end 
return { 
patterns ={ 
  "^[!#/](help)$", 
}, 
run = xviper 
} 
end