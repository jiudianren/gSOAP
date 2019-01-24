# 工具
1 smpp 短信中心模拟软件
2 SoapUI 模拟mno 包括模拟mno作为客户端，和mno作为服务端的webservice功能


#流程

1  ES2:DownloadProfile的callback回复202
2  GetEIS 处理过程  成功/失败
3  createISDP回复202
4 SM-SR到eUicc的http触发短信（scp80加密）
5 eUicc处理失败，回复SM-SR错误
6 eUICC发起SM-SR的https连接
7 SM-DP回复createISPD的处理结果
8 SM-SR回复DownloadProfile的处理结果



