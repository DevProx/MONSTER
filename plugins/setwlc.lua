do 
local function oscar(msg, matches, callback, extra) 
local data = load_data(_config.moderation.data) 
local rules = data[tostring(msg.to.id)]['rules'] 
local about = data[tostring(msg.to.id)]['description'] 
local hash = 'group:'..msg.to.id 
local group_welcome = redis:hget(hash,'welcome') 
if matches[1] == 'delwlc' and not matches[2] and is_owner(msg) then 
   redis:hdel(hash,'welcome') 
return '(✔)تم مسح ترحيب بنجاح ' 
end 
if matches[1] == 'setwlc' and is_owner(msg) then 
redis:hset(hash,'welcome',matches[2]) 
        return 'تم وضع الترحيب بنجاح ; ⭐\n'..matches[2] 
end 

if matches[1] == 'chat_add_user' or 'chat_add_user_link' or 'channel_invite' and msg.service then 
group_welcome = string.gsub(group_welcome, '{gpname}', msg.to.title) 
group_welcome = string.gsub(group_welcome, '{gpid}', ""..(msg.to.id or '').."") 
group_welcome = string.gsub(group_welcome, '{firstname}', ""..(msg.action.user.first_name or '').."") 
group_welcome = string.gsub(group_welcome, '{id}', ""..(msg.action.user.id or '').."") 
 group_welcome = string.gsub(group_welcome, '{lastname}', ""..(msg.action.user.last_name or '').."") 
  group_welcome = string.gsub(group_welcome, '{username}', "@"..(msg.action.user.username or '').."") 
  group_welcome = string.gsub(group_welcome, '{addeduser}', "@"..(msg.from.username or '').."") 
  group_welcome = string.gsub(group_welcome, '{addedfirstname}', ""..(msg.from.first_name or '').."") 
  group_welcome = string.gsub(group_welcome, '{rules}', ""..(rules or '').."") 
  group_welcome = string.gsub(group_welcome, '{about}', ""..(about or '').."") 

 end 
return group_welcome 
end 
return { 
  patterns = { 
  "^[!#/](setwlc) +(.*)$", 
  "^[!#/](delwlc)$", 
  "^!!tgservice (chat_add_user)$", 
  "^!!tgservice (channel_invite)$", 
  "^!!tgservice (chat_add_user_link)$", 
  }, 
  run = oscar 
} 
end 
----oscar team 
