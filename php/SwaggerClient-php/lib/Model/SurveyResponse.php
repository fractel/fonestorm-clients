<?php
/**
 * SurveyResponse
 *
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swaagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * FoneStorm API 2.4.0 (Thunder)
 *
 * FracTEL's Middleware API
 *
 * OpenAPI spec version: 2.4.0
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
 * SurveyResponse Class Doc Comment
 *
 * @category    Class
 * @package     Swagger\Client
 * @author      Swagger Codegen team
 * @link        https://github.com/swagger-api/swagger-codegen
 */
class SurveyResponse implements ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      * @var string
      */
    protected static $swaggerModelName = 'SurveyResponse';

    /**
      * Array of property to type mappings. Used for (de)serialization
      * @var string[]
      */
    protected static $swaggerTypes = [
        'answer' => 'string',
        'choice_id' => 'string',
        'contact' => 'object',
        'contact_id' => 'string',
        'created_at' => 'string',
        'id' => 'string',
        'question_id' => 'string',
        'survey_id' => 'string',
        'updated_at' => 'string'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      * @var string[]
      */
    protected static $swaggerFormats = [
        'answer' => null,
        'choice_id' => null,
        'contact' => null,
        'contact_id' => null,
        'created_at' => null,
        'id' => null,
        'question_id' => null,
        'survey_id' => null,
        'updated_at' => null
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
        'answer' => 'answer',
        'choice_id' => 'choice_id',
        'contact' => 'contact',
        'contact_id' => 'contact_id',
        'created_at' => 'created_at',
        'id' => 'id',
        'question_id' => 'question_id',
        'survey_id' => 'survey_id',
        'updated_at' => 'updated_at'
    ];


    /**
     * Array of attributes to setter functions (for deserialization of responses)
     * @var string[]
     */
    protected static $setters = [
        'answer' => 'setAnswer',
        'choice_id' => 'setChoiceId',
        'contact' => 'setContact',
        'contact_id' => 'setContactId',
        'created_at' => 'setCreatedAt',
        'id' => 'setId',
        'question_id' => 'setQuestionId',
        'survey_id' => 'setSurveyId',
        'updated_at' => 'setUpdatedAt'
    ];


    /**
     * Array of attributes to getter functions (for serialization of requests)
     * @var string[]
     */
    protected static $getters = [
        'answer' => 'getAnswer',
        'choice_id' => 'getChoiceId',
        'contact' => 'getContact',
        'contact_id' => 'getContactId',
        'created_at' => 'getCreatedAt',
        'id' => 'getId',
        'question_id' => 'getQuestionId',
        'survey_id' => 'getSurveyId',
        'updated_at' => 'getUpdatedAt'
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
        $this->container['answer'] = isset($data['answer']) ? $data['answer'] : null;
        $this->container['choice_id'] = isset($data['choice_id']) ? $data['choice_id'] : null;
        $this->container['contact'] = isset($data['contact']) ? $data['contact'] : null;
        $this->container['contact_id'] = isset($data['contact_id']) ? $data['contact_id'] : null;
        $this->container['created_at'] = isset($data['created_at']) ? $data['created_at'] : null;
        $this->container['id'] = isset($data['id']) ? $data['id'] : null;
        $this->container['question_id'] = isset($data['question_id']) ? $data['question_id'] : null;
        $this->container['survey_id'] = isset($data['survey_id']) ? $data['survey_id'] : null;
        $this->container['updated_at'] = isset($data['updated_at']) ? $data['updated_at'] : null;
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
     * Gets answer
     * @return string
     */
    public function getAnswer()
    {
        return $this->container['answer'];
    }

    /**
     * Sets answer
     * @param string $answer Answer given for question.
     * @return $this
     */
    public function setAnswer($answer)
    {
        $this->container['answer'] = $answer;

        return $this;
    }

    /**
     * Gets choice_id
     * @return string
     */
    public function getChoiceId()
    {
        return $this->container['choice_id'];
    }

    /**
     * Sets choice_id
     * @param string $choice_id Identifier of associated choice.
     * @return $this
     */
    public function setChoiceId($choice_id)
    {
        $this->container['choice_id'] = $choice_id;

        return $this;
    }

    /**
     * Gets contact
     * @return object
     */
    public function getContact()
    {
        return $this->container['contact'];
    }

    /**
     * Sets contact
     * @param object $contact Contact object.
     * @return $this
     */
    public function setContact($contact)
    {
        $this->container['contact'] = $contact;

        return $this;
    }

    /**
     * Gets contact_id
     * @return string
     */
    public function getContactId()
    {
        return $this->container['contact_id'];
    }

    /**
     * Sets contact_id
     * @param string $contact_id Identifier of associated contact.
     * @return $this
     */
    public function setContactId($contact_id)
    {
        $this->container['contact_id'] = $contact_id;

        return $this;
    }

    /**
     * Gets created_at
     * @return string
     */
    public function getCreatedAt()
    {
        return $this->container['created_at'];
    }

    /**
     * Sets created_at
     * @param string $created_at Date and time of creation.
     * @return $this
     */
    public function setCreatedAt($created_at)
    {
        $this->container['created_at'] = $created_at;

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
     * @param string $id Unique identifier of survey response.
     * @return $this
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets question_id
     * @return string
     */
    public function getQuestionId()
    {
        return $this->container['question_id'];
    }

    /**
     * Sets question_id
     * @param string $question_id Identifier of associated question.
     * @return $this
     */
    public function setQuestionId($question_id)
    {
        $this->container['question_id'] = $question_id;

        return $this;
    }

    /**
     * Gets survey_id
     * @return string
     */
    public function getSurveyId()
    {
        return $this->container['survey_id'];
    }

    /**
     * Sets survey_id
     * @param string $survey_id Identifier of associated survey.
     * @return $this
     */
    public function setSurveyId($survey_id)
    {
        $this->container['survey_id'] = $survey_id;

        return $this;
    }

    /**
     * Gets updated_at
     * @return string
     */
    public function getUpdatedAt()
    {
        return $this->container['updated_at'];
    }

    /**
     * Sets updated_at
     * @param string $updated_at Date and time of last update.
     * @return $this
     */
    public function setUpdatedAt($updated_at)
    {
        $this->container['updated_at'] = $updated_at;

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


