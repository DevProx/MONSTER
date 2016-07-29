--[[ ▄▇▇▇▇▇▇▄▇▇▇▇▇▇▄ 

     ❉❉❉ ฿ᵧ ➣ @PXPP3 
   ➥ CHANNEL ◐ @INSTAOFFICIAL 
    ▄▇▇▇▇▇▇▄▇▇▇▇▇▇▄ 
]] 
do 
local function run(msg,matches) 
local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'kiks' then 
  local xviper = [[⇒MOMSTER BOT V 2.0 ♺
         *↝KICKS↝*
--------------------
➥KICKS :
✇kik media : لقفل جميع الميديا بالطرد
✇unkik media : لفتح جميع الميديا بالطرد
✇kik photo : لقفل الصور بالطرد
✇unkik photo : لفتح الصور بالطرد
✇kik video : لقفل الفيديو بالطرد
✇unkik video : لفتح الفيديو بالطرد
✇kickaudio : لقفل الصوتيات بالطرد
✇unkik audio : لفتح صوتيات بالطرد
✇kik fwd : لقفل اعادة توجيه بالطرد
✇unkik fwd : لفتح توجيه بالطرد
✇kik link : لقفل روابط بالطرد
✇unkik link : لفتح الروابط بالطرد
✇kik spamer : لقفل وَطرد تكلم جيوش
✇unkik spamer : لفتح و طرد تكلم جيوش
✇kik zahif : لمنع وطرد زواحف
✇unkik zahif : لسماح بالزواحف
✇kik fosh : لقفل كلمات سيئة بالطرد
✇unkik fosh : لفتح كلمات سيئة بالطرد
-----------------------
Owner Only : 
♺silent : لقفل دردشه مع طرد
♺unsilent : لفتح دردشه مع طرد ]] 
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
  "^[!#/](kiks)$", 
}, 
run = run 
} 
end
