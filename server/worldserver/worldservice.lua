local skynet = require "skynet"
local clusterext = require "clusterext"
require "common"
local WorldManager = require "worldmanager"
local WorldTimeMgr = require "worldtimemgr"
local timext = require "timext"
require "skynet.manager"
require "cluster_service"

--时间管理器
local s_timemgr = WorldTimeMgr.new()
local s_worldmgr = WorldManager.new()

local CMD = {}

--gm修改系统时间
CMD.gm_system_time = register_command(s_timemgr, "gm_system_time")
CMD.get_current_time = register_command(s_timemgr, "get_current_time", true)

local closeflag = nil
local function run(frame)
	s_timemgr:run()
	s_worldmgr:run()
    --关闭skynet通知
    if skynet.sign_kill() then
        if closeflag then
			return
		end
		s_timemgr:savedb()
		closeflag = true
		--退出进程
		skynet.abort()
    end
end

skynet.init(function()
	s_worldmgr:init()
	s_timemgr:loaddb()
	s_timemgr:init()
	--s_timemgr:notice_world_time()
	timext.open_clock(run)
end)

skynet.start(function()
    skynet.dispatch("lua", function(session, source, cmd, ...)
		local f = assert(CMD[cmd])
		f(...)
	end)
end)