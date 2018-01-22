//
// FoneNumberService.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Service type related properties. */
public class FoneNumberService: JSONEncodable {
    /** Delivery service type used for fonenumber. */
    public var type: String?
    /** Delivery service id used for fonenumber. */
    public var id: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["type"] = self.type
        nillableDictionary["id"] = self.id
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
