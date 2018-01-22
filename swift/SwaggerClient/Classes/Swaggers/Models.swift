// Models.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

protocol JSONEncodable {
    func encodeToJSON() -> AnyObject
}

public enum ErrorResponse : ErrorType {
    case Error(Int, NSData?, ErrorType)
}

public class Response<T> {
    public let statusCode: Int
    public let header: [String: String]
    public let body: T?

    public init(statusCode: Int, header: [String: String], body: T?) {
        self.statusCode = statusCode
        self.header = header
        self.body = body
    }

    public convenience init(response: NSHTTPURLResponse, body: T?) {
        let rawHeader = response.allHeaderFields
        var header = [String:String]()
        for (key, value) in rawHeader {
            header[key as! String] = value as? String
        }
        self.init(statusCode: response.statusCode, header: header, body: body)
    }
}

private var once = dispatch_once_t()
class Decoders {
    static private var decoders = Dictionary<String, ((AnyObject) -> AnyObject)>()

    static func addDecoder<T>(clazz clazz: T.Type, decoder: ((AnyObject) -> T)) {
        let key = "\(T.self)"
        decoders[key] = { decoder($0) as! AnyObject }
    }

    static func decode<T>(clazz clazz: [T].Type, source: AnyObject) -> [T] {
        let array = source as! [AnyObject]
        return array.map { Decoders.decode(clazz: T.self, source: $0) }
    }

    static func decode<T, Key: Hashable>(clazz clazz: [Key:T].Type, source: AnyObject) -> [Key:T] {
        let sourceDictionary = source as! [Key: AnyObject]
        var dictionary = [Key:T]()
        for (key, value) in sourceDictionary {
            dictionary[key] = Decoders.decode(clazz: T.self, source: value)
        }
        return dictionary
    }

    static func decode<T>(clazz clazz: T.Type, source: AnyObject) -> T {
        initialize()
        if T.self is Int32.Type && source is NSNumber {
            return source.intValue as! T;
        }
        if T.self is Int64.Type && source is NSNumber {
            return source.longLongValue as! T;
        }
        if T.self is NSUUID.Type && source is String {
            return NSUUID(UUIDString: source as! String) as! T
        }
        if source is T {
            return source as! T
        }
        if T.self is NSData.Type && source is String {
            return NSData(base64EncodedString: source as! String, options: NSDataBase64DecodingOptions()) as! T
        }

        let key = "\(T.self)"
        if let decoder = decoders[key] {
           return decoder(source) as! T
        } else {
            fatalError("Source \(source) is not convertible to type \(clazz): Maybe swagger file is insufficient")
        }
    }

    static func decodeOptional<T>(clazz clazz: T.Type, source: AnyObject?) -> T? {
        if source is NSNull {
            return nil
        }
        return source.map { (source: AnyObject) -> T in
            Decoders.decode(clazz: clazz, source: source)
        }
    }

    static func decodeOptional<T>(clazz clazz: [T].Type, source: AnyObject?) -> [T]? {
        if source is NSNull {
            return nil
        }
        return source.map { (someSource: AnyObject) -> [T] in
            Decoders.decode(clazz: clazz, source: someSource)
        }
    }

    static func decodeOptional<T, Key: Hashable>(clazz clazz: [Key:T].Type, source: AnyObject?) -> [Key:T]? {
        if source is NSNull {
            return nil
        }
        return source.map { (someSource: AnyObject) -> [Key:T] in
            Decoders.decode(clazz: clazz, source: someSource)
        }
    }

    static private func initialize() {
        dispatch_once(&once) {
            let formatters = [
                "yyyy-MM-dd",
                "yyyy-MM-dd'T'HH:mm:ssZZZZZ",
                "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ",
                "yyyy-MM-dd'T'HH:mm:ss'Z'",
                "yyyy-MM-dd'T'HH:mm:ss.SSS"
            ].map { (format: String) -> NSDateFormatter in
                let formatter = NSDateFormatter()
                formatter.locale = NSLocale(localeIdentifier:"en_US_POSIX")
                formatter.dateFormat = format
                return formatter
            }
            // Decoder for NSDate
            Decoders.addDecoder(clazz: NSDate.self) { (source: AnyObject) -> NSDate in
               if let sourceString = source as? String {
                    for formatter in formatters {
                        if let date = formatter.dateFromString(sourceString) {
                            return date
                        }
                    }

                }
                if let sourceInt = source as? Int {
                    // treat as a java date
                    return NSDate(timeIntervalSince1970: Double(sourceInt / 1000) )
                }
                fatalError("formatter failed to parse \(source)")
            } 

            // Decoder for [Authorization]
            Decoders.addDecoder(clazz: [Authorization].self) { (source: AnyObject) -> [Authorization] in
                return Decoders.decode(clazz: [Authorization].self, source: source)
            }
            // Decoder for Authorization
            Decoders.addDecoder(clazz: Authorization.self) { (source: AnyObject) -> Authorization in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = Authorization()
                instance.token = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["token"])
                return instance
            }


            // Decoder for [Call]
            Decoders.addDecoder(clazz: [Call].self) { (source: AnyObject) -> [Call] in
                return Decoders.decode(clazz: [Call].self, source: source)
            }
            // Decoder for Call
            Decoders.addDecoder(clazz: Call.self) { (source: AnyObject) -> Call in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = Call()
                instance.id = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["id"])
                return instance
            }


