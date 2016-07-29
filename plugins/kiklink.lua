--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
      by member oscar team @XVIPER
    -----OSCAR TEAM 
      please join to Channel Oscar Team @oscarteam 
    Plugin ; lock audio with warn 
    tnx @Dev_2 for help :) 

▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]] 
do 

local function pre_process(msg)
local monster = msg['id']
local hash = 'XVIPER:'..msg.to.id
local user = msg.from.id
local chat = msg.to.id
local link = msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ll][Gg][Rr][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]") or msg.text:match("[Gg][Oo][Oo]%.[Gg][Li]/") or msg.text:match("[Aa][Dd][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Ii][Tt]%.[Ll][Yy]") or msg.text:match("[Cc][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Vv]%.[Vv][Cc]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]")
local bot = msg.text:match("?[Ss][Tt][Aa][Rr][Tt]=") or msg.text:match("?[Ss][Tt][Oo][Pp]=")
            if link and redis:get(hash) and not bot then
            delete_msg(msg.id, ok_cb, true)
            kick_user(user, chat)
            local dea = "عزيزي~{"..msg.from.first_name.."}".."\n".."👿✋ يمنع نشر روابط كان عليك التزام بالقوانين لقد تم طردك".."\n".."⭐username: @"..(msg.from.username or " ") 
reply_msg(monster, dea, ok_cb, true) 
        end 

        return msg 
    end 

local function monster(msg, matches) 
local monster = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'kik' and matches[2] == "link" and is_momod(msg) then 
                    local oscar = 'XVIPER:'..msg.to.id 
                    redis:set(oscar, true) 
                    local dd = 'تم قفل الروابط مع تحذير وطرد {✔}😈' 
reply_msg(monster, dd, ok_cb, true) 
elseif matches[1] == 'kik' and matches[2] == 'link' and not is_momod(msg) then 
local pxpp = 'للمشرفين فقط✋👿' 
reply_msg(monster, pxpp, ok_cb, true) 

    elseif matches[1] == 'unkik' and matches[2] == 'link' and is_momod(msg) then 
      local oscar = 'XVIPER:'..msg.to.id 
      redis:del(oscar) 
    local gg = ' تم الغاء قفل الروابط مع تحذير وطرد {❎}😈' 
reply_msg(monster, gg, ok_cb, true) 
elseif matches[1] == 'unkik' and matches[2] == 'link' and not is_momod(msg) then 
local pxff = 'للمشرفين فقط✋👿' 
reply_msg(monster, pxff, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](kik) (.*)$', 
        '^[!/#](unkik) (.*)$' 
    }, 
    run = monster, 
    pre_process = pre_process 
} 

-- By @XVIPER
--Oscar Team 
end