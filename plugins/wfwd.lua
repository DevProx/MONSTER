
--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ لتحذف حقوق بذمتك🚶🏻 
      #CODS CREATED By ~ @JALAL_ALDON 
      please join to Channel Oscar Team @OSCARBOTv2 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]] 
do 

local function pre_process(msg) 
local jalal = msg['id'] 
    local oscar = 'mate:'..msg.to.id 
    if redis:get(oscar) and msg.fwd_from and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
            local don = "😎عزيزي~["..msg.from.first_name.."]".."\n".."يمنع اعادة التوجيه من القنوات التزم بالقوانين لكي لاتطرد".."\n".."⭐username: @"..(msg.from.username or " ") 
reply_msg(jalal, don, ok_cb, true) 
        end 

        return msg 
    end 

local function run(msg, matches) 
local jalal = msg['id'] 
    chat_id =  msg.to.id 
--by @JALAL_ALDON 
    if matches[1] == 'warn' and matches[2] == "fwd" and is_momod(msg) then 
                    local oscar = 'mate:'..msg.to.id 
                    redis:set(oscar, true) 
                    local jd = 'تم قفل اعاده توجيه مع تحذير {✔}😈' -- By @JALAL_ALDON 
reply_msg(jalal, jd, ok_cb, true) 
elseif matches[1] == 'warn' and matches[2] == 'fwd' and not is_momod(msg) then 
local asdy = 'للمشرفين فقط عزيزي👿' 
reply_msg(jalal, asdy, ok_cb, true) 

    elseif matches[1] == 'unwarn' and matches[2] == 'fwd' and is_momod(msg) then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
    local don = ' تم الغاء قفل اعادة توجيه مع تحذير {❎}😈' --by @JALAL_ALDON 
reply_msg(jalal, don, ok_cb, true) 
elseif matches[1] == 'unwarn' and matches[2] == 'fwd' and not is_momod(msg) then 
local jalal_aldon = 'للمشرفين فقط عزيزي 👿'
reply_msg(jalal, jalal_aldon, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](warn) (.*)$', 
       '^[!/#](unwarn) (.*)$' 
    }, 
    run = run, 
    pre_process = pre_process 
} 

-- By @JALAL_ALDON 
end 
