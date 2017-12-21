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


class FoneNumberVoiceOptions(object):
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
        'receive_notify': 'FoneNumberVoiceOptionsReceiveNotify',
        'send_notify': 'FoneNumberVoiceOptionsSendNotify'
    }

    attribute_map = {
        'receive_notify': 'receive_notify',
        'send_notify': 'send_notify'
    }

    def __init__(self, receive_notify=None, send_notify=None):
        """
        FoneNumberVoiceOptions - a model defined in Swagger
        """

        self._receive_notify = None
        self._send_notify = None

        if receive_notify is not None:
          self.receive_notify = receive_notify
        if send_notify is not None:
          self.send_notify = send_notify

    @property
    def receive_notify(self):
        """
        Gets the receive_notify of this FoneNumberVoiceOptions.

        :return: The receive_notify of this FoneNumberVoiceOptions.
        :rtype: FoneNumberVoiceOptionsReceiveNotify
        """
        return self._receive_notify

    @receive_notify.setter
    def receive_notify(self, receive_notify):
        """
        Sets the receive_notify of this FoneNumberVoiceOptions.

        :param receive_notify: The receive_notify of this FoneNumberVoiceOptions.
        :type: FoneNumberVoiceOptionsReceiveNotify
        """

        self._receive_notify = receive_notify

    @property
    def send_notify(self):
        """
        Gets the send_notify of this FoneNumberVoiceOptions.

        :return: The send_notify of this FoneNumberVoiceOptions.
        :rtype: FoneNumberVoiceOptionsSendNotify
        """
        return self._send_notify

    @send_notify.setter
    def send_notify(self, send_notify):
        """
        Sets the send_notify of this FoneNumberVoiceOptions.

        :param send_notify: The send_notify of this FoneNumberVoiceOptions.
        :type: FoneNumberVoiceOptionsSendNotify
        """

        self._send_notify = send_notify

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
        if not isinstance(other, FoneNumberVoiceOptions):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """
        Returns true if both objects are not equal
        """
        return not self == other
