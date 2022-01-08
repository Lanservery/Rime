--[[
time_translator: 将 `time` 翻译为当前时间
--]]

function time_translator(input, seg)
   if (input == "time") then
      local cand = Candidate("time", seg.start, seg._end, os.date("%H:%M"), " ")
      cand.quality = 1
      yield(cand)
   end
end

return time_translator
