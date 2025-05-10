-- plugin/build.lua --

local Job = require('plenary.job')
Job:new({
  args = { 'install', '--user', 'ty' },
  command = 'pip',
  on_exit = function(_, return_val)
    if return_val ~= 0 then
      print("Unable to install Tylsp's python dependencies")
    end
  end,
}):start()
