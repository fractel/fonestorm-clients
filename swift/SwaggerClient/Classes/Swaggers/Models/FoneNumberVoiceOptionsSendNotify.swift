//
// FoneNumberVoiceOptionsSendNotify.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Callback URL to notify when a call is made. */
public class FoneNumberVoiceOptionsSendNotify: JSONEncodable {
    /** HTTP URL. */
    public var url: String?
    /** HTTP URL method. */
    public var method: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["url"] = self.url
        nillableDictionary["method"] = self.method
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
