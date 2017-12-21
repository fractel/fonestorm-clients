<?php
/**
 * Conference
 *
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swaagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * FoneStorm API 2.2.0 (Breeze)
 *
 * FracTEL's Middleware API
 *
 * OpenAPI spec version: 2.2.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 *
 */

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Client\Model;

use \ArrayAccess;

/**
 * Conference Class Doc Comment
 *
 * @category    Class
 * @package     Swagger\Client
 * @author      Swagger Codegen team
 * @link        https://github.com/swagger-api/swagger-codegen
 */
class Conference implements ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      * @var string
      */
    protected static $swaggerModelName = 'Conference';

    /**
      * Array of property to type mappings. Used for (de)serialization
      * @var string[]
      */
    protected static $swaggerTypes = [
        'attendees' => 'null[]',
        'attendees_status' => 'int',
        'caller_id' => 'string',
        'conference_pin' => 'string',
        'conference_url' => 'string',
        'conference_status' => 'string',
        'id' => 'string',
        'end_time' => 'string',
        'label' => 'string',
        'organizer' => 'string',
        'organizer_status' => 'bool',
        'start_time' => 'string'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      * @var string[]
      */
    protected static $swaggerFormats = [
        'attendees' => null,
        'attendees_status' => null,
        'caller_id' => null,
        'conference_pin' => null,
        'conference_url' => null,
        'conference_status' => null,
        'id' => null,
        'end_time' => null,
        'label' => null,
        'organizer' => null,
        'organizer_status' => null,
        'start_time' => null
    ];

    public static function swaggerTypes()
    {
        return self::$swaggerTypes;
    }

    public static function swaggerFormats()
    {
        return self::$swaggerFormats;
    }

    /**
     * Array of attributes where the key is the local name, and the value is the original name
     * @var string[]
     */
    protected static $attributeMap = [
        'attendees' => 'attendees',
        'attendees_status' => 'attendees_status',
        'caller_id' => 'caller_id',
        'conference_pin' => 'conference_pin',
        'conference_url' => 'conference_url',
        'conference_status' => 'conference_status',
        'id' => 'id',
        'end_time' => 'end_time',
        'label' => 'label',
        'organizer' => 'organizer',
        'organizer_status' => 'organizer_status',
        'start_time' => 'start_time'
    ];


    /**
     * Array of attributes to setter functions (for deserialization of responses)
     * @var string[]
     */
    protected static $setters = [
        'attendees' => 'setAttendees',
        'attendees_status' => 'setAttendeesStatus',
        'caller_id' => 'setCallerId',
        'conference_pin' => 'setConferencePin',
        'conference_url' => 'setConferenceUrl',
        'conference_status' => 'setConferenceStatus',
        'id' => 'setId',
        'end_time' => 'setEndTime',
        'label' => 'setLabel',
        'organizer' => 'setOrganizer',
        'organizer_status' => 'setOrganizerStatus',
        'start_time' => 'setStartTime'
    ];


    /**
     * Array of attributes to getter functions (for serialization of requests)
     * @var string[]
     */
    protected static $getters = [
        'attendees' => 'getAttendees',
        'attendees_status' => 'getAttendeesStatus',
        'caller_id' => 'getCallerId',
        'conference_pin' => 'getConferencePin',
        'conference_url' => 'getConferenceUrl',
        'conference_status' => 'getConferenceStatus',
        'id' => 'getId',
        'end_time' => 'getEndTime',
        'label' => 'getLabel',
        'organizer' => 'getOrganizer',
        'organizer_status' => 'getOrganizerStatus',
        'start_time' => 'getStartTime'
    ];

    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    public static function setters()
    {
        return self::$setters;
    }

    public static function getters()
    {
        return self::$getters;
    }

    

    

    /**
     * Associative array for storing property values
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['attendees'] = isset($data['attendees']) ? $data['attendees'] : null;
        $this->container['attendees_status'] = isset($data['attendees_status']) ? $data['attendees_status'] : null;
        $this->container['caller_id'] = isset($data['caller_id']) ? $data['caller_id'] : null;
        $this->container['conference_pin'] = isset($data['conference_pin']) ? $data['conference_pin'] : null;
        $this->container['conference_url'] = isset($data['conference_url']) ? $data['conference_url'] : null;
        $this->container['conference_status'] = isset($data['conference_status']) ? $data['conference_status'] : null;
        $this->container['id'] = isset($data['id']) ? $data['id'] : null;
        $this->container['end_time'] = isset($data['end_time']) ? $data['end_time'] : null;
        $this->container['label'] = isset($data['label']) ? $data['label'] : null;
        $this->container['organizer'] = isset($data['organizer']) ? $data['organizer'] : null;
        $this->container['organizer_status'] = isset($data['organizer_status']) ? $data['organizer_status'] : null;
        $this->container['start_time'] = isset($data['start_time']) ? $data['start_time'] : null;
    }

    /**
     * show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalid_properties = [];

        if ($this->container['id'] === null) {
            $invalid_properties[] = "'id' can't be null";
        }
        return $invalid_properties;
    }

    /**
     * validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {

        if ($this->container['id'] === null) {
            return false;
        }
        return true;
    }


    /**
     * Gets attendees
     * @return null[]
     */
    public function getAttendees()
    {
        return $this->container['attendees'];
    }

    /**
     * Sets attendees
     * @param null[] $attendees Array of attendee contact ids.
     * @return $this
     */
    public function setAttendees($attendees)
    {
        $this->container['attendees'] = $attendees;

        return $this;
    }

    /**
     * Gets attendees_status
     * @return int
     */
    public function getAttendeesStatus()
    {
        return $this->container['attendees_status'];
    }

    /**
     * Sets attendees_status
     * @param int $attendees_status Status of conference attendees.
     * @return $this
     */
    public function setAttendeesStatus($attendees_status)
    {
        $this->container['attendees_status'] = $attendees_status;

        return $this;
    }

    /**
     * Gets caller_id
     * @return string
     */
    public function getCallerId()
    {
        return $this->container['caller_id'];
    }

    /**
     * Sets caller_id
     * @param string $caller_id Caller id used for conference call.
     * @return $this
     */
    public function setCallerId($caller_id)
    {
        $this->container['caller_id'] = $caller_id;

        return $this;
    }

    /**
     * Gets conference_pin
     * @return string
     */
    public function getConferencePin()
    {
        return $this->container['conference_pin'];
    }

    /**
     * Sets conference_pin
     * @param string $conference_pin Pin number used for dialiing into conference.
     * @return $this
     */
    public function setConferencePin($conference_pin)
    {
        $this->container['conference_pin'] = $conference_pin;

        return $this;
    }

    /**
     * Gets conference_url
     * @return string
     */
    public function getConferenceUrl()
    {
        return $this->container['conference_url'];
    }

    /**
     * Sets conference_url
     * @param string $conference_url Callback URL for conference.
     * @return $this
     */
    public function setConferenceUrl($conference_url)
    {
        $this->container['conference_url'] = $conference_url;

        return $this;
    }

    /**
     * Gets conference_status
     * @return string
     */
    public function getConferenceStatus()
    {
        return $this->container['conference_status'];
    }

    /**
     * Sets conference_status
     * @param string $conference_status Status of the conference.
     * @return $this
     */
    public function setConferenceStatus($conference_status)
    {
        $this->container['conference_status'] = $conference_status;

        return $this;
    }

    /**
     * Gets id
     * @return string
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     * @param string $id Unique identifier of conference.
     * @return $this
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets end_time
     * @return string
     */
    public function getEndTime()
    {
        return $this->container['end_time'];
    }

    /**
     * Sets end_time
     * @param string $end_time End time and date of conference.
     * @return $this
     */
    public function setEndTime($end_time)
    {
        $this->container['end_time'] = $end_time;

        return $this;
    }

    /**
     * Gets label
     * @return string
     */
    public function getLabel()
    {
        return $this->container['label'];
    }

    /**
     * Sets label
     * @param string $label Label for conference.
     * @return $this
     */
    public function setLabel($label)
    {
        $this->container['label'] = $label;

        return $this;
    }

    /**
     * Gets organizer
     * @return string
     */
    public function getOrganizer()
    {
        return $this->container['organizer'];
    }

    /**
     * Sets organizer
     * @param string $organizer Contact id of conference organizer.
     * @return $this
     */
    public function setOrganizer($organizer)
    {
        $this->container['organizer'] = $organizer;

        return $this;
    }

    /**
     * Gets organizer_status
     * @return bool
     */
    public function getOrganizerStatus()
    {
        return $this->container['organizer_status'];
    }

    /**
     * Sets organizer_status
     * @param bool $organizer_status Status of conference organizer.
     * @return $this
     */
    public function setOrganizerStatus($organizer_status)
    {
        $this->container['organizer_status'] = $organizer_status;

        return $this;
    }

    /**
     * Gets start_time
     * @return string
     */
    public function getStartTime()
    {
        return $this->container['start_time'];
    }

    /**
     * Sets start_time
     * @param string $start_time Start time and date of conference.
     * @return $this
     */
    public function setStartTime($start_time)
    {
        $this->container['start_time'] = $start_time;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     * @param  integer $offset Offset
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     * @param  integer $offset Offset
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     * @param  integer $offset Offset
     * @param  mixed   $value  Value to be set
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     * @param  integer $offset Offset
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     * @return string
     */
    public function __toString()
    {
        if (defined('JSON_PRETTY_PRINT')) { // use JSON pretty print
            return json_encode(\Swagger\Client\ObjectSerializer::sanitizeForSerialization($this), JSON_PRETTY_PRINT);
        }

        return json_encode(\Swagger\Client\ObjectSerializer::sanitizeForSerialization($this));
    }
}


