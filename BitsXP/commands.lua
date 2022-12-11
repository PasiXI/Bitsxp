function setupCommands()
  windower.register_event('addon command', processCommands)
end

function processCommands(...)
  local commands = {...}
  local firstCommand = commands[1]

  if firstCommand == 'reset' then
    handleResetCommand()
  elseif firstCommand == 'reload' then
    handleReloadCommand()
  elseif firstCommand == 'unload' then
    handleUnloadCommand()
  elseif firstCommand == 'toggle' then
    handleToggleCommand()
  else
    handleHelpCommand()
  end
end

function handleResetCommand()
  clearUISession()
end

function handleReloadCommand()
  windower.send_command('lua r '.._addon.name)
end

function handleUnloadCommand()
  windower.send_command('lua u '.._addon.name)
end

function handleToggleCommand()
  toggleUIVisibility()
end

function handleHelpCommand()
  print('----------------------------')
  print('--    Bit\'s XP Monitor   --')
  print('----------------------------')
  print('//bxp reset - resets the current session')
  print('//bxp toggle - toggles the visibility of bxp')
  print('//bxp reload - reloads the entire bxp addon')
  print('//bxp unload - unloads the entire bxp addon')
end
