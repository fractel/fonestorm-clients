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
from swagger_client.apis.auth_api import AuthApi


class TestAuthApi(unittest.TestCase):
    """ AuthApi unit test stubs """

    def setUp(self):
        self.api = swagger_client.apis.auth_api.AuthApi()

    def tearDown(self):
        pass

    def test_post_auth(self):
        """
        Test case for post_auth

        Obtain a FracTEL Auth token.
        """
        pass


if __name__ == '__main__':
    unittest.main()