do 

local function ipex(msg, matches)
if matches[1]== "date" then
return "🗓  "..os.date("!%A, %B %d, %Y\n", timestamp)


end

end

return {
patterns = {
"[!/](date)"
},
run = ipex,
}
end