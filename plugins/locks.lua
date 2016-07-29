--[[ ▄▇▇▇▇▇▇▄▇▇▇▇▇▇▄ 

     ❉❉❉ ฿ᵧ ➣ @PXPP3 
   ➥ CHANNEL ◐ @INSTAOFFICIAL 
    ▄▇▇▇▇▇▇▄▇▇▇▇▇▇▄ 
]] 
do 

local function run(msg,matches) 

local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'locks' then 
  local xviper = [[⇒MOMSTER BOT V 2.0 ♺
         *↝LOCKS↜*
--------------------
➥LOCKS :
✇lock links : لقفل الروابط
✇unlock links :لفتح الروابط
✇lock fwd : لقفل اعادة توجيه
✇unlock fwd : لفتح اعادة توجيه
✇lock spam : لقفل الاسبام
✇unlock spam : لفتح الاسبام
✇lock rtl : لقفل الدخول الجماعي
✇unlock rtl : لفتح الدخول الجماعي
✇lock flood :لقفل التكرار
✇unlock flood : لفتح التكرار
✇lock sticker : لقفل الملصقات
✇unlock sticker : لفتح الملصقات
✇lock file : لقفل الملفات
✇unlock file : لفتح الملفات
✇lock contacts : لقفل جهات لاتصال
✇unlock contacts : لفتح جهات لاتصال
✇lock strict : لقفل الدخول للمجموعة
✇unlock strict : لفتح الدخول للمجموعة
✇lock member : لقفل الاضافة
✇unlock member : لفتح الاضافة
✇lock reply : لقفل كلام بالرد
✇unlock reply : لفتح كلام بالرد
✇lock emoji : لقفل ايموجي
✇unlock emoji : لفتح ايموجي
✇lock fosh : لمنع كلامات سيئة
✇unlock fosh : لفتح كلمات سيئة
✇lock bots : api لمنع دخول بوتات 
✇unlock bots : لسماح دخول بوتات api
✇lock spamer : لمنع تكلم جيوش
✇unlock spamer : لسماح بالتكلم بالجيوش
✇lock zahif : لمنع زحف
✇unlock zahif : لسماح بالزحف
✇lock join : لمنع دخول بالرابط
✇unlock join : لسماح دخول بالرابط
✇lock leave : لمنع مغادرة اعضا۽
✇unlock leave :  لسماح مغادرة اعضاء
✇lock arabic : لمنع عربية
✇unlock arabic : لسماح بالعربية
✇lock english : لمنع انكليزية
✇unlock english : لسماح بالانكليزية
✇lock all : لقفل الكل 
✇unlock all : لفتح الكل
----------------------
◐settings : locks اعدادات قائمة
----------------------
➥MUTES : 
♺mute text : لكتم النص
♺unmute text : لسماح بالنص
♺mute all : لكتم الكل 
♺unmute all : لفتح الكل
❂mute photo : لكتم صور 
❂unmute photo : لسماح بالصور
❂mute audio : لكتم صوتيات
❂unmute audio :  لسماح بالصوتيات
❂mute video : لكتم فيديو
❂unmute video : لسماح بالفيديو
❂mute gifs : لكتم صور متحركه
❂unmute gifs : لسماح بالصور متحركه
❂mute documenst : لمنع نشر ملفات
❂unmute  documents : لسماح بنشر ملفات
----------------------
◑muteslist : اعدادات قائمة MUTES
----------------------
ATTENTION ! : 
❂ and ✇ for ALL ADMINS
♺ FOR OWNER AND SUDO ! ]] 
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
  "^[!#/](locks)$", 
}, 
run = run 
} 
end