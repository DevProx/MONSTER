--[[ 
# OSCAR TEAM 
# @U_M_U 
# @mustafadev 
# BY : mustafadev 
## 
]] 
do 

local function oscar(msg ,matches) 
        if is_sudo(msg) then 
local url = "http://a.top4top.net/p_19608ao0.png" 
local mustafadev = download_to_file(url,'DeaD.jpg') 
  send_photo(get_receiver(msg),mustafadev,ok_cb,false)
        end 
end 

return { 
    patterns = { 
        "^(devhelp)$" 
    }, 
    run = oscar, 
} 
--by @mustafadev 
end 
