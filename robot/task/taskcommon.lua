local t = {}


-------��������ö��
t.type = {
	begin						= 0,
	
	TASK_TYPE_UNLAWFUL			= 0,					--�Ƿ�����
	MAIN_TASK_TYPE				= 1,					--��������	
	BANGPAI_TASK_TYPE			= 2,					--��������
	SHIMEN_TASK_TYPE			= 3,					--ʦ������
	WUHUAN_TASK_TYPE			= 4,					--�廷����
	XUNBAO_TASK_TYPE			= 5,					--�ر�ͼ����
	ERBAIHUAN_TASK_TYPE			= 6,					--200������
	COPYMAP_TASK_TYPE			= 7,					--��������
	TASK_TYPE_REI				= 8,					--ת������
	TASK_TYPE_ZHUO_GUI			= 9,					--׽��
	TASK_TYPE_XIANG_YAO			= 10,					--����
	TASK_TYPE_YAO_WANG			= 11,					--��������
    BRANCH_TASK_TYPE            = 12,                   --֧������
	
	ends						= 12,
}

--Ŀ������
t.tagtype = {
	TAGTYPE_SAY_TASK						= 1,		--�Ի�����
	TAGTYPE_SAY_TASK_UI						= 2,		--Ҫ��ui������ǰ���á���
	TAGTYPE_GATHER							= 3,		--�ɼ�����
	TAGTYPE_BATTLE							= 4,		--ս������
	TAGTYPE_BATTLE_UI						= 5,		--���npc��ui�����ڽ���ս��
	TAGTYPE_GATHER_UI						= 6,		--���npc���ɼ����ɼ������ڽ�ս��
	TAGTYPE_HANDED_THING					= 7,		--�Ͻ���Ʒ
	TAGTYPE_HANDED_THING_UI					= 8,		--�ȵ�ui ..�Ͻ���Ʒ
	TAGTYPE_GO_TO_USE_TAGTYPE_GATHER		= 9,		--ʹ��������Ʒ���ڲɼ�,���Ͻ�
	TAGTYPE_GO_TO_PATROL					= 10,		--ȥѲ��,���ص㼴��
	TAGTYPE_GO_TO_PATROL_BATTLE				= 11,		--ȥѲ��,�������ս��
	TAGTYPE_USE_THING						= 12,		--ʹ����Ʒ
	TAGTYPE_GO_TO_USE_THING					= 13,		--ȥѲ��,���ص������Ʒ
	TAGTYPE_CLICK_NPC						= 14,
	TAGTYPE_QUESTION						= 15,		--��������
	TAGTYPE_HANDED_THING_BY_TYPE			= 16,		--�Ͻ�ĳ�����͵���Ʒ
	TAGTYPE_HANDED_THING_BY_ID				= 17,		--�Ͻ��ƶ�id��Ʒ�� ������
	TAGTYPE_COLL_KILL_TASK					= 18,		--ɱ���ٸ��ֵ����� ��Ҫÿ��ģ���Լ�����
	TAGTYPE_AUTO_COMPLETE_TASK				= 19,		-- һ����,�Զ����(��������)
	TAGTYPE_NULL_TASK           			= 20,		--�յ�����,����Χ�������
	TAGTYPE_CLIENT							= 21,		--�ͻ������� ������ֱ�����
}

t.status = {
	TASK_BEGIN						= 1,		--����ʼ
	TASK_DELIVERY					= 2,		--����ɽ���
	TASK_FAILED						= 3,		--����ʧ��
	TASK_FINISH						= 4,		--�������
	


}

t.action = {
	ACTION_REQ_TASK					= 1,	--��������
	ACTION_DO_TAGERT				= 2,	--��Ŀ��
	ACTION_DELIVERY					= 3,	--��������
	ACTION_WAIT						= 0xFFFF,		--�ȴ�״̬

}

return  t