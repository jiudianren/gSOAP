
soap uiģ�� �����


	
	�̵߳�callback���������
	DownLoadProfle��callback��������
	
	
	�յ�callback�����󣬿��԰�˳��ִ��ͬ������������ظ�������ֱ�ӻظ���������ظ�202.
	����������첽���������첽����ִ�к󣬷���202.
	ֱ�����ж��������󣬷���callback��ִ�н��
	
	
	1 MNO--> SM-DP.DownloadProfile 
	2                       SM-DP-->SM-SR.GetEIS
	3					    SM-SR-->SM-DP.GetEISRes
	3(����)���� SM-DP-->MNO.DownloadProfileResErro
	4					    SM-DP-->SM-SR.CreatISDP
	5						SM-SR-->SM-DP.CreatISDPRes202
	6 SM-DP-->MNO.DownloadProfileRes202
	7 SM-SR-->SM-DP.CreatISDPRealRes
	8 SM-DP-->SM-SR.CreatISDPRealResRes202
	8(����) SM-DP-->MNO.DownloadProfileResErro
	.....
	
	
	���˵�callback���������
	��������ǣ����յ�callback�Ķ����������ظ�202 ��
	������������������ظ�������ظ����������̽����ظ������ķ���
	
	
	DownLoadProfle��callback��������
	
	1 MNO-->SM-DP.DownloadProfile 
	2 SM-DP-->MNO.DownloadProfileRes202
	3                       SM-DP-->SM-SR.GetEIS
	4					    SM-SR-->SM-DP.GetEISRes
	4�����ӣ����� SM-DP-->MNO.DownloadProfileResErro
	5					    SM-DP-->SM-SR.CreatISDP
	6						SM-SR-->SM-DP.CreatISDPRes202
	7 SM-SR-->SM-DP.CreatISDPRealRes
	8 SM-DP-->SM-SR.CreatISDPRealResRes202
	8�����ӣ� SM-DP-->MNO.DownloadProfileResErro




https://blog.csdn.net/russ44/article/details/52230355


�߳�  19:08:13
callback�Ķ�ûʵ�֡���ú÷�����Ĳ��ǰɡ�
�϶����̿���  19:08:20
���� soapUi �������������Ļָ�
�߳�  19:08:50
soapUi���Խ�������
�϶����̿���  19:08:56
�Ҳ�֪����
�߳�  19:09:03
���㻹���յ���
����Ҳ��֪�������ܰ�
�϶����̿���  19:09:11
�Ǿ�Ҫ��������д��ģ���ˣ�
�߳�  19:09:20
��
�϶����̿���  19:09:25
���ܵ�����������
�߳�  19:10:30
���Ե�
https://blog.csdn.net/russ44/article/details/52230355
soapUI��Ȼû��ô��
�϶����̿���  19:11:07
�õ�
