gsoapʹ���ܽ� https://blog.csdn.net/byxdaz/article/details/51679117

 gsoap �û��ٷ�ָ��  https://www.genivia.com/doc/guide/html/index.html
 
 [gsoap�ٷ��̳�](https://www.genivia.com/tutorials.html#)
 [gSoap����wsdl2h��soapcpp2ָ�����](https://www.cnblogs.com/hgwang/p/5840265.html)
 
 
 	
	RSPʹ�����
	 wsdl2h -d -c++11 -o M2M.h ES1_SMSR.wsdl ES2_MNO.wsdl ES2_SMDP.wsdl ES3_SMDP.wsdl ES3_SMSR.wsdl ES4_MNO.wsdl ES4_SMSR.wsdl ES7_SMSR_Provider.wsdl ES7_SMSR_Requester.wsdl xsd/euicc.root.xsd
	soapcpp2 -c++11 -2 -a -A -w -x -s -i -d M2M M2M.h
	cd M2M/
	rename 's/^soapES1SmSrServiceBinding/soapServiceBinding/' soapES1SmSrServiceBinding*
	sed -i 's/ES1SmSrServiceBinding/ServiceBinding/g' soapServiceBinding