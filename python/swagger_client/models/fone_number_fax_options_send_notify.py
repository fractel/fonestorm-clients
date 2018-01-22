# coding: utf-8

"""
    FoneStorm API 2.4.0 (Thunder)

    FracTEL's Middleware API

    OpenAPI spec version: 2.4.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from pprint import pformat
from six import iteritems
import re


class FoneNumberFaxOptionsSendNotify(object):
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
        'url': 'str',
        'method': 'str'
    }

    attribute_map = {
        'url': 'url',
        'method': 'method'
    }

    def __init__(self, url=None, method=None):
        """
        FoneNumberFaxOptionsSendNotify - a model defined in Swagger
        """

        self._url = None
        self._method = None

        if url is not None:
          self.url = url
        if method is not None:
          self.method = method

    @property
    def url(self):
        """
        Gets the url of this FoneNumberFaxOptionsSendNotify.
        HTTP URL.

        :return: The url of this FoneNumberFaxOptionsSendNotify.
        :rtype: str
        """
        return self._url

    @url.setter
    def url(self, url):
        """
        Sets the url of this FoneNumberFaxOptionsSendNotify.
        HTTP URL.

        :param url: The url of this FoneNumberFaxOptionsSendNotify.
        :type: str
        """

        self._url = url

    @property
    def method(self):
        """
        Gets the method of this FoneNumberFaxOptionsSendNotify.
        HTTP URL method.

        :return: The method of this FoneNumberFaxOptionsSendNotify.
        :rtype: str
        """
        return self._method

    @method.setter
    def method(self, method):
        """
        Sets the method of this FoneNumberFaxOptionsSendNotify.
        HTTP URL method.

        :param method: The method of this FoneNumberFaxOptionsSendNotify.
        :type: str
        """

        self._method = method

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
        if not isinstance(other, FoneNumberFaxOptionsSendNotify):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """
        Returns true if both objects are not equal
        """
        return not self == other
