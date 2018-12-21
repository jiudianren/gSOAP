
2018-Dec-19 10:44:49.096613 [0x00007f01ae7fc700] [trace] [operator()@WsControl.cpp:188] <<<<<<<<<10.45.19.229:10000 <-> 10.45.19.229:59402<<<<<<<<<
POST / HTTP/1.1

Host: smdp.ztesoft.com:10000

User-Agent: gSOAP/2.8

Content-Type: application/soap+xml; charset=utf-8; action="http://gsma.com/ES3/ProfileManagementCallBack/ES3-CreateISDP"

Content-Length: 1902
Connection: keep-alive
SOAPAction: "http://gsma.com/ES3/ProfileManagementCallBack/ES3-CreateISDP"



<?xml version="1.0" encoding="UTF-8"?>
<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://www.w3.org/2003/05/soap-envelope" xmlns:SOAP-ENC="http://www.w3.org/2003/05/soap-encoding" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:c14n="http://www.w3.org/2001/10/xml-exc-c14n#" xmlns:saml1="urn:oasis:names:tc:SAML:1.0:assertion" xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:xenc="http://www.w3.org/2001/04/xmlenc#" xmlns:wsc="http://docs.oasis-open.org/ws-sx/ws-secureconversation/200512" xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" xmlns:chan="http://schemas.microsoft.com/ws/2005/02/duplex" xmlns:wsa5="http://www.w3.org/2005/08/addressing" xmlns:rps="http://namespaces.gsma.org/esim-messaging/3"><SOAP-ENV:Header><wsa5:MessageID>//1.3.6.1.4.1.20/urn:uuid:78c224dc-6d66-4fe4-8791-5c3e6a7dc869?TransactionId=urn:uuid:68eaf45a-6bd7-48ea-bf37-15d40df60552&amp;MessageDate=2018-12-19T02:44:49Z</wsa5:MessageID><wsa5:From><wsa5:Address>http://smdp.ztesoft.com:20000?EntityId=1.3.6.1.4.1.20&amp;EntityName=SM-SR</wsa5:Address></wsa5:From><wsa5:To SOAP-ENV:mustUnderstand="true">http://smdp.ztesoft.com:10000?EntityId=1.3.6.1.4.1.10</wsa5:To><wsa5:Action SOAP-ENV:mustUnderstand="true">http://gsma.com/ES3/ProfileManagementCallBack/ES3-CreateISDP</wsa5:Action></SOAP-ENV:Header><SOAP-ENV:Body><rps:ES3-CreateISDPResponse><rps:ProcessingStart>2018-12-19T02:44:49Z</rps:ProcessingStart><rps:ProcessingEnd>2018-12-19T02:44:49Z</rps:ProcessingEnd><rps:FunctionExecutionStatus><rps:Status>EXECUTED_SUCCESS</rps:Status></rps:FunctionExecutionStatus><rps:Isd-p-aid>61626364656666</rps:Isd-p-aid></rps:ES3-CreateISDPResponse></SOAP-ENV:Body></SOAP-ENV:Envelope>


2018-Dec-19 10:44:49.097664 [0x00007f01ae7fc700] [debug] [ES3_CreateISDPCallback@ES3.cpp:96] start
2018-Dec-19 10:44:49.097902 [0x00007f01ae7fc700] [debug] [ES3_CreateISDPCallback@ES3.cpp:106] soap->omode0
2018-Dec-19 10:44:49.098102 [0x00007f01ae7fc700] [debug] [ES3_CreateISDPCallback@ES3.cpp:117] ret1000
2018-Dec-19 10:44:49.098293 [0x00007f01ae7fc700] [debug] [ES3_CreateISDPCallback@ES3.cpp:118] end not ok
2018-Dec-19 10:44:49.098484 [0x00007f01ae7fc700] [debug] [handle_request@WsControl.cpp:288] body :158
2018-Dec-19 10:44:49.098658 [0x00007f01ae7fc700] [debug] [handle_request@WsControl.cpp:289] smdpWebServices.status: 202
2018-Dec-19 10:44:49.099158 [0x00007f01ae7fc700] [trace] [operator()@WsControl.h:78] >>>>>>>>>10.45.19.229:10000 <-> 10.45.19.229:59402>>>>>>>>>
HTTP/1.1 202 Accepted

Content-Type: application/soap