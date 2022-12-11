function addonPrint(text)
  print('[' .. _addon.name .. '] ' .. text)
end

function white(text)
  return '\\cs(255,255,255)'..text
end

function green(text)
  return '\\cs(0,255,0)'..text
end

function yellow(text)
  return '\\cs(255,255,0)'..text
end

function red(text)
  return '\\cs(255,128,128)'..text
end

function ice(text)
  return '\\cs(150,200,255)'..text
end

function round(num, decimalPlaces)
  if decimalPlaces and decimalPlaces > 0 then
    local mult = 10^decimalPlaces
    return math.floor(num * mult + 0.5) / mult
  end

  return math.floor(num + 0.5)
end

function formatTime(timeInSeconds)
  if (timeInSeconds == nil or timeInSeconds == 0) then
    return 'N/A'
  end

  local seconds = timeInSeconds % 60
  local minutes = math.floor(timeInSeconds / 60) % 60
  local hours = math.floor(timeInSeconds / 60 / 60)
  local result = ''

  if hours > 0 then
      result = result .. string.format('%dh', hours)
  end

  if minutes > 0 then
      result = result .. string.format('%dm', minutes)
  end

  if seconds > 0 then
      result = result .. string.format('%ds', seconds)
  end

  return result
end

function commaValue(num)
  local result = num
  local k = 1

  while k ~= 0 do
      result, k = string.gsub(result, "^(-?%d+)(%d%d%d)", '%1,%2')
  end

  return result
end
