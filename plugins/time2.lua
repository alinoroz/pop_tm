--[[
#
#    Time And Date
#
#    
#	
#
#
]]

function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = 'ðŸ•’ Ø³Ø§Ø¹Øª '..jdat.FAtime..' \nðŸ“† Ø§Ù…Ø±ÙˆØ² '..jdat.FAdate..' Ù…ÛŒØ¨Ø§Ø´Ø¯.\n    ----\nðŸ•’ '..jdat.ENtime..'\nðŸ“† '..jdat.ENdate.. '\n#Security'
return text
end
return {
  patterns = {"^[/#]([Tt][iI][Mm][Ee])$"}, 
run = run 
}


