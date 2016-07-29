-- ØSCAR™TEAM
do

local function run(msg, matches)
if matches[1] == "channel" then
   return "Bot channel : @M0NSTERB0T"
end
end
return {  
  patterns = {
       "^[!/](channel)$",
  },
  run = run,
}

end