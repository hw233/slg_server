local request = require "request"
local tcommon = require "trade.tradecommon"
local Rand = require "random"


local function getid(t)
	if #t < 1 then 
		return 
	end
	local r = Rand.Get(1, #t)
	return t[r]
end


--�鿴�������Ķ����ظ�
function request.synquerethinginfo(robot, args)
	if args.ret == 0 then 
		local allthing = args.result
		if not allthing or table.empty(allthing) then 
			return 
		end
		
		local thing 
		for i= 1, #allthing do 
			local t1 = getid(allthing)
			if not t1 then 
				t = nil
				break
			end
			
			if t1.playerid ~=  robot.rolelogic:get_player_id() then
				break
			end
		end
		
		if not thing then 
			printf "not thing of buy.... "
			robot:trademodule():SetActionQueSelf() --ȥ�鿴�Լ����Ķ��� 
			return 
		end
			
		robot:trademodule():SetActionParam(thing)
		robot:trademodule():SetActionBuy()
		return
	end
	robot:trademodule():SetActionQueryOthe() --����ȥ�鿴���˵Ķ���
end

--�ظ� ����˵Ķ���
function request.sysbuytradething(robot, args)
	if args.ret == tcommon.ret.BAG_FULL then --�����������°�������������
		robot:gm_commond("/clearbag")
		robot:trademodule():SubCursor()
		robot:trademodule():SetActionQueryOthe()
		
	elseif args.ret == tcommon.ret.NO_MONEY then --ûǮ �ˣ� ��Ǯ����������
		robot:gm_commond("/addyinliang 9999999999999999")
		robot:trademodule():SubCursor()
		robot:trademodule():SetActionQueryOthe()
		
	elseif args.ret == tcommon.ret.NOT_COUNT then --�������ԣ�
		printf("your moust buy count or config param cnt")
	elseif args.ret == tcommon.ret.BUY_BAG_FULL then -- �����ϵ̫���ˣ� ȥ��ȡ����
		robot:trademodule():SubCursor()
		robot:trademodule():SetActionQuerySelfBuy() --ȥ�鿴�Լ����Ķ�������ȡ����
	else 
		robot:trademodule():SetActionQueSelf() --ȥ�鿴�Լ����Ķ��� 
	end
end


--�鿴�Լ����Ķ����ظ��б�
function request.sysqueryselfthing(robot, args)
	if args.ret == 0 and args.info then 
		printf(#args.info)
		if #args.info >= 8 then
			local r = Rand.Get(1, #args.info)
			local v = args.info[r]
			robot:trademodule():SetActionParam(v)
			robot:trademodule():SetActionUnSale()
			printf("un sale ")
			return 
		else 
			robot:trademodule():SetActionAddThing()--ȥ�ӵ㶫��
		end
	end
	robot:trademodule():SetActionAddThing() --ȥ�ӵ㶫��
end

--���������
function request.syssalething(robot, args)
	if args.ret ==  tcommon.ret.MAX_TRADE_GRID then --���ĸ��ӳ���
		robot:trademodule():SetActionQueSelf() --ȥ�����Լ����Ķ���
		return
	end
	robot:trademodule():SetActionGetLog() --���涫��ȥ������־
end

--�鿴�������ӽ��
function request.sysgetfactor(robot, args)
	local f = 10000
	if args.factor then 
		f = args.factor 
	end
	local pa = robot:trademodule():GetActionParam()
	pa.factor = f 
	robot:trademodule():SetActionSale()
end

--�ظ��鿴�Լ��򵽵Ķ������
function request.sysgetbuythingslist(robot, args)
	if args.ret == 0 then 
		if args.info and not table.empty(args.info) then 
			local m = #args.info 
			local r = Rand.Get(1, m)
			local t = args.info[r]
			robot:trademodule():SetActionParam(t)
			robot:trademodule():SetActionDraw()
			return
		end
	end
	robot:trademodule():SetActionQueryOthe() --ȥ�鿴���˵Ķ���
end

--�ظ���ȡ�򵽵Ķ������
function request.sysdrawbuything(robot, args)
	if args.ret ~= 0 then 
		printf("draw self thing faild")
	end
	robot:trademodule():SetActionQueSelf() --ȥ�鿴�Լ����Ķ���
end

--�ظ��¼ܽ��
function request.sysunsalething(robot, args)
	if args.ret ~= 0 then 
		printf("not thing at un sale thing.....")
	end
	robot:trademodule():SetActionAddThing() --ȥ�ӵ㶫��
end

--�ظ��鿴��־
function request.sysgettradelog(robot, args)
	robot:trademodule():SetActionQueryOthe() --ȥ�鿴���˵Ķ���
end


--�ظ��鿴��ע���
function request.sysattentions(robot, args)
	if args.ret == 0 then 
		if args.info and not table.empty(args.info) then 
			local m = #args.info
			local r = Rand.Get(1, m)
			local t = args.info[r]
			robot:trademodule():SetActionParam(t)
			robot:trademodule():SetActionUnAttention()
		end
	end
	robot:trademodule():SetActionQueryOthe() --ȥ�鿴���˵Ķ���
end
























