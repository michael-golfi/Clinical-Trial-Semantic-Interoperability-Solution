
/**
 * ExtensionMapper.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:34:40 IST)
 */

        
            package com.mirth.connect.connectors.ws;
        
            /**
            *  ExtensionMapper class
            */
            @SuppressWarnings({"unchecked","unused"})
        
        public  class ExtensionMapper{

          public static java.lang.Object getTypeObject(java.lang.String namespaceURI,
                                                       java.lang.String typeName,
                                                       javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception{

              
                  if (
                  "http://ws.connectors.connect.mirth.com/".equals(namespaceURI) &&
                  "acceptMessageResponse".equals(typeName)){
                   
                            return  com.mirth.connect.connectors.ws.AcceptMessageResponse.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://ws.connectors.connect.mirth.com/".equals(namespaceURI) &&
                  "acceptMessage".equals(typeName)){
                   
                            return  com.mirth.connect.connectors.ws.AcceptMessage.Factory.parse(reader);
                        

                  }

              
             throw new org.apache.axis2.databinding.ADBException("Unsupported type " + namespaceURI + " " + typeName);
          }

        }
    