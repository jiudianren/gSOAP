接下来要做的事情：


#问题清单：
主机ip和host的

请求路径和请求主机的 如何填充的到triggerSMS中

##APDU 格式 如何确定 
 creatispd 这个命令 body 该如何写
 

眼前问题：

# eUicc回复 creat_ispd后，SM_SR的es5 如何回复 createISDPRes给 sm_dp
# SM_SR收到 sm_dp的send_data 消息后，  SM_SR和euicc 之间的链接 问题处理
## sm_sr和 euicc之间的http 保存在哪里？用什么标识。
## 如果sm_sr和eUicc之间的http已经断链，新的短信触发和老的之间区别


后续问题：

# 常驻内存 随消息处理，不断增加(暂时不做)
#RSP TLV 优化
#短信格式 修改成TLV,并确定 短信内容
# ES5接口中 eUICC的https发送的请求内容  
# GetEis返回错误，则直接返回downloadprofileRes
# eUicc 模拟器，可以接受多次短信后，依然能够正常建链
# 回复 downloadprofileRes的时候，如何获取mnoid 





接下来的阶段的任务：

包括：
1.	支持M2M架构中的ES5的双向鉴权流程；
2.	支持M2M架构中的ES5的Download和Installation流程；
3.	支持M2M架构中的ES5的Profile Enabling、Disabling、Deletion、POL Update流程；
4.	支持M2M架构中的ES8接口，ES8为SM-DP与ISD-P之间的隧道，其实际承载为ES3、ES5以及ISD-R与ISD-P的隧道，支持SCP03/SCP03t加密；
5.	与实际M2M设备联调，打通下载Profile、安装Profile、对Profile进行各种管理动作的流程；

