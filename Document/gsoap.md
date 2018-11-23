gsoap使用总结 https://blog.csdn.net/byxdaz/article/details/51679117

 gsoap 用户官方指南  https://www.genivia.com/doc/guide/html/index.html
 
 [gsoap官方教程](https://www.genivia.com/tutorials.html#)
 [gSoap工具wsdl2h及soapcpp2指令汇总](https://www.cnblogs.com/hgwang/p/5840265.html)
 
 
 	
	RSP使用命令：
	 wsdl2h -d -c++11 -o M2M.h ES1_SMSR.wsdl ES2_MNO.wsdl ES2_SMDP.wsdl ES3_SMDP.wsdl ES3_SMSR.wsdl ES4_MNO.wsdl ES4_SMSR.wsdl ES7_SMSR_Provider.wsdl ES7_SMSR_Requester.wsdl xsd/euicc.root.xsd
	soapcpp2 -c++11 -2 -a -A -w -x -s -i -d M2M M2M.h
	cd M2M/
	rename 's/^soapES1SmSrServiceBinding/soapServiceBinding/' soapES1SmSrServiceBinding*
	sed -i 's/ES1SmSrServiceBinding/ServiceBinding/g' soapServiceBinding