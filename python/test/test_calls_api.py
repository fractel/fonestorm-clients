# coding: utf-8

"""
    FoneStorm API 2.2.0

    Extended API Documentation: https://developer.fonestorm.com

    OpenAPI spec version: 2.2.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import os
import sys
import unittest

import swagger_client
from swagger_client.rest import ApiException
from swagger_client.apis.calls_api import CallsApi


class TestCallsApi(unittest.TestCase):
    """ CallsApi unit test stubs """

    def setUp(self):
        self.api = swagger_client.apis.calls_api.CallsApi()

    def tearDown(self):
        pass

    def test_post_calls(self):
        """
        Test case for post_calls

        Create a new call under the account.
        """
        pass

    def test_post_calls_receive_notify(self):
        """
        Test case for post_calls_receive_notify

        Configure the callback URL to notify when a call is received.
        """
        pass

    def test_post_calls_send_notify(self):
        """
        Test case for post_calls_send_notify

        Configure the callback URL to notify when a call is made.
        """
        pass


if __name__ == '__main__':
    unittest.main()
