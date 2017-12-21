//
// FoneNumberSmsOptionsReceive.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Delivery service type used as the destination to receive messages. */
public class FoneNumberSmsOptionsReceive: JSONEncodable {
    /** Configured service type. */
    public var type: String?
    /** Email address if configured for email. */
    public var email: String?
    /** FracTEL device if configured for device. */
    public var device: String?
    /** Telephone number if configured for forward. */
    public var forward: String?
    /** HTTP URL if configured for URL. */
    public var url: String?
    /** HTTP URL method if configured for URL. */
    public var urlMethod: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["type"] = self.type
        nillableDictionary["email"] = self.email
        nillableDictionary["device"] = self.device
        nillableDictionary["forward"] = self.forward
        nillableDictionary["url"] = self.url
        nillableDictionary["url_method"] = self.urlMethod
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
