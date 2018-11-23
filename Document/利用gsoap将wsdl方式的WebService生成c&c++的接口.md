https://blog.csdn.net/rznice/article/details/54971860


gSoap使用入门(1)----由wsdl文件生成头文件
https://blog.csdn.net/zhuzhihai1988/article/details/8131370


	calc.nsmap 为命名空间定义文件；
	soapClient.cpp 客户端文件
	soapServer.cpp 服务端文件
	soapcalcProxy.h 代理用到
	soapStub.h 此文件中为程序中要用到的接口的声明（将cal.h中的接口经过处理后，在程序中供调用的接口）
	xml文件 为接口的xml格式，可以据此帮助调试等。。。
	
	soapStub.h：从输入 Header 文件生成的经过修改且带标注的 Header 文件
	soapH.h：主 Header 文件，所有客户机和服务源代码都要将其包括在内
	soapC.c：指定数据结构的序列化器和反序列化器
	soapClient.c：远程操作的客户机存根例程
	stdsoap2.h：stdsoap2.cpp 运行时库的 Header 文件
	stdsoap2.cpp：运行时 C++ 库，带 XML 解析器和运行时支持例程
	
	soapClient.c[ pp]客户端存根函数
soapServer.c[ pp]服务器端调度功能
soapC.c[ pp]用于所有XML SOAP API函数参数的XML序列化程序
soapH.h XML序列化程序和服务API函数
soapStub.h 清理了file.h声明的副本，此文件包含在内 soapH.h
prefix.nsmap XML命名空间绑定表到您的代码中的#include