            // Decoder for [Conference]
            Decoders.addDecoder(clazz: [Conference].self) { (source: AnyObject) -> [Conference] in
                return Decoders.decode(clazz: [Conference].self, source: source)
            }
            // Decoder for Conference
            Decoders.addDecoder(clazz: Conference.self) { (source: AnyObject) -> Conference in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = Conference()
                instance.id = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["id"])
                instance.endTime = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["end_time"])
                instance.label = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["label"])
                instance.startTime = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["start_time"])
                instance.beforeMessage = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["before_message"])
                instance.afterMessage = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["after_message"])
                instance.maxMembers = Decoders.decodeOptional(clazz: Double.self, source: sourceDictionary["max_members"])
                return instance
            }


            // Decoder for [Error]
            Decoders.addDecoder(clazz: [Error].self) { (source: AnyObject) -> [Error] in
                return Decoders.decode(clazz: [Error].self, source: source)
            }
            // Decoder for Error
            Decoders.addDecoder(clazz: Error.self) { (source: AnyObject) -> Error in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = Error()
                instance.error = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["error"])
                instance.message = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["message"])
                instance.statusCode = Decoders.decodeOptional(clazz: Int32.self, source: sourceDictionary["status_code"])
                return instance
            }


            // Decoder for [Fax]
            Decoders.addDecoder(clazz: [Fax].self) { (source: AnyObject) -> [Fax] in
                return Decoders.decode(clazz: [Fax].self, source: source)
            }
            // Decoder for Fax
            Decoders.addDecoder(clazz: Fax.self) { (source: AnyObject) -> Fax in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = Fax()
                instance.id = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["id"])
                return instance
            }


            // Decoder for [FoneNumber]
            Decoders.addDecoder(clazz: [FoneNumber].self) { (source: AnyObject) -> [FoneNumber] in
                return Decoders.decode(clazz: [FoneNumber].self, source: source)
            }
            // Decoder for FoneNumber
            Decoders.addDecoder(clazz: FoneNumber.self) { (source: AnyObject) -> FoneNumber in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumber()
                instance.fonenumber = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["fonenumber"])
                instance.state = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["state"])
                instance.rateCenter = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["rate_center"])
                instance.isActive = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["is_active"])
                instance.service = Decoders.decodeOptional(clazz: FoneNumberService.self, source: sourceDictionary["service"])
                instance.smsOptions = Decoders.decodeOptional(clazz: FoneNumberSmsOptions.self, source: sourceDictionary["sms_options"])
                instance.voiceOptions = Decoders.decodeOptional(clazz: FoneNumberVoiceOptions.self, source: sourceDictionary["voice_options"])
                instance.faxOptions = Decoders.decodeOptional(clazz: FoneNumberFaxOptions.self, source: sourceDictionary["fax_options"])
                return instance
            }


            // Decoder for [FoneNumberFaxOptions]
            Decoders.addDecoder(clazz: [FoneNumberFaxOptions].self) { (source: AnyObject) -> [FoneNumberFaxOptions] in
                return Decoders.decode(clazz: [FoneNumberFaxOptions].self, source: source)
            }
            // Decoder for FoneNumberFaxOptions
            Decoders.addDecoder(clazz: FoneNumberFaxOptions.self) { (source: AnyObject) -> FoneNumberFaxOptions in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberFaxOptions()
                instance.receiveNotify = Decoders.decodeOptional(clazz: FoneNumberFaxOptionsReceiveNotify.self, source: sourceDictionary["receive_notify"])
                instance.sendNotify = Decoders.decodeOptional(clazz: FoneNumberFaxOptionsSendNotify.self, source: sourceDictionary["send_notify"])
                return instance
            }


            // Decoder for [FoneNumberFaxOptionsReceiveNotify]
            Decoders.addDecoder(clazz: [FoneNumberFaxOptionsReceiveNotify].self) { (source: AnyObject) -> [FoneNumberFaxOptionsReceiveNotify] in
                return Decoders.decode(clazz: [FoneNumberFaxOptionsReceiveNotify].self, source: source)
            }
            // Decoder for FoneNumberFaxOptionsReceiveNotify
            Decoders.addDecoder(clazz: FoneNumberFaxOptionsReceiveNotify.self) { (source: AnyObject) -> FoneNumberFaxOptionsReceiveNotify in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberFaxOptionsReceiveNotify()
                instance.url = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["url"])
                instance.method = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["method"])
                return instance
            }


            // Decoder for [FoneNumberFaxOptionsSendNotify]
            Decoders.addDecoder(clazz: [FoneNumberFaxOptionsSendNotify].self) { (source: AnyObject) -> [FoneNumberFaxOptionsSendNotify] in
                return Decoders.decode(clazz: [FoneNumberFaxOptionsSendNotify].self, source: source)
            }
            // Decoder for FoneNumberFaxOptionsSendNotify
            Decoders.addDecoder(clazz: FoneNumberFaxOptionsSendNotify.self) { (source: AnyObject) -> FoneNumberFaxOptionsSendNotify in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberFaxOptionsSendNotify()
                instance.url = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["url"])
                instance.method = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["method"])
                return instance
            }


            // Decoder for [FoneNumberService]
            Decoders.addDecoder(clazz: [FoneNumberService].self) { (source: AnyObject) -> [FoneNumberService] in
                return Decoders.decode(clazz: [FoneNumberService].self, source: source)
            }
            // Decoder for FoneNumberService
            Decoders.addDecoder(clazz: FoneNumberService.self) { (source: AnyObject) -> FoneNumberService in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberService()
                instance.type = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["type"])
                instance.id = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["id"])
                return instance
            }


            // Decoder for [FoneNumberSmsOptions]
            Decoders.addDecoder(clazz: [FoneNumberSmsOptions].self) { (source: AnyObject) -> [FoneNumberSmsOptions] in
                return Decoders.decode(clazz: [FoneNumberSmsOptions].self, source: source)
            }
            // Decoder for FoneNumberSmsOptions
            Decoders.addDecoder(clazz: FoneNumberSmsOptions.self) { (source: AnyObject) -> FoneNumberSmsOptions in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberSmsOptions()
                instance.receive = Decoders.decodeOptional(clazz: FoneNumberSmsOptionsReceive.self, source: sourceDictionary["receive"])
                instance.receiveNotify = Decoders.decodeOptional(clazz: FoneNumberSmsOptionsReceiveNotify.self, source: sourceDictionary["receive_notify"])
                instance.sendNotify = Decoders.decodeOptional(clazz: FoneNumberSmsOptionsSendNotify.self, source: sourceDictionary["send_notify"])
                instance.smsEnabled = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["sms_enabled"])
                instance.mmsEnabled = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["mms_enabled"])
                return instance
            }


            // Decoder for [FoneNumberSmsOptionsReceive]
            Decoders.addDecoder(clazz: [FoneNumberSmsOptionsReceive].self) { (source: AnyObject) -> [FoneNumberSmsOptionsReceive] in
                return Decoders.decode(clazz: [FoneNumberSmsOptionsReceive].self, source: source)
            }
            // Decoder for FoneNumberSmsOptionsReceive
            Decoders.addDecoder(clazz: FoneNumberSmsOptionsReceive.self) { (source: AnyObject) -> FoneNumberSmsOptionsReceive in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberSmsOptionsReceive()
                instance.type = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["type"])
                instance.email = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["email"])
                instance.device = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["device"])
                instance.forward = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["forward"])
                instance.url = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["url"])
                instance.urlMethod = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["url_method"])
                return instance
            }


            // Decoder for [FoneNumberSmsOptionsReceiveNotify]
            Decoders.addDecoder(clazz: [FoneNumberSmsOptionsReceiveNotify].self) { (source: AnyObject) -> [FoneNumberSmsOptionsReceiveNotify] in
                return Decoders.decode(clazz: [FoneNumberSmsOptionsReceiveNotify].self, source: source)
            }
            // Decoder for FoneNumberSmsOptionsReceiveNotify
            Decoders.addDecoder(clazz: FoneNumberSmsOptionsReceiveNotify.self) { (source: AnyObject) -> FoneNumberSmsOptionsReceiveNotify in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberSmsOptionsReceiveNotify()
                instance.url = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["url"])
                instance.method = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["method"])
                return instance
            }


            // Decoder for [FoneNumberSmsOptionsSendNotify]
            Decoders.addDecoder(clazz: [FoneNumberSmsOptionsSendNotify].self) { (source: AnyObject) -> [FoneNumberSmsOptionsSendNotify] in
                return Decoders.decode(clazz: [FoneNumberSmsOptionsSendNotify].self, source: source)
            }
            // Decoder for FoneNumberSmsOptionsSendNotify
            Decoders.addDecoder(clazz: FoneNumberSmsOptionsSendNotify.self) { (source: AnyObject) -> FoneNumberSmsOptionsSendNotify in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberSmsOptionsSendNotify()
                instance.url = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["url"])
                instance.method = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["method"])
                return instance
            }


            // Decoder for [FoneNumberVoiceOptions]
            Decoders.addDecoder(clazz: [FoneNumberVoiceOptions].self) { (source: AnyObject) -> [FoneNumberVoiceOptions] in
                return Decoders.decode(clazz: [FoneNumberVoiceOptions].self, source: source)
            }
            // Decoder for FoneNumberVoiceOptions
            Decoders.addDecoder(clazz: FoneNumberVoiceOptions.self) { (source: AnyObject) -> FoneNumberVoiceOptions in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberVoiceOptions()
                instance.receiveNotify = Decoders.decodeOptional(clazz: FoneNumberVoiceOptionsReceiveNotify.self, source: sourceDictionary["receive_notify"])
                instance.sendNotify = Decoders.decodeOptional(clazz: FoneNumberVoiceOptionsSendNotify.self, source: sourceDictionary["send_notify"])
                return instance
            }


            // Decoder for [FoneNumberVoiceOptionsReceiveNotify]
            Decoders.addDecoder(clazz: [FoneNumberVoiceOptionsReceiveNotify].self) { (source: AnyObject) -> [FoneNumberVoiceOptionsReceiveNotify] in
                return Decoders.decode(clazz: [FoneNumberVoiceOptionsReceiveNotify].self, source: source)
            }
            // Decoder for FoneNumberVoiceOptionsReceiveNotify
            Decoders.addDecoder(clazz: FoneNumberVoiceOptionsReceiveNotify.self) { (source: AnyObject) -> FoneNumberVoiceOptionsReceiveNotify in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberVoiceOptionsReceiveNotify()
                instance.url = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["url"])
                instance.method = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["method"])
                return instance
            }


            // Decoder for [FoneNumberVoiceOptionsSendNotify]
            Decoders.addDecoder(clazz: [FoneNumberVoiceOptionsSendNotify].self) { (source: AnyObject) -> [FoneNumberVoiceOptionsSendNotify] in
                return Decoders.decode(clazz: [FoneNumberVoiceOptionsSendNotify].self, source: source)
            }
            // Decoder for FoneNumberVoiceOptionsSendNotify
            Decoders.addDecoder(clazz: FoneNumberVoiceOptionsSendNotify.self) { (source: AnyObject) -> FoneNumberVoiceOptionsSendNotify in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = FoneNumberVoiceOptionsSendNotify()
                instance.url = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["url"])
                instance.method = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["method"])
                return instance
            }


            // Decoder for [InlineResponse200]
            Decoders.addDecoder(clazz: [InlineResponse200].self) { (source: AnyObject) -> [InlineResponse200] in
                return Decoders.decode(clazz: [InlineResponse200].self, source: source)
            }
            // Decoder for InlineResponse200
            Decoders.addDecoder(clazz: InlineResponse200.self) { (source: AnyObject) -> InlineResponse200 in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = InlineResponse200()
                instance.conferences = Decoders.decodeOptional(clazz: Array.self, source: sourceDictionary["conferences"])
                return instance
            }


            // Decoder for [InlineResponse2001]
            Decoders.addDecoder(clazz: [InlineResponse2001].self) { (source: AnyObject) -> [InlineResponse2001] in
                return Decoders.decode(clazz: [InlineResponse2001].self, source: source)
            }
            // Decoder for InlineResponse2001
            Decoders.addDecoder(clazz: InlineResponse2001.self) { (source: AnyObject) -> InlineResponse2001 in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = InlineResponse2001()
                instance.fonenumbers = Decoders.decodeOptional(clazz: Array.self, source: sourceDictionary["fonenumbers"])
                return instance
            }


            // Decoder for [InlineResponse2002]
            Decoders.addDecoder(clazz: [InlineResponse2002].self) { (source: AnyObject) -> [InlineResponse2002] in
                return Decoders.decode(clazz: [InlineResponse2002].self, source: source)
            }
            // Decoder for InlineResponse2002
            Decoders.addDecoder(clazz: InlineResponse2002.self) { (source: AnyObject) -> InlineResponse2002 in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = InlineResponse2002()
                instance.fonenumbers = Decoders.decodeOptional(clazz: Array.self, source: sourceDictionary["fonenumbers"])
                return instance
            }


            // Decoder for [InlineResponse201]
            Decoders.addDecoder(clazz: [InlineResponse201].self) { (source: AnyObject) -> [InlineResponse201] in
                return Decoders.decode(clazz: [InlineResponse201].self, source: source)
            }
            // Decoder for InlineResponse201
            Decoders.addDecoder(clazz: InlineResponse201.self) { (source: AnyObject) -> InlineResponse201 in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = InlineResponse201()
                instance.auth = Decoders.decodeOptional(clazz: Authorization.self, source: sourceDictionary["auth"])
                return instance
            }


            // Decoder for [InlineResponse2011]
            Decoders.addDecoder(clazz: [InlineResponse2011].self) { (source: AnyObject) -> [InlineResponse2011] in
                return Decoders.decode(clazz: [InlineResponse2011].self, source: source)
            }
            // Decoder for InlineResponse2011
            Decoders.addDecoder(clazz: InlineResponse2011.self) { (source: AnyObject) -> InlineResponse2011 in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = InlineResponse2011()
                instance.call = Decoders.decodeOptional(clazz: Call.self, source: sourceDictionary["call"])
                return instance
            }


            // Decoder for [InlineResponse2012]
            Decoders.addDecoder(clazz: [InlineResponse2012].self) { (source: AnyObject) -> [InlineResponse2012] in
                return Decoders.decode(clazz: [InlineResponse2012].self, source: source)
            }
            // Decoder for InlineResponse2012
            Decoders.addDecoder(clazz: InlineResponse2012.self) { (source: AnyObject) -> InlineResponse2012 in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = InlineResponse2012()
                instance.fax = Decoders.decodeOptional(clazz: Fax.self, source: sourceDictionary["fax"])
                return instance
            }


            // Decoder for [InlineResponse2013]
            Decoders.addDecoder(clazz: [InlineResponse2013].self) { (source: AnyObject) -> [InlineResponse2013] in
                return Decoders.decode(clazz: [InlineResponse2013].self, source: source)
            }
            // Decoder for InlineResponse2013
            Decoders.addDecoder(clazz: InlineResponse2013.self) { (source: AnyObject) -> InlineResponse2013 in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = InlineResponse2013()
                instance.conference = Decoders.decodeOptional(clazz: Conference.self, source: sourceDictionary["conference"])
                return instance
            }


            // Decoder for [InlineResponse2014]
            Decoders.addDecoder(clazz: [InlineResponse2014].self) { (source: AnyObject) -> [InlineResponse2014] in
                return Decoders.decode(clazz: [InlineResponse2014].self, source: source)
            }
            // Decoder for InlineResponse2014
            Decoders.addDecoder(clazz: InlineResponse2014.self) { (source: AnyObject) -> InlineResponse2014 in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = InlineResponse2014()
                instance.fonenumber = Decoders.decodeOptional(clazz: FoneNumber.self, source: sourceDictionary["fonenumber"])
                return instance
            }


            // Decoder for [InlineResponse2015]
            Decoders.addDecoder(clazz: [InlineResponse2015].self) { (source: AnyObject) -> [InlineResponse2015] in
                return Decoders.decode(clazz: [InlineResponse2015].self, source: source)
            }
            // Decoder for InlineResponse2015
            Decoders.addDecoder(clazz: InlineResponse2015.self) { (source: AnyObject) -> InlineResponse2015 in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = InlineResponse2015()
                instance.message = Decoders.decodeOptional(clazz: Message.self, source: sourceDictionary["message"])
                return instance
            }


            // Decoder for [Message]
            Decoders.addDecoder(clazz: [Message].self) { (source: AnyObject) -> [Message] in
                return Decoders.decode(clazz: [Message].self, source: source)
            }
            // Decoder for Message
            Decoders.addDecoder(clazz: Message.self) { (source: AnyObject) -> Message in
                let sourceDictionary = source as! [NSObject:AnyObject]
                let instance = Message()
                instance.id = Decoders.decodeOptional(clazz: String.self, source: sourceDictionary["id"])
                return instance
            }
        }
    }
}
