//
// FaxesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FaxesAPI: APIBase {
    /**
     Create a new fax under the account.
     
     - parameter fonenumber: (form) FracTEL phone number to use for fax. 
     - parameter to: (form) Phone number to fax. 
     - parameter message: (form) Message to fax. (optional)
     - parameter pdf: (form)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func postFaxes(fonenumber fonenumber: String, to: String, message: String? = nil, pdf: String? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        postFaxesWithRequestBuilder(fonenumber: fonenumber, to: to, message: message, pdf: pdf).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a new fax under the account.
     - POST /faxes
     - Returns a JSON response
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter fonenumber: (form) FracTEL phone number to use for fax. 
     - parameter to: (form) Phone number to fax. 
     - parameter message: (form) Message to fax. (optional)
     - parameter pdf: (form)  (optional)

     - returns: RequestBuilder<String> 
     */
    public class func postFaxesWithRequestBuilder(fonenumber fonenumber: String, to: String, message: String? = nil, pdf: String? = nil) -> RequestBuilder<String> {
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
 
        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_postFaxesReceiveNotify: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Configure the callback URL to notify when a fax is received.
     
     - parameter fonenumber: (form) Your FracTEL phone number. 
     - parameter method: (form) Callback URL method. 
     - parameter url: (form) Callback URL. 
     - parameter urlUsername: (form) Callback URL username. (optional)
     - parameter urlPassword: (form) Callback URL password. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func postFaxesReceiveNotify(fonenumber fonenumber: String, method: Method_postFaxesReceiveNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        postFaxesReceiveNotifyWithRequestBuilder(fonenumber: fonenumber, method: method, url: url, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Configure the callback URL to notify when a fax is received.
     - POST /faxes/receive_notify
     - Returns a JSON response
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter fonenumber: (form) Your FracTEL phone number. 
     - parameter method: (form) Callback URL method. 
     - parameter url: (form) Callback URL. 
     - parameter urlUsername: (form) Callback URL username. (optional)
     - parameter urlPassword: (form) Callback URL password. (optional)

     - returns: RequestBuilder<String> 
     */
    public class func postFaxesReceiveNotifyWithRequestBuilder(fonenumber fonenumber: String, method: Method_postFaxesReceiveNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<String> {
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
 
        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     * enum for parameter method
     */
    public enum Method_postFaxesSendNotify: String { 
        case Get = "GET"
        case Post = "POST"
        case Json = "JSON"
    }

    /**
     Configure the callback URL to notify when a fax is made.
     
     - parameter fonenumber: (form) Your FracTEL phone number 
     - parameter method: (form) Callback URL method. 
     - parameter url: (form) Callback URL. 
     - parameter urlUsername: (form) Callback URL username. (optional)
     - parameter urlPassword: (form) Callback URL password. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func postFaxesSendNotify(fonenumber fonenumber: String, method: Method_postFaxesSendNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        postFaxesSendNotifyWithRequestBuilder(fonenumber: fonenumber, method: method, url: url, urlUsername: urlUsername, urlPassword: urlPassword).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Configure the callback URL to notify when a fax is made.
     - POST /faxes/send_notify
     - Returns a JSON response
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter fonenumber: (form) Your FracTEL phone number 
     - parameter method: (form) Callback URL method. 
     - parameter url: (form) Callback URL. 
     - parameter urlUsername: (form) Callback URL username. (optional)
     - parameter urlPassword: (form) Callback URL password. (optional)

     - returns: RequestBuilder<String> 
     */
    public class func postFaxesSendNotifyWithRequestBuilder(fonenumber fonenumber: String, method: Method_postFaxesSendNotify, url: String, urlUsername: String? = nil, urlPassword: String? = nil) -> RequestBuilder<String> {
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
 
        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
