
https://blog.csdn.net/lfy9608110935/article/details/8302306


上面的例子包含了一个带有一个 "Trans" 元素的头部，它的值是 234，此元素的 "mustUnderstand" 属性的值是 "1"。

SOAP 在默认的命名空间中 ("http://www.w3.org/2001/12/soap-envelope") 定义了三个属性。这三个属性是：actor、 mustUnderstand 以及 encodingStyle。这些被定义在 SOAP 头部的属性可定义容器如何对 SOAP 消息进行处理。



actor 属性
通过沿着消息路径经过不同的端点，SOAP 消息可从某个发送者传播到某个接收者。并非 SOAP 消息的所有部分均打算传送到 SOAP 消息的最终端点，不过，另一个方面，也许打算传送给消息路径上的一个或多个端点。

SOAP 的 actor 属性可被用于将 Header 元素寻址到一个特定的端点。


mustUnderstand 属性
SOAP 的 mustUnderstand 属性可用于标识标题项对于要对其进行处理的接收者来说是强制的还是可选的。

假如您向 Header 元素的某个子元素添加了 "mustUnderstand="1"，则它可指示处理此头部的接收者必须认可此元素。假如此接收者无法认可此元素，则在处理此头部时必须失效。




SOAP 在默认的命名空间中("http://www.w3.org/2001/12/soap-envelope")定义了 Body 元素内部的一个元素。即 SOAP 的 Fault 元素，用于指示错误消息。



SOAP Fault 元素用于存留 SOAP 消息的错误和状态信息。


SOAP 方法指的是遵守 SOAP 编码规则的 HTTP 请求/响应。