
soap ui模拟 服务端


	
	高程的callback理解做法：
	DownLoadProfle的callback这样做：
	
	
	收到callback动作后，可以按顺序执行同步动作，如果回复错误，则直接回复错误，无需回复202.
	如果轮流到异步动作，则异步请求执行后，返回202.
	直到所有动作结束后，返回callback的执行结果
	
	
	1 MNO--> SM-DP.DownloadProfile 
	2                       SM-DP-->SM-SR.GetEIS
	3					    SM-SR-->SM-DP.GetEISRes
	3(附加)或者 SM-DP-->MNO.DownloadProfileResErro
	4					    SM-DP-->SM-SR.CreatISDP
	5						SM-SR-->SM-DP.CreatISDPRes202
	6 SM-DP-->MNO.DownloadProfileRes202
	7 SM-SR-->SM-DP.CreatISDPRealRes
	8 SM-DP-->SM-SR.CreatISDPRealResRes202
	8(附加) SM-DP-->MNO.DownloadProfileResErro
	.....
	
	
	个人的callback理解做法：
	个人理解是，在收到callback的动作后，立即回复202 ，
	后续其他动作，如需回复错误，则回复，否则，流程结束回复真正的返回
	
	
	DownLoadProfle的callback这样做：
	
	1 MNO-->SM-DP.DownloadProfile 
	2 SM-DP-->MNO.DownloadProfileRes202
	3                       SM-DP-->SM-SR.GetEIS
	4					    SM-SR-->SM-DP.GetEISRes
	4（附加）或者 SM-DP-->MNO.DownloadProfileResErro
	5					    SM-DP-->SM-SR.CreatISDP
	6						SM-SR-->SM-DP.CreatISDPRes202
	7 SM-SR-->SM-DP.CreatISDPRealRes
	8 SM-DP-->SM-SR.CreatISDPRealResRes202
	8（附加） SM-DP-->MNO.DownloadProfileResErro




https://blog.csdn.net/russ44/article/details/52230355


高程  19:08:13
callback的都没实现。你好好发挥你的才智吧。
老豆的咸可乐  19:08:20
我再 soapUi 看不到第三步的恢复
高程  19:08:50
soapUi可以接请求吗？
老豆的咸可乐  19:08:56
我不知道哈
高程  19:09:03
那你还想收到啊
想想也不知道不可能啊
老豆的咸可乐  19:09:11
那就要单独的再写个模拟了？
高程  19:09:20
嗯
老豆的咸可乐  19:09:25
接受第三步的请求
高程  19:10:30
可以的
https://blog.csdn.net/russ44/article/details/52230355
soapUI果然没那么弱
老豆的咸可乐  19:11:07
好的
