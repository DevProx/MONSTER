--[[ ▄▇▇▇▇▇▇▄▇▇▇▇▇▇▄ 
❉❉❉ ฿ᵧ ➣ @PXPP3 
    ➥ CHANNEL ◐ @INSTAOFFICIAL 
]] 
do 

local function run(msg,matches) 

local reply_id = msg['id'] 
if is_momod(msg) and matches[1]== 'banhelp' then 
  local alnaze = [[    *↝Banhelp↜* 
Banhelp for Group :
✇ban + لحضر العضو : معرف 
✇unban + لالغاء حضر العضو : معرف 
✇kick + لطرد العضو : معرف 
❂banlist : قائمه المحضروين 
Only Sudo :
♺sban + لحضر العضو عام : معرف 
♺unsban  :لالغاء حضر العام 
♺gbanlist : قائمه محضورين عام 
---------------------
Badwords :
✇add + لمنع الكلمه : كلمه 🚫 
✇rm + لالغاء منع كلمه : كلمه✅ 
✇badwords : قائمة ممنوعات 
✇clearbadwords : لحذف الممنوعات 
Silents :
✇silent + لكتم العضو : معرف 
✇silentlist : قائمه مكتومين 
✇clean silentlist : حذف قائمة مكتومين
---------------------]]
reply_msg(reply_id, alnaze, ok_cb, false) 
end 

local reply_id = msg['id'] 
if not is_momod(msg) then 
local alnaz = "للمشرفين فقط 🖕🏿😎" 
reply_msg(reply_id, alnaze, ok_cb, false) 
end 

end 
return { 
patterns ={ 
  "^[!#/](banhelp)$", 
}, 
run = run 
} 
end 
