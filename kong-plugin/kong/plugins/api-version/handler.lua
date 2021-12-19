-- handler.lua
local BasePlugin = require "kong.plugins.base_plugin"


local kong = kong


local CustomHandler = BasePlugin:extend()


CustomHandler.VERSION  = "1.0.0"
CustomHandler.PRIORITY = 10


function CustomHandler:new()
  CustomHandler.super.new(self, "my-custom-plugin")
end

function CustomHandler:access(config)
  CustomHandler.super.access(self)
  kong.response.set_header(plugin_conf.response_header,"this is on a request")
  kong.log.inspect(config.environment) 
  kong.log.inspect(config.server.host) 
  kong.log.inspect(config.server.port) 
  kong.response.exit(200,"Hello World!")
                                                          
end


return CustomHandler
