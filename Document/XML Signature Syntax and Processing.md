数字签名说明 
在金融渠道工作时候有的银行使用的W3C的xml signature。使用中有一些难度，比正常使用RSA加签验签，w3c xml signature有现成的开源代码，但是不推荐使用jdk自带的，不通jdk版本兼容不行。 
签名规范遵循XML-Signature Syntax and Processing, W3C Recommendation规范（http://www.w3.org/TR/xmldsig-core/）。 
Finance协议使用分离签名（Detached signature），即元素与被签名的元素（如：CSReq/CSRes等）各自独立存在。被签名的元素和元素包含在同一文档中。签名元素通过当地引用（如’# CSReq1234’）被引用。被签名的元素内容包括从CSReq/CSRes等开始标签的开始括号开始到CSReq/CSRes等结束标签的结束括号为止的内容。




        <xs:element name="EumSignature" type="ds:SignatureType">
              <xs:annotation>
                  <xs:documentation>Signature value of the EUM. 
                  See Annex 8 9 to have details of the data included in the computation of the signature.</xs:documentation>
              </xs:annotation>
       </xs:element>