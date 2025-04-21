local utils = {}

function utils.require(module)
local ok, err = pcall(require, module)
if not ok then
print('Could not load configuration files...')
print(string.format('\t[ERROR]: %s %s', err, debug.traceback()))
return
end
end

return utils
