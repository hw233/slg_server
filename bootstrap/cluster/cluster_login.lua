local skynet = require "skynet"
local snax = require "snax"
require "debugcmd"
local clusterext = require "clusterext"
local serverconfig = require "serverconfig"
local dbconfig = require "dbconfig"

skynet.start(function()
    local conf = serverconfig.login
    clusterext.open(conf.cluster)

    local log = clusterservice("logservice")
	skynet.call(log, "lua", "start")

    if not skynet.getenv "daemon" then
        skynet.newservice("console")
    end
    local console = skynet.newservice("debug_console",conf.debug_port)
    init_debug_cmd(console)
    
    local loginserver = skynet.newservice("logind")
    clusterext.register("logind", loginserver)

    snax.uniqueservice("databasemanager", dbconfig.global)
    
    local server = skynet.newservice("accountservice")
    clusterext.register("accountd", server)

    skynet.exit()
end)

