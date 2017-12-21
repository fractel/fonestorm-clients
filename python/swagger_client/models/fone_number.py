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


class FoneNumber(object):
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
        'fonenumber': 'str',
        'state': 'str',
        'rate_center': 'str',
        'is_active': 'str',
        'sms_options': 'FoneNumberSmsOptions',
        'voice_options': 'FoneNumberVoiceOptions',
        'fax_options': 'FoneNumberFaxOptions'
    }

    attribute_map = {
        'fonenumber': 'fonenumber',
        'state': 'state',
        'rate_center': 'rate_center',
        'is_active': 'is_active',
        'sms_options': 'sms_options',
        'voice_options': 'voice_options',
        'fax_options': 'fax_options'
    }

    def __init__(self, fonenumber=None, state=None, rate_center=None, is_active=None, sms_options=None, voice_options=None, fax_options=None):
        """
        FoneNumber - a model defined in Swagger
        """

        self._fonenumber = None
        self._state = None
        self._rate_center = None
        self._is_active = None
        self._sms_options = None
        self._voice_options = None
        self._fax_options = None

        self.fonenumber = fonenumber
        if state is not None:
          self.state = state
        if rate_center is not None:
          self.rate_center = rate_center
        if is_active is not None:
          self.is_active = is_active
        if sms_options is not None:
          self.sms_options = sms_options
        if voice_options is not None:
          self.voice_options = voice_options
        if fax_options is not None:
          self.fax_options = fax_options

    @property
    def fonenumber(self):
        """
        Gets the fonenumber of this FoneNumber.
        FoneNumber.

        :return: The fonenumber of this FoneNumber.
        :rtype: str
        """
        return self._fonenumber

    @fonenumber.setter
    def fonenumber(self, fonenumber):
        """
        Sets the fonenumber of this FoneNumber.
        FoneNumber.

        :param fonenumber: The fonenumber of this FoneNumber.
        :type: str
        """
        if fonenumber is None:
            raise ValueError("Invalid value for `fonenumber`, must not be `None`")

        self._fonenumber = fonenumber

    @property
    def state(self):
        """
        Gets the state of this FoneNumber.
        US State for fonenumber.

        :return: The state of this FoneNumber.
        :rtype: str
        """
        return self._state

    @state.setter
    def state(self, state):
        """
        Sets the state of this FoneNumber.
        US State for fonenumber.

        :param state: The state of this FoneNumber.
        :type: str
        """

        self._state = state

    @property
    def rate_center(self):
        """
        Gets the rate_center of this FoneNumber.
        Rate center for fonenumber.

        :return: The rate_center of this FoneNumber.
        :rtype: str
        """
        return self._rate_center

    @rate_center.setter
    def rate_center(self, rate_center):
        """
        Sets the rate_center of this FoneNumber.
        Rate center for fonenumber.

        :param rate_center: The rate_center of this FoneNumber.
        :type: str
        """

        self._rate_center = rate_center

    @property
    def is_active(self):
        """
        Gets the is_active of this FoneNumber.
        Status of FoneNumber.

        :return: The is_active of this FoneNumber.
        :rtype: str
        """
        return self._is_active

    @is_active.setter
    def is_active(self, is_active):
        """
        Sets the is_active of this FoneNumber.
        Status of FoneNumber.

        :param is_active: The is_active of this FoneNumber.
        :type: str
        """

        self._is_active = is_active

    @property
    def sms_options(self):
        """
        Gets the sms_options of this FoneNumber.

        :return: The sms_options of this FoneNumber.
        :rtype: FoneNumberSmsOptions
        """
        return self._sms_options

    @sms_options.setter
    def sms_options(self, sms_options):
        """
        Sets the sms_options of this FoneNumber.

        :param sms_options: The sms_options of this FoneNumber.
        :type: FoneNumberSmsOptions
        """

        self._sms_options = sms_options

    @property
    def voice_options(self):
        """
        Gets the voice_options of this FoneNumber.

        :return: The voice_options of this FoneNumber.
        :rtype: FoneNumberVoiceOptions
        """
        return self._voice_options

    @voice_options.setter
    def voice_options(self, voice_options):
        """
        Sets the voice_options of this FoneNumber.

        :param voice_options: The voice_options of this FoneNumber.
        :type: FoneNumberVoiceOptions
        """

        self._voice_options = voice_options

    @property
    def fax_options(self):
        """
        Gets the fax_options of this FoneNumber.

        :return: The fax_options of this FoneNumber.
        :rtype: FoneNumberFaxOptions
        """
        return self._fax_options

    @fax_options.setter
    def fax_options(self, fax_options):
        """
        Sets the fax_options of this FoneNumber.

        :param fax_options: The fax_options of this FoneNumber.
        :type: FoneNumberFaxOptions
        """

        self._fax_options = fax_options

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
        if not isinstance(other, FoneNumber):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """
        Returns true if both objects are not equal
        """
        return not self == other
