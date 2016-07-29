
--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
      by member oscar team @PXPP3
    -----OSCAR TEAM
      please join to Channel Oscar Team @oscarteam
    Plugin ; lock audio with warn

▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]] 
do 

local function pre_process(msg) 
local monster = msg['id'] 
local user = msg.from.id
local chat = msg.to.id
    local video = 'matep:'..msg.to.id 
    if redis:get(video) and msg.media and msg.media.type== "video" and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
            kick_user(user, chat)
    end 

        return msg 
    end 

local function run(msg, matches) 
local monster = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'kik' and matches[2] == "video" and is_momod(msg) then 
                    local video = 'matep:'..msg.to.id 
                    redis:set(video, true) 
                    local dd = 'تم قفل الفيديو مع طرد{✔}😈' 
reply_msg(monster, dd, ok_cb, true) 
elseif matches[1] == 'kik' and matches[2] == 'video' and not is_momod(msg) then 
local pxpp = 'للمشرفين فقط عزيزي👿' 
reply_msg(monster, pxpp, ok_cb, true) 

    elseif matches[1] == 'unkik' and matches[2] == 'video' and is_momod(msg) then 
      local video = 'matep:'..msg.to.id 
      redis:del(video) 
    local gg =  ' تم الغاء قفل الفيديو مع طرد{❎}😈' 
reply_msg(monster, gg, ok_cb, true) 
elseif matches[1] == 'unkik' and matches[2] == 'photo' and not is_momod(msg) then 
local pxff = 'للمشرفين فقط عزيزي 👿'
reply_msg(monster, pxff, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](kik) (.*)$', 
       '^[!/#](unkik) (.*)$' 
    }, 
    run = run, 
    pre_process = pre_process 
} 

-- By @PXPP3
--Oscar Team
end 
