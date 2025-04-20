-- NVIM Configuration

local ok, err = pcall(require, 'config')
if not ok then
  print('Could not load configuration files...')
  print(string.format('\t[ERROR]: %s %s', err, debug.traceback()))
  return
end
