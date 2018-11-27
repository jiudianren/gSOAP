 WSDL 教程    Web Services Description Language
 
 
 
 WSDL 端口
<portType> 元素是最重要的 WSDL 元素。

它可描述一个 web service、可被执行的操作，以及相关的消息。

可以把 <portType> 元素比作传统编程语言中的一个函数库（或一个模块、或一个类）。

WSDL 消息
<message> 元素定义一个操作的数据元素。

每个消息均由一个或多个部件组成。可以把这些部件比作传统编程语言中一个函数调用的参数。

WSDL types
<types> 元素定义 web service 使用的数据类型。

为了最大程度的平台中立性，WSDL 使用 XML Schema 语法来定义数据类型。

WSDL Bindings
<binding> 元素为每个端口定义消息格式和协议细节。




操作类型
请求-响应是最普通的操作类型，不过 WSDL 定义了四种类型：

类型	定义
One-way	此操作可接受消息，但不会返回响应。
Request-response	此操作可接受一个请求并会返回一个响应
Solicit-response	此操作可发送一个请求，并会等待一个响应。
Notification	此操作可发送一条消息，但不会等待响应。