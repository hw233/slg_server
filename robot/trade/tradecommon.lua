local t = {}


-------��������ö��
t.ret = {
	OK					= 0,				--�ɹ�
	UNKNOWN_ERROR		= 1,				--�Ƿ�����
	NO_MONEY			= 2,				--Ǯ����
	BAG_FULL			= 3,				--��������
	NO_THING			= 4,				--û�������Ʒ
	THING_INSUFFICIENCY = 5,				--��Ʒ����
	THING_IS_BIND		= 6,				--����Ʒ���ܽ���
	PET_IS_WAR			= 7,				--��ս����
	TRADING_TOO_FREQUENTLY  = 8,			--����̫Ƶ����
	MAX_TRADE_GRID			= 9,			--��̯���ӳ���8����
	CONFIG_ERROR			= 10,			--���ô���
	NO_PRICE				= 11,			--���Ǻ���ļ�Ǯ
	HAVE_GEM				= 12,			--�б�ʯ������
	PET_NOT_VALUABLE		= 13,			--����Ʒ���ﲻ����
	NOT_SELF_THING			= 14,			--�����Լ��Ķ���
	NOT_COUNT				= 15,			--��������
	ILLICIT_PRICE			= 16,			--�Ƿ��۸�
	AUDIT_NOT_PASSED		= 17,			--��˲�ͨ��
	HUMAN_AUDIT				= 18,			--�˹����
	BUY_BAG_FULL			= 19,			--�����Ʒ̫���ˣ����ȵ���ȡ�������ȡ
	MULTIPLY_BUY			= 20,			--���˹��򣬵ȴ����
	REPETITION_BUY			= 21,			--���˹����ظ�����
	IS_ITEM					= 22,			--��Ʒ�����¼�
	NOT_DRAW_TIME			= 23,			--û����ȡʱ��
	TRADEING				= 24,			--���ڽ����е���Ʒ�����¼�,���������ϼ�
}


	t.BUY_THING					= 1			--����
	t.SALE_THING 				= 2			--������
	t.QUERY_OTHER_THING			= 3			--�鿴���˵Ķ���
	t.QUERY_SELF_THING			= 4			--�鿴�Լ��Ķ���
	t.UNSALE_THING				= 5			--�¼ܶ���
	t.QUERY_FACTOR				= 6			--�鿴��������
	t.QUERY_BUYTHINT			= 7			--�鿴�Լ��򵽵Ķ���
	t.DRAW_THING				= 8			--��ȡ�Լ���Ķ���
	t.ADD_THING					= 9			--�Ӷ���
	t.QUERRY_LOG				= 10		--����־
	t.ATTENTION					= 11		--��ע��Ʒ
	t.UNATTENTION				= 12		--ȡ����ע
	t.GETATTENTION				= 13		--��ȡ��ע�б�
	
	t.WAIT						= 0xFFFFFFF		--�ȴ�״̬



return  t