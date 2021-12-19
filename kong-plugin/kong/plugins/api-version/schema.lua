-- schema.lua
local typedefs = require "kong.db.schema.typedefs"


return {
  name = "my-custom-plugin",
  fields = {
    {
      config = {
        type = "record",
        fields = {
          {
            environment = {
              type = "string",
              required = true,
              one_of = {
                "production",
                "development",
              },
            },
          },
          {
            server = {
              type = "record",
              fields = {
                {
                  host = typedefs.host {
                    default = "localhost",
                  },
                },
                {
                  port = {
                    type = "number",
                    default = 8000,
                    between = {
                      0,
                      65534
                    },
                  },
                },  
              },
            },
          },
        },
      },
    },
  },
}
