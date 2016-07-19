do

function run(msg, matches)
       if not is_momod(msg) then
        return "Ù…Ø¬Ø§Ø² Ø¨Ø±Ø§ÛŒ Ù…Ø¯ÛŒØ± Ùˆ Ø§Ø¯Ù…ÛŒÙ† Ù‡Ø§"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "Ø§ÙˆÙ„ Ø¨Ø§ÛŒØ¯ Ù„ÛŒÙ†Ú© Ø¬Ø¯ÛŒØ¯ Ø§ÛŒØ¬Ø§Ø¯ Ú©Ù†ÛŒØ¯"
       end
         local text = "Ù„ÛŒÙ†Ú© Ú¯Ø±ÙˆÙ‡:\n"..group_link
          send_large_msg('user#id'..msg.from.id, text, ok_cb, false)
           return "Ù„ÛŒÙ†Ú© Ø¨Ù‡ pv Ø§Ø±Ø³Ø§Ù„ Ø´Ø¯"
end

return {
  patterns = {
    "^[/#!]([Ll]inkpv)$"
  },
  run = run
}

end
