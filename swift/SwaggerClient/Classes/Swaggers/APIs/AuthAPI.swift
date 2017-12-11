//
// AuthAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AuthAPI: APIBase {
    /**
     Create a FoneStorm authentication token.
     
     - parameter username: (form) FracTEL username 
     - parameter password: (form) FracTEL password 
     - parameter expires: (form) FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 86400 seconds (24 hours) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func postAuth(username username: String, password: String, expires: Int32? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        postAuthWithRequestBuilder(username: username, password: password, expires: expires).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a FoneStorm authentication token.
     - POST /auth
     - Returns a token that can be used to make authenticated requests
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter username: (form) FracTEL username 
     - parameter password: (form) FracTEL password 
     - parameter expires: (form) FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 86400 seconds (24 hours) (optional)

     - returns: RequestBuilder<String> 
     */
    public class func postAuthWithRequestBuilder(username username: String, password: String, expires: Int32? = nil) -> RequestBuilder<String> {
        let path = "/auth"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "username": username,
            "password": password,
            "expires": expires?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}
