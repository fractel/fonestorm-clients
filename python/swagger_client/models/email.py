# coding: utf-8

"""
    FoneStorm API 2.2.0 (Breeze)

    FracTEL's Middleware API

    OpenAPI spec version: 2.2.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from pprint import pformat
from six import iteritems
import re


class Email(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """


    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'id': 'str',
        '_from': 'str',
        'body': 'str',
        'send_individually': 'bool',
        'subject': 'str',
        'time': 'str',
        'to': 'list[ERRORUNKNOWN]'
    }

    attribute_map = {
        'id': 'id',
        '_from': 'from',
        'body': 'body',
        'send_individually': 'send_individually',
        'subject': 'subject',
        'time': 'time',
        'to': 'to'
    }

    def __init__(self, id=None, _from=None, body=None, send_individually=None, subject=None, time=None, to=None):
        """
        Email - a model defined in Swagger
        """

        self._id = None
        self.__from = None
        self._body = None
        self._send_individually = None
        self._subject = None
        self._time = None
        self._to = None

        self.id = id
        if _from is not None:
          self._from = _from
        if body is not None:
          self.body = body
        if send_individually is not None:
          self.send_individually = send_individually
        if subject is not None:
          self.subject = subject
        if time is not None:
          self.time = time
        if to is not None:
          self.to = to

    @property
    def id(self):
        """
        Gets the id of this Email.
        Unique identifier of email.

        :return: The id of this Email.
        :rtype: str
        """
        return self._id

    @id.setter
    def id(self, id):
        """
        Sets the id of this Email.
        Unique identifier of email.

        :param id: The id of this Email.
        :type: str
        """
        if id is None:
            raise ValueError("Invalid value for `id`, must not be `None`")

        self._id = id

    @property
    def _from(self):
        """
        Gets the _from of this Email.
        Email address of sender.

        :return: The _from of this Email.
        :rtype: str
        """
        return self.__from

    @_from.setter
    def _from(self, _from):
        """
        Sets the _from of this Email.
        Email address of sender.

        :param _from: The _from of this Email.
        :type: str
        """

        self.__from = _from

    @property
    def body(self):
        """
        Gets the body of this Email.
        Body of message.

        :return: The body of this Email.
        :rtype: str
        """
        return self._body

    @body.setter
    def body(self, body):
        """
        Sets the body of this Email.
        Body of message.

        :param body: The body of this Email.
        :type: str
        """

        self._body = body

    @property
    def send_individually(self):
        """
        Gets the send_individually of this Email.
        Send individually or as single email.

        :return: The send_individually of this Email.
        :rtype: bool
        """
        return self._send_individually

    @send_individually.setter
    def send_individually(self, send_individually):
        """
        Sets the send_individually of this Email.
        Send individually or as single email.

        :param send_individually: The send_individually of this Email.
        :type: bool
        """

        self._send_individually = send_individually

    @property
    def subject(self):
        """
        Gets the subject of this Email.
        Subject of email.

        :return: The subject of this Email.
        :rtype: str
        """
        return self._subject

    @subject.setter
    def subject(self, subject):
        """
        Sets the subject of this Email.
        Subject of email.

        :param subject: The subject of this Email.
        :type: str
        """

        self._subject = subject

    @property
    def time(self):
        """
        Gets the time of this Email.
        Time to send.

        :return: The time of this Email.
        :rtype: str
        """
        return self._time

    @time.setter
    def time(self, time):
        """
        Sets the time of this Email.
        Time to send.

        :param time: The time of this Email.
        :type: str
        """

        self._time = time

    @property
    def to(self):
        """
        Gets the to of this Email.
        Array of email addresses to mail.

        :return: The to of this Email.
        :rtype: list[ERRORUNKNOWN]
        """
        return self._to

    @to.setter
    def to(self, to):
        """
        Sets the to of this Email.
        Array of email addresses to mail.

        :param to: The to of this Email.
        :type: list[ERRORUNKNOWN]
        """

        self._to = to

    def to_dict(self):
        """
        Returns the model properties as a dict
        """
        result = {}

        for attr, _ in iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """
        Returns the string representation of the model
        """
        return pformat(self.to_dict())

    def __repr__(self):
        """
        For `print` and `pprint`
        """
        return self.to_str()

    def __eq__(self, other):
        """
        Returns true if both objects are equal
        """
        if not isinstance(other, Email):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """
        Returns true if both objects are not equal
        """
        return not self == other