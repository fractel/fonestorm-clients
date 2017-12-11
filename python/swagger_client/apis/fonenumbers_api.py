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


class FonenumbersApi(object):
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

    def delete_fonenumbers_fonenumber(self, fonenumber, **kwargs):
        """
        Delete a fonenumber identified by fonenumber.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.delete_fonenumbers_fonenumber(fonenumber, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL fonenumber. (required)
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('callback'):
            return self.delete_fonenumbers_fonenumber_with_http_info(fonenumber, **kwargs)
        else:
            (data) = self.delete_fonenumbers_fonenumber_with_http_info(fonenumber, **kwargs)
            return data

    def delete_fonenumbers_fonenumber_with_http_info(self, fonenumber, **kwargs):
        """
        Delete a fonenumber identified by fonenumber.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.delete_fonenumbers_fonenumber_with_http_info(fonenumber, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL fonenumber. (required)
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['fonenumber']
        all_params.append('callback')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method delete_fonenumbers_fonenumber" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'fonenumber' is set
        if ('fonenumber' not in params) or (params['fonenumber'] is None):
            raise ValueError("Missing the required parameter `fonenumber` when calling `delete_fonenumbers_fonenumber`")


        collection_formats = {}

        path_params = {}
        if 'fonenumber' in params:
            path_params['fonenumber'] = params['fonenumber']

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.\
            select_header_accept(['application/json'])

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/fonenumbers/{fonenumber}', 'DELETE',
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

    def get_fonenumbers(self, **kwargs):
        """
        Get a list of all active fonenumbers under the account.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.get_fonenumbers(callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str filter: Filters for the response.
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('callback'):
            return self.get_fonenumbers_with_http_info(**kwargs)
        else:
            (data) = self.get_fonenumbers_with_http_info(**kwargs)
            return data

    def get_fonenumbers_with_http_info(self, **kwargs):
        """
        Get a list of all active fonenumbers under the account.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.get_fonenumbers_with_http_info(callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str filter: Filters for the response.
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['filter']
        all_params.append('callback')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_fonenumbers" % key
                )
            params[key] = val
        del params['kwargs']


        collection_formats = {}

        path_params = {}

        query_params = []
        if 'filter' in params:
            query_params.append(('filter', params['filter']))

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.\
            select_header_accept(['application/json'])

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/fonenumbers', 'GET',
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

    def get_fonenumbers_fonenumber(self, fonenumber, **kwargs):
        """
        Get a fonenumber identified by fonenumber.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.get_fonenumbers_fonenumber(fonenumber, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL fonenumber. (required)
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('callback'):
            return self.get_fonenumbers_fonenumber_with_http_info(fonenumber, **kwargs)
        else:
            (data) = self.get_fonenumbers_fonenumber_with_http_info(fonenumber, **kwargs)
            return data

    def get_fonenumbers_fonenumber_with_http_info(self, fonenumber, **kwargs):
        """
        Get a fonenumber identified by fonenumber.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.get_fonenumbers_fonenumber_with_http_info(fonenumber, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL fonenumber. (required)
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['fonenumber']
        all_params.append('callback')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_fonenumbers_fonenumber" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'fonenumber' is set
        if ('fonenumber' not in params) or (params['fonenumber'] is None):
            raise ValueError("Missing the required parameter `fonenumber` when calling `get_fonenumbers_fonenumber`")


        collection_formats = {}

        path_params = {}
        if 'fonenumber' in params:
            path_params['fonenumber'] = params['fonenumber']

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.\
            select_header_accept(['application/json'])

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/fonenumbers/{fonenumber}', 'GET',
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

    def post_fonenumbers(self, area_code, **kwargs):
        """
        Create a fonenumber under the account.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_fonenumbers(area_code, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str area_code: A valid 3-digit Area Code. (required)
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('callback'):
            return self.post_fonenumbers_with_http_info(area_code, **kwargs)
        else:
            (data) = self.post_fonenumbers_with_http_info(area_code, **kwargs)
            return data

    def post_fonenumbers_with_http_info(self, area_code, **kwargs):
        """
        Create a fonenumber under the account.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.post_fonenumbers_with_http_info(area_code, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str area_code: A valid 3-digit Area Code. (required)
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['area_code']
        all_params.append('callback')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method post_fonenumbers" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'area_code' is set
        if ('area_code' not in params) or (params['area_code'] is None):
            raise ValueError("Missing the required parameter `area_code` when calling `post_fonenumbers`")


        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'area_code' in params:
            form_params.append(('area_code', params['area_code']))

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.\
            select_header_accept(['application/json'])

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/fonenumbers', 'POST',
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

    def put_fonenumbers_fonenumber(self, fonenumber, type, **kwargs):
        """
        Update a fonenumber identified by fonenumber.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.put_fonenumbers_fonenumber(fonenumber, type, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL fonenumber. (required)
        :param str type: Message routing type. (required)
        :param str value: Message routing type value.
        :param str url_method: URL method.
        :param str url_username: URL auth username.
        :param str url_password: URL auth password.
        :return: str
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('callback'):
            return self.put_fonenumbers_fonenumber_with_http_info(fonenumber, type, **kwargs)
        else:
            (data) = self.put_fonenumbers_fonenumber_with_http_info(fonenumber, type, **kwargs)
            return data

    def put_fonenumbers_fonenumber_with_http_info(self, fonenumber, type, **kwargs):
        """
        Update a fonenumber identified by fonenumber.
        Returns a JSON response
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please define a `callback` function
        to be invoked when receiving the response.
        >>> def callback_function(response):
        >>>     pprint(response)
        >>>
        >>> thread = api.put_fonenumbers_fonenumber_with_http_info(fonenumber, type, callback=callback_function)

        :param callback function: The callback function
            for asynchronous request. (optional)
        :param str fonenumber: Your FracTEL fonenumber. (required)
        :param str type: Message routing type. (required)
        :param str value: Message routing type value.
        :param str url_method: URL method.
        :param str url_username: URL auth username.
        :param str url_password: URL auth password.
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
                    " to method put_fonenumbers_fonenumber" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'fonenumber' is set
        if ('fonenumber' not in params) or (params['fonenumber'] is None):
            raise ValueError("Missing the required parameter `fonenumber` when calling `put_fonenumbers_fonenumber`")
        # verify the required parameter 'type' is set
        if ('type' not in params) or (params['type'] is None):
            raise ValueError("Missing the required parameter `type` when calling `put_fonenumbers_fonenumber`")


        collection_formats = {}

        path_params = {}
        if 'fonenumber' in params:
            path_params['fonenumber'] = params['fonenumber']

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
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
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.\
            select_header_accept(['application/json'])

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.\
            select_header_content_type(['application/x-www-form-urlencoded'])

        # Authentication setting
        auth_settings = []

        return self.api_client.call_api('/fonenumbers/{fonenumber}', 'PUT',
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
