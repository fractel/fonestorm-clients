# coding: utf-8

"""
    FracTEL API 2.1.1

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

    OpenAPI spec version: 2.1.1
    
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


class MessagesApi(object):
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

    def post_messages_receive(self, fonenumber, type, **kwargs):
        """
        Configure the delivery service type used as the destination for received messages.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_messages_receive(fonenumber, type, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL phone number. (required)
        :param str type: Message routing type. (required)
        :param str value: Message routing type value.
        :param str url_method: URL method when type is URL.
        :param str url_username: Optional URL username when type is URL.
        :param str url_password: Optional URL password when type is URL.
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('callback'):
            return self.post_messages_receive_with_http_info(fonenumber, type, **kwargs)
        else:
            (data) = self.post_messages_receive_with_http_info(fonenumber, type, **kwargs)
            return data

    def post_messages_receive_with_http_info(self, fonenumber, type, **kwargs):
        """
        Configure the delivery service type used as the destination for received messages.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_messages_receive_with_http_info(fonenumber, type, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL phone number. (required)
        :param str type: Message routing type. (required)
        :param str value: Message routing type value.
        :param str url_method: URL method when type is URL.
        :param str url_username: Optional URL username when type is URL.
        :param str url_password: Optional URL password when type is URL.
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['fonenumber', 'type', 'value', 'url_method', 'url_username', 'url_password']
        all_params.append('callback')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method post_messages_receive" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'fonenumber' is set
        if ('fonenumber' not in params) or (params['fonenumber'] is None):
            raise ValueError("Missing the required parameter `fonenumber` when calling `post_messages_receive`")
        # verify the required parameter 'type' is set
        if ('type' not in params) or (params['type'] is None):
            raise ValueError("Missing the required parameter `type` when calling `post_messages_receive`")


        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'fonenumber' in params:
            form_params.append(('fonenumber', params['fonenumber']))
        if 'type' in params:
            form_params.append(('type', params['type']))
        if 'value' in params:
            form_params.append(('value', params['value']))
        if 'url_method' in params:
            form_params.append(('url_method', params['url_method']))
        if 'url_username' in params:
            form_params.append(('url_username', params['url_username']))
        if 'url_password' in params:
            form_params.append(('url_password', params['url_password']))

        body_params = None
        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/messages/receive', 'POST',
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

    def post_messages_receive_notify(self, fonenumber, method, url, **kwargs):
        """
        Configure the callback URL to notify when a message is received.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_messages_receive_notify(fonenumber, method, url, callback=callback_function)

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
            return self.post_messages_receive_notify_with_http_info(fonenumber, method, url, **kwargs)
        else:
            (data) = self.post_messages_receive_notify_with_http_info(fonenumber, method, url, **kwargs)
            return data

    def post_messages_receive_notify_with_http_info(self, fonenumber, method, url, **kwargs):
        """
        Configure the callback URL to notify when a message is received.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_messages_receive_notify_with_http_info(fonenumber, method, url, callback=callback_function)

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
                    " to method post_messages_receive_notify" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'fonenumber' is set
        if ('fonenumber' not in params) or (params['fonenumber'] is None):
            raise ValueError("Missing the required parameter `fonenumber` when calling `post_messages_receive_notify`")
        # verify the required parameter 'method' is set
        if ('method' not in params) or (params['method'] is None):
            raise ValueError("Missing the required parameter `method` when calling `post_messages_receive_notify`")
        # verify the required parameter 'url' is set
        if ('url' not in params) or (params['url'] is None):
            raise ValueError("Missing the required parameter `url` when calling `post_messages_receive_notify`")


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
        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/messages/receive_notify', 'POST',
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

    def post_messages_send(self, to, fonenumber, message, **kwargs):
        """
        Send an SMS or MMS message to a recipient.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_messages_send(to, fonenumber, message, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str to: The recipient's 10 digits phone number. (required)
        :param str fonenumber: Your FracTEL phone number to use as from (required)
        :param str message: Content of SMS (required)
        :param list[str] media_url: URL for media for send via SMS (up to 10)
        :param str confirmation_url: Callback URL for confirmation
        :param str confirmation_url_username: Callback URL username for confirmation
        :param str confirmation_url_password: Callback URL password for confirmation
        :param bool require_confirmation: Only send message if confirmation is available
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('callback'):
            return self.post_messages_send_with_http_info(to, fonenumber, message, **kwargs)
        else:
            (data) = self.post_messages_send_with_http_info(to, fonenumber, message, **kwargs)
            return data

    def post_messages_send_with_http_info(self, to, fonenumber, message, **kwargs):
        """
        Send an SMS or MMS message to a recipient.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_messages_send_with_http_info(to, fonenumber, message, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str to: The recipient's 10 digits phone number. (required)
        :param str fonenumber: Your FracTEL phone number to use as from (required)
        :param str message: Content of SMS (required)
        :param list[str] media_url: URL for media for send via SMS (up to 10)
        :param str confirmation_url: Callback URL for confirmation
        :param str confirmation_url_username: Callback URL username for confirmation
        :param str confirmation_url_password: Callback URL password for confirmation
        :param bool require_confirmation: Only send message if confirmation is available
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['to', 'fonenumber', 'message', 'media_url', 'confirmation_url', 'confirmation_url_username', 'confirmation_url_password', 'require_confirmation']
        all_params.append('callback')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method post_messages_send" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'to' is set
        if ('to' not in params) or (params['to'] is None):
            raise ValueError("Missing the required parameter `to` when calling `post_messages_send`")
        # verify the required parameter 'fonenumber' is set
        if ('fonenumber' not in params) or (params['fonenumber'] is None):
            raise ValueError("Missing the required parameter `fonenumber` when calling `post_messages_send`")
        # verify the required parameter 'message' is set
        if ('message' not in params) or (params['message'] is None):
            raise ValueError("Missing the required parameter `message` when calling `post_messages_send`")

        if 'media_url' in params and len(params['media_url']) > 10:
            raise ValueError("Invalid value for parameter `media_url` when calling `post_messages_send`, number of items must be less than or equal to `10`")

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'to' in params:
            form_params.append(('to', params['to']))
        if 'fonenumber' in params:
            form_params.append(('fonenumber', params['fonenumber']))
        if 'message' in params:
            form_params.append(('message', params['message']))
        if 'media_url' in params:
            form_params.append(('media_url', params['media_url']))
            collection_formats['media_url'] = 'multi'
        if 'confirmation_url' in params:
            form_params.append(('confirmation_url', params['confirmation_url']))
        if 'confirmation_url_username' in params:
            form_params.append(('confirmation_url_username', params['confirmation_url_username']))
        if 'confirmation_url_password' in params:
            form_params.append(('confirmation_url_password', params['confirmation_url_password']))
        if 'require_confirmation' in params:
            form_params.append(('require_confirmation', params['require_confirmation']))

        body_params = None
        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/messages/send', 'POST',
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

    def post_messages_send_notify(self, fonenumber, method, url, **kwargs):
        """
        Configure the callback URL to notify when a message is sent.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_messages_send_notify(fonenumber, method, url, callback=callback_function)

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
            return self.post_messages_send_notify_with_http_info(fonenumber, method, url, **kwargs)
        else:
            (data) = self.post_messages_send_notify_with_http_info(fonenumber, method, url, **kwargs)
            return data

    def post_messages_send_notify_with_http_info(self, fonenumber, method, url, **kwargs):
        """
        Configure the callback URL to notify when a message is sent.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_messages_send_notify_with_http_info(fonenumber, method, url, callback=callback_function)

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
                    " to method post_messages_send_notify" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'fonenumber' is set
        if ('fonenumber' not in params) or (params['fonenumber'] is None):
            raise ValueError("Missing the required parameter `fonenumber` when calling `post_messages_send_notify`")
        # verify the required parameter 'method' is set
        if ('method' not in params) or (params['method'] is None):
            raise ValueError("Missing the required parameter `method` when calling `post_messages_send_notify`")
        # verify the required parameter 'url' is set
        if ('url' not in params) or (params['url'] is None):
            raise ValueError("Missing the required parameter `url` when calling `post_messages_send_notify`")


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
        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/messages/send_notify', 'POST',
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
