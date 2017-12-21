//
// FoneNumberVoiceOptions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Voice related properties. */
public class FoneNumberVoiceOptions: JSONEncodable {
    public var receiveNotify: FoneNumberVoiceOptionsReceiveNotify?
    public var sendNotify: FoneNumberVoiceOptionsSendNotify?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["receive_notify"] = self.receiveNotify?.encodeToJSON()
        nillableDictionary["send_notify"] = self.sendNotify?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
