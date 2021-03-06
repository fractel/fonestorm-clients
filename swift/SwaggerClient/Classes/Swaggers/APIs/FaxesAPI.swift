//
// FaxesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FaxesAPI: APIBase {
    /**
     * enum for parameter method
     */
    public enum Method_configureFaxReceiveNotify: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Set Receive Callback
     
     - parameter fonenumber: (form) FoneNumber associated with the account 
     - parameter method: (form) Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configureFaxReceiveNotify(fonenumber fonenumber: String, method: Method_configureFaxReceiveNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: InlineResponse2014?, error: ErrorType?) -> Void)) {
        configureFaxReceiveNotifyWithRequestBuilder(fonenumber: fonenumber, method: method, url: url, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Set Receive Callback
     - POST /faxes/receive_notify
     - Configure the callback URL to notify when an inbound fax is received. Each FoneNumber can be configured to use its own callback URL for handling receive notifications.
     - API Key:
       - type: apiKey token 
       - name: jwt
     - examples: [{contentType=application/json, example={
  "fonenumber" : {
    "fax_options" : {
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    },
    "rate_center" : "aeiou",
    "is_active" : "aeiou",
    "voice_options" : {
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    },
    "service" : {
      "id" : "aeiou",
      "type" : "aeiou"
    },
    "fonenumber" : "aeiou",
    "state" : "aeiou",
    "sms_options" : {
      "receive" : {
        "forward" : "aeiou",
        "type" : "aeiou",
        "device" : "aeiou",
        "email" : "aeiou",
        "url" : "aeiou",
        "url_method" : "aeiou"
      },
      "sms_enabled" : "aeiou",
      "mms_enabled" : "aeiou",
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    }
  }
}}]
     
     - parameter fonenumber: (form) FoneNumber associated with the account 
     - parameter method: (form) Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)

     - returns: RequestBuilder<InlineResponse2014> 
     */
    public class func configureFaxReceiveNotifyWithRequestBuilder(fonenumber fonenumber: String, method: Method_configureFaxReceiveNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<InlineResponse2014> {
        let path = "/faxes/receive_notify"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "fonenumber": fonenumber,
            "method": method.rawValue,
            "url": url,
            "url_username": urlUsername,
            "url_password": urlPassword
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2014>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_configureFaxReceiveNotify_0: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Set Receive Callback
     
     - parameter fonenumber: (form) FoneNumber associated with the account 
     - parameter method: (form) Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configureFaxReceiveNotify_0(fonenumber fonenumber: String, method: Method_configureFaxReceiveNotify_0, url: String, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: InlineResponse2014?, error: ErrorType?) -> Void)) {
        configureFaxReceiveNotify_0WithRequestBuilder(fonenumber: fonenumber, method: method, url: url, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Set Receive Callback
     - POST /faxes/receive_notify
     - Configure the callback URL to notify when an inbound fax is received. Each FoneNumber can be configured to use its own callback URL for handling receive notifications.
     - API Key:
       - type: apiKey token 
       - name: jwt
     - examples: [{contentType=application/json, example={
  "fonenumber" : {
    "fax_options" : {
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    },
    "rate_center" : "aeiou",
    "is_active" : "aeiou",
    "voice_options" : {
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    },
    "service" : {
      "id" : "aeiou",
      "type" : "aeiou"
    },
    "fonenumber" : "aeiou",
    "state" : "aeiou",
    "sms_options" : {
      "receive" : {
        "forward" : "aeiou",
        "type" : "aeiou",
        "device" : "aeiou",
        "email" : "aeiou",
        "url" : "aeiou",
        "url_method" : "aeiou"
      },
      "sms_enabled" : "aeiou",
      "mms_enabled" : "aeiou",
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    }
  }
}}]
     
     - parameter fonenumber: (form) FoneNumber associated with the account 
     - parameter method: (form) Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)

     - returns: RequestBuilder<InlineResponse2014> 
     */
    public class func configureFaxReceiveNotify_0WithRequestBuilder(fonenumber fonenumber: String, method: Method_configureFaxReceiveNotify_0, url: String, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<InlineResponse2014> {
        let path = "/faxes/receive_notify"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "fonenumber": fonenumber,
            "method": method.rawValue,
            "url": url,
            "url_username": urlUsername,
            "url_password": urlPassword
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2014>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_configureFaxSendNotify: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Set Send Callback
     
     - parameter fonenumber: (form) FoneNumber associated with the account 
     - parameter method: (form) Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configureFaxSendNotify(fonenumber fonenumber: String, method: Method_configureFaxSendNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: InlineResponse2014?, error: ErrorType?) -> Void)) {
        configureFaxSendNotifyWithRequestBuilder(fonenumber: fonenumber, method: method, url: url, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Set Send Callback
     - POST /faxes/send_notify
     - Configure the callback URL to notify when an outbound fax is made. Each FoneNumber can be configured to use its own callback URL for handling send notifications.
     - API Key:
       - type: apiKey token 
       - name: jwt
     - examples: [{contentType=application/json, example={
  "fonenumber" : {
    "fax_options" : {
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    },
    "rate_center" : "aeiou",
    "is_active" : "aeiou",
    "voice_options" : {
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    },
    "service" : {
      "id" : "aeiou",
      "type" : "aeiou"
    },
    "fonenumber" : "aeiou",
    "state" : "aeiou",
    "sms_options" : {
      "receive" : {
        "forward" : "aeiou",
        "type" : "aeiou",
        "device" : "aeiou",
        "email" : "aeiou",
        "url" : "aeiou",
        "url_method" : "aeiou"
      },
      "sms_enabled" : "aeiou",
      "mms_enabled" : "aeiou",
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    }
  }
}}]
     
     - parameter fonenumber: (form) FoneNumber associated with the account 
     - parameter method: (form) Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)

     - returns: RequestBuilder<InlineResponse2014> 
     */
    public class func configureFaxSendNotifyWithRequestBuilder(fonenumber fonenumber: String, method: Method_configureFaxSendNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<InlineResponse2014> {
        let path = "/faxes/send_notify"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "fonenumber": fonenumber,
            "method": method.rawValue,
            "url": url,
            "url_username": urlUsername,
            "url_password": urlPassword
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2014>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_configureFaxSendNotify_0: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Set Send Callback
     
     - parameter fonenumber: (form) FoneNumber associated with the account 
     - parameter method: (form) Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configureFaxSendNotify_0(fonenumber fonenumber: String, method: Method_configureFaxSendNotify_0, url: String, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: InlineResponse2014?, error: ErrorType?) -> Void)) {
        configureFaxSendNotify_0WithRequestBuilder(fonenumber: fonenumber, method: method, url: url, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Set Send Callback
     - POST /faxes/send_notify
     - Configure the callback URL to notify when an outbound fax is made. Each FoneNumber can be configured to use its own callback URL for handling send notifications.
     - API Key:
       - type: apiKey token 
       - name: jwt
     - examples: [{contentType=application/json, example={
  "fonenumber" : {
    "fax_options" : {
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    },
    "rate_center" : "aeiou",
    "is_active" : "aeiou",
    "voice_options" : {
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    },
    "service" : {
      "id" : "aeiou",
      "type" : "aeiou"
    },
    "fonenumber" : "aeiou",
    "state" : "aeiou",
    "sms_options" : {
      "receive" : {
        "forward" : "aeiou",
        "type" : "aeiou",
        "device" : "aeiou",
        "email" : "aeiou",
        "url" : "aeiou",
        "url_method" : "aeiou"
      },
      "sms_enabled" : "aeiou",
      "mms_enabled" : "aeiou",
      "send_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      },
      "receive_notify" : {
        "method" : "aeiou",
        "url" : "aeiou"
      }
    }
  }
}}]
     
     - parameter fonenumber: (form) FoneNumber associated with the account 
     - parameter method: (form) Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)

     - returns: RequestBuilder<InlineResponse2014> 
     */
    public class func configureFaxSendNotify_0WithRequestBuilder(fonenumber fonenumber: String, method: Method_configureFaxSendNotify_0, url: String, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<InlineResponse2014> {
        let path = "/faxes/send_notify"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "fonenumber": fonenumber,
            "method": method.rawValue,
            "url": url,
            "url_username": urlUsername,
            "url_password": urlPassword
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2014>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Create Fax
     
     - parameter fonenumber: (form) FoneNumber to use for fax 
     - parameter to: (form) Receiving 10 digit phone number 
     - parameter message: (form) Message to fax (optional)
     - parameter pdf: (form) URL of a PDF file to send with fax (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createFax(fonenumber fonenumber: String, to: String, message: String? = nil, pdf: String? = nil, completion: ((data: InlineResponse2012?, error: ErrorType?) -> Void)) {
        createFaxWithRequestBuilder(fonenumber: fonenumber, to: to, message: message, pdf: pdf).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create Fax
     - POST /faxes
     - Send a fax to a recipient phone number.
     - API Key:
       - type: apiKey token 
       - name: jwt
     - examples: [{contentType=application/json, example={
  "fax" : {
    "id" : "aeiou"
  }
}}]
     
     - parameter fonenumber: (form) FoneNumber to use for fax 
     - parameter to: (form) Receiving 10 digit phone number 
     - parameter message: (form) Message to fax (optional)
     - parameter pdf: (form) URL of a PDF file to send with fax (optional)

     - returns: RequestBuilder<InlineResponse2012> 
     */
    public class func createFaxWithRequestBuilder(fonenumber fonenumber: String, to: String, message: String? = nil, pdf: String? = nil) -> RequestBuilder<InlineResponse2012> {
        let path = "/faxes"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "fonenumber": fonenumber,
            "to": to,
            "message": message,
            "pdf": pdf
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2012>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Create Fax
     
     - parameter fonenumber: (form) FoneNumber to use for fax 
     - parameter to: (form) Receiving 10 digit phone number 
     - parameter message: (form) Message to fax (optional)
     - parameter pdf: (form) URL of a PDF file to send with fax (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createFax_0(fonenumber fonenumber: String, to: String, message: String? = nil, pdf: String? = nil, completion: ((data: InlineResponse2012?, error: ErrorType?) -> Void)) {
        createFax_0WithRequestBuilder(fonenumber: fonenumber, to: to, message: message, pdf: pdf).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create Fax
     - POST /faxes
     - Send a fax to a recipient phone number.
     - API Key:
       - type: apiKey token 
       - name: jwt
     - examples: [{contentType=application/json, example={
  "fax" : {
    "id" : "aeiou"
  }
}}]
     
     - parameter fonenumber: (form) FoneNumber to use for fax 
     - parameter to: (form) Receiving 10 digit phone number 
     - parameter message: (form) Message to fax (optional)
     - parameter pdf: (form) URL of a PDF file to send with fax (optional)

     - returns: RequestBuilder<InlineResponse2012> 
     */
    public class func createFax_0WithRequestBuilder(fonenumber fonenumber: String, to: String, message: String? = nil, pdf: String? = nil) -> RequestBuilder<InlineResponse2012> {
        let path = "/faxes"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "fonenumber": fonenumber,
            "to": to,
            "message": message,
            "pdf": pdf
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2012>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
