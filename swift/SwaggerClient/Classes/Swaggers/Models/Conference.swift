//
// Conference.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Conference: JSONEncodable {
    /** Unique identifier of conference. */
    public var id: String?
    /** End time and date of conference. */
    public var endTime: String?
    /** Label for conference. */
    public var label: String?
    /** Start time and date of conference. */
    public var startTime: String?
    /** Message to play before conference start time. */
    public var beforeMessage: String?
    /** Message to play after conference end time. */
    public var afterMessage: String?
    /** Maximum number of allowed conference attendees. */
    public var maxMembers: Double?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["end_time"] = self.endTime
        nillableDictionary["label"] = self.label
        nillableDictionary["start_time"] = self.startTime
        nillableDictionary["before_message"] = self.beforeMessage
        nillableDictionary["after_message"] = self.afterMessage
        nillableDictionary["max_members"] = self.maxMembers
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
