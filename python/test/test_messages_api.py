# coding: utf-8

"""
    FracTEL API 2.1.0

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

    OpenAPI spec version: 2.1.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import os
import sys
import unittest

import swagger_client
from swagger_client.rest import ApiException
from swagger_client.apis.messages_api import MessagesApi


class TestMessagesApi(unittest.TestCase):
    """ MessagesApi unit test stubs """

    def setUp(self):
        self.api = swagger_client.apis.messages_api.MessagesApi()

    def tearDown(self):
        pass

    def test_post_messages_receive(self):
        """
        Test case for post_messages_receive

        Configure the delivery service type used as the destination for received messages.
        """
        pass

    def test_post_messages_receive_notify(self):
        """
        Test case for post_messages_receive_notify

        Configure the callback URL to notify when a message is received.
        """
        pass

    def test_post_messages_send(self):
        """
        Test case for post_messages_send

        Send an SMS or MMS message to a recipient.
        """
        pass

    def test_post_messages_send_notify(self):
        """
        Test case for post_messages_send_notify

        Configure the callback URL to notify when a message is sent.
        """
        pass


if __name__ == '__main__':
    unittest.main()
