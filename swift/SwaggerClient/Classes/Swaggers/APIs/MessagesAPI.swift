//
// MessagesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class MessagesAPI: APIBase {
    /**
     * enum for parameter type
     */
    public enum ModelType_configureMessageReceive: String { 
        case None = "None"
        case Device = "Device"
        case Email = "Email"
        case Url = "URL"
        case Forward = "Forward"
    }

    /**
     * enum for parameter urlMethod
     */
    public enum UrlMethod_configureMessageReceive: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Set Delivery Service
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter type: (form) Message routing type 
     - parameter value: (form) Message routing type value 
     - parameter urlMethod: (form) URL method (when &#x60;type&#x60; is URL) 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configureMessageReceive(fonenumber fonenumber: String, type: ModelType_configureMessageReceive, value: String, urlMethod: UrlMethod_configureMessageReceive, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: InlineResponse2013?, error: ErrorType?) -> Void)) {
        configureMessageReceiveWithRequestBuilder(fonenumber: fonenumber, type: type, value: value, urlMethod: urlMethod, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Set Delivery Service
     - POST /messages/receive
     - Configure the delivery service type used as the destination for messages received at a FoneNumber.
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
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter type: (form) Message routing type 
     - parameter value: (form) Message routing type value 
     - parameter urlMethod: (form) URL method (when &#x60;type&#x60; is URL) 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)

     - returns: RequestBuilder<InlineResponse2013> 
     */
    public class func configureMessageReceiveWithRequestBuilder(fonenumber fonenumber: String, type: ModelType_configureMessageReceive, value: String, urlMethod: UrlMethod_configureMessageReceive, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<InlineResponse2013> {
        let path = "/messages/receive"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "fonenumber": fonenumber,
            "type": type.rawValue,
            "value": value,
            "url_method": urlMethod.rawValue,
            "url_username": urlUsername,
            "url_password": urlPassword
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2013>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_configureMessageReceiveNotify: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Set Receive Callback
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter method: (form) Callback URL method 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configureMessageReceiveNotify(fonenumber fonenumber: String, method: Method_configureMessageReceiveNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: InlineResponse2013?, error: ErrorType?) -> Void)) {
        configureMessageReceiveNotifyWithRequestBuilder(fonenumber: fonenumber, method: method, url: url, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Set Receive Callback
     - POST /messages/receive_notify
     - Configure the callback URL to notify when a message is received. Each FoneNumber can be configured to use its own callback URL for handling receive notifications.
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
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter method: (form) Callback URL method 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)

     - returns: RequestBuilder<InlineResponse2013> 
     */
    public class func configureMessageReceiveNotifyWithRequestBuilder(fonenumber fonenumber: String, method: Method_configureMessageReceiveNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<InlineResponse2013> {
        let path = "/messages/receive_notify"
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
 
        let requestBuilder: RequestBuilder<InlineResponse2013>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_configureMessageReceiveNotify_0: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Set Receive Callback
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter method: (form) Callback URL method 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configureMessageReceiveNotify_0(fonenumber fonenumber: String, method: Method_configureMessageReceiveNotify_0, url: String, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: InlineResponse2013?, error: ErrorType?) -> Void)) {
        configureMessageReceiveNotify_0WithRequestBuilder(fonenumber: fonenumber, method: method, url: url, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Set Receive Callback
     - POST /messages/receive_notify
     - Configure the callback URL to notify when a message is received. Each FoneNumber can be configured to use its own callback URL for handling receive notifications.
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
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter method: (form) Callback URL method 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)

     - returns: RequestBuilder<InlineResponse2013> 
     */
    public class func configureMessageReceiveNotify_0WithRequestBuilder(fonenumber fonenumber: String, method: Method_configureMessageReceiveNotify_0, url: String, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<InlineResponse2013> {
        let path = "/messages/receive_notify"
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
 
        let requestBuilder: RequestBuilder<InlineResponse2013>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     * enum for parameter type
     */
    public enum ModelType_configureMessageReceive_0: String { 
        case None = "None"
        case Device = "Device"
        case Email = "Email"
        case Url = "URL"
        case Forward = "Forward"
    }

    /**
     * enum for parameter urlMethod
     */
    public enum UrlMethod_configureMessageReceive_0: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Set Delivery Service
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter type: (form) Message routing type 
     - parameter value: (form) Message routing type value 
     - parameter urlMethod: (form) URL method (when &#x60;type&#x60; is URL) 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configureMessageReceive_0(fonenumber fonenumber: String, type: ModelType_configureMessageReceive_0, value: String, urlMethod: UrlMethod_configureMessageReceive_0, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: InlineResponse2013?, error: ErrorType?) -> Void)) {
        configureMessageReceive_0WithRequestBuilder(fonenumber: fonenumber, type: type, value: value, urlMethod: urlMethod, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Set Delivery Service
     - POST /messages/receive
     - Configure the delivery service type used as the destination for messages received at a FoneNumber.
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
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter type: (form) Message routing type 
     - parameter value: (form) Message routing type value 
     - parameter urlMethod: (form) URL method (when &#x60;type&#x60; is URL) 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)

     - returns: RequestBuilder<InlineResponse2013> 
     */
    public class func configureMessageReceive_0WithRequestBuilder(fonenumber fonenumber: String, type: ModelType_configureMessageReceive_0, value: String, urlMethod: UrlMethod_configureMessageReceive_0, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<InlineResponse2013> {
        let path = "/messages/receive"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "fonenumber": fonenumber,
            "type": type.rawValue,
            "value": value,
            "url_method": urlMethod.rawValue,
            "url_username": urlUsername,
            "url_password": urlPassword
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2013>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_configureMessageSendNotify: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Set Send Callback
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter method: (form) Callback URL method 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configureMessageSendNotify(fonenumber fonenumber: String, method: Method_configureMessageSendNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: InlineResponse2013?, error: ErrorType?) -> Void)) {
        configureMessageSendNotifyWithRequestBuilder(fonenumber: fonenumber, method: method, url: url, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Set Send Callback
     - POST /messages/send_notify
     - Configure the callback URL to notify when a message is sent. Each FoneNumber can be configured to use its own callback URL for handling send notifications.
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
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter method: (form) Callback URL method 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)

     - returns: RequestBuilder<InlineResponse2013> 
     */
    public class func configureMessageSendNotifyWithRequestBuilder(fonenumber fonenumber: String, method: Method_configureMessageSendNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<InlineResponse2013> {
        let path = "/messages/send_notify"
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
 
        let requestBuilder: RequestBuilder<InlineResponse2013>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_configureMessageSendNotify_0: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Set Send Callback
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter method: (form) Callback URL method 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func configureMessageSendNotify_0(fonenumber fonenumber: String, method: Method_configureMessageSendNotify_0, url: String, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: InlineResponse2013?, error: ErrorType?) -> Void)) {
        configureMessageSendNotify_0WithRequestBuilder(fonenumber: fonenumber, method: method, url: url, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Set Send Callback
     - POST /messages/send_notify
     - Configure the callback URL to notify when a message is sent. Each FoneNumber can be configured to use its own callback URL for handling send notifications.
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
     
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter method: (form) Callback URL method 
     - parameter url: (form) Callback URL. See **Notes** for additional information. 
     - parameter urlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter urlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)

     - returns: RequestBuilder<InlineResponse2013> 
     */
    public class func configureMessageSendNotify_0WithRequestBuilder(fonenumber fonenumber: String, method: Method_configureMessageSendNotify_0, url: String, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<InlineResponse2013> {
        let path = "/messages/send_notify"
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
 
        let requestBuilder: RequestBuilder<InlineResponse2013>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Create Message
     
     - parameter to: (form) Receiving 10 digit phone number 
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter message: (form) Message body 
     - parameter mediaUrl: (form) URL for MMS media (up to 10) (optional)
     - parameter confirmationUrl: (form) Callback URL for confirmation (optional)
     - parameter confirmationUrlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter confirmationUrlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter requireConfirmation: (form) Only send this message if confirmation is available (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createMessage(to to: String, fonenumber: String, message: String, mediaUrl: [String]? = nil, confirmationUrl: String? = nil, confirmationUrlUsername: String? = nil, confirmationUrlPassword: String? = nil, requireConfirmation: Bool? = nil, completion: ((data: InlineResponse2014?, error: ErrorType?) -> Void)) {
        createMessageWithRequestBuilder(to: to, fonenumber: fonenumber, message: message, mediaUrl: mediaUrl, confirmationUrl: confirmationUrl, confirmationUrlUsername: confirmationUrlUsername, confirmationUrlPassword: confirmationUrlPassword, requireConfirmation: requireConfirmation).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create Message
     - POST /messages/send
     - Send an SMS or MMS message.
     - API Key:
       - type: apiKey token 
       - name: jwt
     - examples: [{contentType=application/json, example={
  "message" : {
    "id" : "aeiou"
  }
}}]
     
     - parameter to: (form) Receiving 10 digit phone number 
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter message: (form) Message body 
     - parameter mediaUrl: (form) URL for MMS media (up to 10) (optional)
     - parameter confirmationUrl: (form) Callback URL for confirmation (optional)
     - parameter confirmationUrlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter confirmationUrlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter requireConfirmation: (form) Only send this message if confirmation is available (optional)

     - returns: RequestBuilder<InlineResponse2014> 
     */
    public class func createMessageWithRequestBuilder(to to: String, fonenumber: String, message: String, mediaUrl: [String]? = nil, confirmationUrl: String? = nil, confirmationUrlUsername: String? = nil, confirmationUrlPassword: String? = nil, requireConfirmation: Bool? = nil) -> RequestBuilder<InlineResponse2014> {
        let path = "/messages/send"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "to": to,
            "fonenumber": fonenumber,
            "message": message,
            "media_url": mediaUrl,
            "confirmation_url": confirmationUrl,
            "confirmation_url_username": confirmationUrlUsername,
            "confirmation_url_password": confirmationUrlPassword,
            "require_confirmation": requireConfirmation
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2014>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Create Message
     
     - parameter to: (form) Receiving 10 digit phone number 
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter message: (form) Message body 
     - parameter mediaUrl: (form) URL for MMS media (up to 10) (optional)
     - parameter confirmationUrl: (form) Callback URL for confirmation (optional)
     - parameter confirmationUrlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter confirmationUrlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter requireConfirmation: (form) Only send this message if confirmation is available (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createMessage_0(to to: String, fonenumber: String, message: String, mediaUrl: [String]? = nil, confirmationUrl: String? = nil, confirmationUrlUsername: String? = nil, confirmationUrlPassword: String? = nil, requireConfirmation: Bool? = nil, completion: ((data: InlineResponse2014?, error: ErrorType?) -> Void)) {
        createMessage_0WithRequestBuilder(to: to, fonenumber: fonenumber, message: message, mediaUrl: mediaUrl, confirmationUrl: confirmationUrl, confirmationUrlUsername: confirmationUrlUsername, confirmationUrlPassword: confirmationUrlPassword, requireConfirmation: requireConfirmation).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create Message
     - POST /messages/send
     - Send an SMS or MMS message.
     - API Key:
       - type: apiKey token 
       - name: jwt
     - examples: [{contentType=application/json, example={
  "message" : {
    "id" : "aeiou"
  }
}}]
     
     - parameter to: (form) Receiving 10 digit phone number 
     - parameter fonenumber: (form) Your FracTEL FoneNumber 
     - parameter message: (form) Message body 
     - parameter mediaUrl: (form) URL for MMS media (up to 10) (optional)
     - parameter confirmationUrl: (form) Callback URL for confirmation (optional)
     - parameter confirmationUrlUsername: (form) Username for HTTP **Basic** authentication scheme (optional)
     - parameter confirmationUrlPassword: (form) Password for HTTP **Basic** authentication scheme (optional)
     - parameter requireConfirmation: (form) Only send this message if confirmation is available (optional)

     - returns: RequestBuilder<InlineResponse2014> 
     */
    public class func createMessage_0WithRequestBuilder(to to: String, fonenumber: String, message: String, mediaUrl: [String]? = nil, confirmationUrl: String? = nil, confirmationUrlUsername: String? = nil, confirmationUrlPassword: String? = nil, requireConfirmation: Bool? = nil) -> RequestBuilder<InlineResponse2014> {
        let path = "/messages/send"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "to": to,
            "fonenumber": fonenumber,
            "message": message,
            "media_url": mediaUrl,
            "confirmation_url": confirmationUrl,
            "confirmation_url_username": confirmationUrlUsername,
            "confirmation_url_password": confirmationUrlPassword,
            "require_confirmation": requireConfirmation
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InlineResponse2014>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
