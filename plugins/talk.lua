do
local function pre_process(msg)
if is_momod(msg) then
return 
else
if msg then
    local hash = 'mustafaip:'..msg.to.id
    if redis:get(hash) then
    delete_msg(msg.id, ok_cb, true)
   
    end
end
end
    return msg
    end


local function run(msg, matches)
    chat_id =  msg.to.id
    if is_admin and matches[1] == 'تفعيل الصامت' then
    local hash = 'mustafaip:'..msg.to.id
    redis:set(hash, true)
    return "القروب الآن في الوضع الصامت 🔕🔇⚠️"
    elseif is_admin(msg) and matches[1] == 'تعطيل الصامت' then
    local hash = 'mustafaip:'..msg.to.id
    redis:del(hash)
return "تم تعطيل وضع الصامت 🔊🔔"
    end
    end


return {
    patterns = {
        '^تفعيل الصامت$',
        '^تعطيل الصامت$'
    },
    run = run,
    pre_process = pre_process
}
end
--by @HakeD_o , @Malvoo
--shared