local request = require "request"
local tcommon = require "task.taskcommon"


--��������
function request.updatataskinfo(robot, args)
	robot:taskmodule():UpDateTask(args)
end

--������������
function request.sysmaintask(robot, args)
	local taskinfo = robot:taskmodule():GetTaskDataByType(tcommon.type.MAIN_TASK_TYPE)
	assert(taskinfo)
	taskinfo.data.id = args.id
end

--���󽻻�����
function request.sysreqtaskaction(robot, args)
	if args.ret == 2 then 
		robot:gm_commond("/addlevel 1")
	end
end


--�����������
function request.sysmaintaskfinish(robot, args)
    if args.code == 5 then --��ͧϵͳ������,��ʾ��ǰ�ؿ�����,�ɽ�����һ��
	    robot:taskmodule():SetReqTask()
    end
end
