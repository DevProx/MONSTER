-- ØSCAR™TEAM
do

local function run(msg, matches)
if matches[1] == "support" then
   return "Group link https://telegram.me/joinchat/DAmB9z6nh3cRfhvYftqhiw"
end
end
return {  
  patterns = {
       "^[!/](support)$",
  },
  run = run,
}

end