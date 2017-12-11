# coding: utf-8

"""
    FoneStorm API 2.2.0

    FracTEL's Middleware API

    OpenAPI spec version: 2.2.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import sys
import os
import re

# python 2 and python 3 compatibility library
from six import iteritems

from ..configuration import Configuration
from ..api_client import ApiClient


class FaxesApi(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        config = Configuration()
        if api_client:
            self.api_client = api_client
        else:
            if not config.api_client:
                config.api_client = ApiClient()
            self.api_client = config.api_client

    def post_faxes(self, fonenumber, to, **kwargs):
        """
        Create a new fax under the account.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_faxes(fonenumber, to, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: FracTEL phone number to use for fax. (required)
        :param str to: Phone number to fax. (required)
        :param str message: Message to fax.
        :param str pdf:
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('callback'):
            return self.post_faxes_with_http_info(fonenumber, to, **kwargs)
        else:
            (data) = self.post_faxes_with_http_info(fonenumber, to, **kwargs)
            return data

    def post_faxes_with_http_info(self, fonenumber, to, **kwargs):
        """
        Create a new fax under the account.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_faxes_with_http_info(fonenumber, to, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: FracTEL phone number to use for fax. (required)
        :param str to: Phone number to fax. (required)
        :param str message: Message to fax.
        :param str pdf:
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['fonenumber', 'to', 'message', 'pdf']
        all_params.append('callback')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method post_faxes" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'fonenumber' is set
        if ('fonenumber' not in params) or (params['fonenumber'] is None):
            raise ValueError("Missing the required parameter `fonenumber` when calling `post_faxes`")
        # verify the required parameter 'to' is set
        if ('to' not in params) or (params['to'] is None):
            raise ValueError("Missing the required parameter `to` when calling `post_faxes`")


        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'fonenumber' in params:
            form_params.append(('fonenumber', params['fonenumber']))
        if 'to' in params:
            form_params.append(('to', params['to']))
        if 'message' in params:
            form_params.append(('message', params['message']))
        if 'pdf' in params:
            form_params.append(('pdf', params['pdf']))

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.\
            select_header_accept(['application/json'])

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/faxes', 'POST',
                                        path_params,
                                        query_params,
                                        header_params,
                                        body=body_params,
                                        post_params=form_params,
                                        files=local_var_files,
                                        response_type='str',
                                        auth_settings=auth_settings,
                                        callback=params.get('callback'),
                                        _return_http_data_only=params.get('_return_http_data_only'),
                                        _preload_content=params.get('_preload_content', True),
                                        _request_timeout=params.get('_request_timeout'),
                                        collection_formats=collection_formats)

    def post_faxes_receive_notify(self, fonenumber, method, url, **kwargs):
        """
        Configure the callback URL to notify when a fax is received.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_faxes_receive_notify(fonenumber, method, url, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL phone number. (required)
        :param str method: Callback URL method. (required)
        :param str url: Callback URL. (required)
        :param str url_username: Callback URL username.
        :param str url_password: Callback URL password.
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('callback'):
            return self.post_faxes_receive_notify_with_http_info(fonenumber, method, url, **kwargs)
        else:
            (data) = self.post_faxes_receive_notify_with_http_info(fonenumber, method, url, **kwargs)
            return data

    def post_faxes_receive_notify_with_http_info(self, fonenumber, method, url, **kwargs):
        """
        Configure the callback URL to notify when a fax is received.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_faxes_receive_notify_with_http_info(fonenumber, method, url, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL phone number. (required)
        :param str method: Callback URL method. (required)
        :param str url: Callback URL. (required)
        :param str url_username: Callback URL username.
        :param str url_password: Callback URL password.
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['fonenumber', 'method', 'url', 'url_username', 'url_password']
        all_params.append('callback')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method post_faxes_receive_notify" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'fonenumber' is set
        if ('fonenumber' not in params) or (params['fonenumber'] is None):
            raise ValueError("Missing the required parameter `fonenumber` when calling `post_faxes_receive_notify`")
        # verify the required parameter 'method' is set
        if ('method' not in params) or (params['method'] is None):
            raise ValueError("Missing the required parameter `method` when calling `post_faxes_receive_notify`")
        # verify the required parameter 'url' is set
        if ('url' not in params) or (params['url'] is None):
            raise ValueError("Missing the required parameter `url` when calling `post_faxes_receive_notify`")


        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'fonenumber' in params:
            form_params.append(('fonenumber', params['fonenumber']))
        if 'method' in params:
            form_params.append(('method', params['method']))
        if 'url' in params:
            form_params.append(('url', params['url']))
        if 'url_username' in params:
            form_params.append(('url_username', params['url_username']))
        if 'url_password' in params:
            form_params.append(('url_password', params['url_password']))

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.\
            select_header_accept(['application/json'])

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/faxes/receive_notify', 'POST',
                                        path_params,
                                        query_params,
                                        header_params,
                                        body=body_params,
                                        post_params=form_params,
                                        files=local_var_files,
                                        response_type='str',
                                        auth_settings=auth_settings,
                                        callback=params.get('callback'),
                                        _return_http_data_only=params.get('_return_http_data_only'),
                                        _preload_content=params.get('_preload_content', True),
                                        _request_timeout=params.get('_request_timeout'),
                                        collection_formats=collection_formats)

    def post_faxes_send_notify(self, fonenumber, method, url, **kwargs):
        """
        Configure the callback URL to notify when a fax is made.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_faxes_send_notify(fonenumber, method, url, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL phone number (required)
        :param str method: Callback URL method. (required)
        :param str url: Callback URL. (required)
        :param str url_username: Callback URL username.
        :param str url_password: Callback URL password.
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('callback'):
            return self.post_faxes_send_notify_with_http_info(fonenumber, method, url, **kwargs)
        else:
            (data) = self.post_faxes_send_notify_with_http_info(fonenumber, method, url, **kwargs)
            return data

    def post_faxes_send_notify_with_http_info(self, fonenumber, method, url, **kwargs):
        """
        Configure the callback URL to notify when a fax is made.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_faxes_send_notify_with_http_info(fonenumber, method, url, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL phone number (required)
        :param str method: Callback URL method. (required)
        :param str url: Callback URL. (required)
        :param str url_username: Callback URL username.
        :param str url_password: Callback URL password.
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['fonenumber', 'method', 'url', 'url_username', 'url_password']
        all_params.append('callback')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method post_faxes_send_notify" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'fonenumber' is set
        if ('fonenumber' not in params) or (params['fonenumber'] is None):
            raise ValueError("Missing the required parameter `fonenumber` when calling `post_faxes_send_notify`")
        # verify the required parameter 'method' is set
        if ('method' not in params) or (params['method'] is None):
            raise ValueError("Missing the required parameter `method` when calling `post_faxes_send_notify`")
        # verify the required parameter 'url' is set
        if ('url' not in params) or (params['url'] is None):
            raise ValueError("Missing the required parameter `url` when calling `post_faxes_send_notify`")


        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'fonenumber' in params:
            form_params.append(('fonenumber', params['fonenumber']))
        if 'method' in params:
            form_params.append(('method', params['method']))
        if 'url' in params:
            form_params.append(('url', params['url']))
        if 'url_username' in params:
            form_params.append(('url_username', params['url_username']))
        if 'url_password' in params:
            form_params.append(('url_password', params['url_password']))

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.\
            select_header_accept(['application/json'])

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/faxes/send_notify', 'POST',
                                        path_params,
                                        query_params,
                                        header_params,
                                        body=body_params,
                                        post_params=form_params,
                                        files=local_var_files,
                                        response_type='str',
                                        auth_settings=auth_settings,
                                        callback=params.get('callback'),
                                        _return_http_data_only=params.get('_return_http_data_only'),
                                        _preload_content=params.get('_preload_content', True),
                                        _request_timeout=params.get('_request_timeout'),
                                        collection_formats=collection_formats)
