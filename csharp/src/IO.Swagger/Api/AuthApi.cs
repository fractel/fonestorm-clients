/* 
 * FracTEL API 2.1.1
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 2.1.1
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using RestSharp;
using IO.Swagger.Client;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IAuthApi : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// Obtain a FracTEL Auth token.
        /// </summary>
        /// <remarks>
        /// Returns a token that can be used to make authenticated requests
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="username">FracTEL username</param>
        /// <param name="password">FracTEL password</param>
        /// <param name="expires">FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 24 hours (optional)</param>
        /// <returns>string</returns>
        string PostAuth (string username, string password, int? expires = null);

        /// <summary>
        /// Obtain a FracTEL Auth token.
        /// </summary>
        /// <remarks>
        /// Returns a token that can be used to make authenticated requests
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="username">FracTEL username</param>
        /// <param name="password">FracTEL password</param>
        /// <param name="expires">FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 24 hours (optional)</param>
        /// <returns>ApiResponse of string</returns>
        ApiResponse<string> PostAuthWithHttpInfo (string username, string password, int? expires = null);
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// Obtain a FracTEL Auth token.
        /// </summary>
        /// <remarks>
        /// Returns a token that can be used to make authenticated requests
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="username">FracTEL username</param>
        /// <param name="password">FracTEL password</param>
        /// <param name="expires">FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 24 hours (optional)</param>
        /// <returns>Task of string</returns>
        System.Threading.Tasks.Task<string> PostAuthAsync (string username, string password, int? expires = null);

        /// <summary>
        /// Obtain a FracTEL Auth token.
        /// </summary>
        /// <remarks>
        /// Returns a token that can be used to make authenticated requests
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="username">FracTEL username</param>
        /// <param name="password">FracTEL password</param>
        /// <param name="expires">FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 24 hours (optional)</param>
        /// <returns>Task of ApiResponse (string)</returns>
        System.Threading.Tasks.Task<ApiResponse<string>> PostAuthAsyncWithHttpInfo (string username, string password, int? expires = null);
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class AuthApi : IAuthApi
    {
        private IO.Swagger.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="AuthApi"/> class.
        /// </summary>
        /// <returns></returns>
        public AuthApi(String basePath)
        {
            this.Configuration = new Configuration(new ApiClient(basePath));

            ExceptionFactory = IO.Swagger.Client.Configuration.DefaultExceptionFactory;

            // ensure API client has configuration ready
            if (Configuration.ApiClient.Configuration == null)
            {
                this.Configuration.ApiClient.Configuration = this.Configuration;
            }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="AuthApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public AuthApi(Configuration configuration = null)
        {
            if (configuration == null) // use the default one in Configuration
                this.Configuration = Configuration.Default;
            else
                this.Configuration = configuration;

            ExceptionFactory = IO.Swagger.Client.Configuration.DefaultExceptionFactory;

            // ensure API client has configuration ready
            if (Configuration.ApiClient.Configuration == null)
            {
                this.Configuration.ApiClient.Configuration = this.Configuration;
            }
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public String GetBasePath()
        {
            return this.Configuration.ApiClient.RestClient.BaseUrl.ToString();
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        [Obsolete("SetBasePath is deprecated, please do 'Configuration.ApiClient = new ApiClient(\"http://new-path\")' instead.")]
        public void SetBasePath(String basePath)
        {
            // do nothing
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public Configuration Configuration {get; set;}

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public IO.Swagger.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// Gets the default header.
        /// </summary>
        /// <returns>Dictionary of HTTP header</returns>
        [Obsolete("DefaultHeader is deprecated, please use Configuration.DefaultHeader instead.")]
        public Dictionary<String, String> DefaultHeader()
        {
            return this.Configuration.DefaultHeader;
        }

        /// <summary>
        /// Add default header.
        /// </summary>
        /// <param name="key">Header field name.</param>
        /// <param name="value">Header field value.</param>
        /// <returns></returns>
        [Obsolete("AddDefaultHeader is deprecated, please use Configuration.AddDefaultHeader instead.")]
        public void AddDefaultHeader(string key, string value)
        {
            this.Configuration.AddDefaultHeader(key, value);
        }

        /// <summary>
        /// Obtain a FracTEL Auth token. Returns a token that can be used to make authenticated requests
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="username">FracTEL username</param>
        /// <param name="password">FracTEL password</param>
        /// <param name="expires">FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 24 hours (optional)</param>
        /// <returns>string</returns>
        public string PostAuth (string username, string password, int? expires = null)
        {
             ApiResponse<string> localVarResponse = PostAuthWithHttpInfo(username, password, expires);
             return localVarResponse.Data;
        }

        /// <summary>
        /// Obtain a FracTEL Auth token. Returns a token that can be used to make authenticated requests
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="username">FracTEL username</param>
        /// <param name="password">FracTEL password</param>
        /// <param name="expires">FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 24 hours (optional)</param>
        /// <returns>ApiResponse of string</returns>
        public ApiResponse< string > PostAuthWithHttpInfo (string username, string password, int? expires = null)
        {
            // verify the required parameter 'username' is set
            if (username == null)
                throw new ApiException(400, "Missing required parameter 'username' when calling AuthApi->PostAuth");
            // verify the required parameter 'password' is set
            if (password == null)
                throw new ApiException(400, "Missing required parameter 'password' when calling AuthApi->PostAuth");

            var localVarPath = "/auth";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new Dictionary<String, String>();
            var localVarHeaderParams = new Dictionary<String, String>(Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
                "application/x-www-form-urlencoded"
            };
            String localVarHttpContentType = Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
            };
            String localVarHttpHeaderAccept = Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (username != null) localVarFormParams.Add("username", Configuration.ApiClient.ParameterToString(username)); // form parameter
            if (password != null) localVarFormParams.Add("password", Configuration.ApiClient.ParameterToString(password)); // form parameter
            if (expires != null) localVarFormParams.Add("expires", Configuration.ApiClient.ParameterToString(expires)); // form parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) Configuration.ApiClient.CallApi(localVarPath,
                Method.POST, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("PostAuth", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<string>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => x.Value.ToString()),
                (string) Configuration.ApiClient.Deserialize(localVarResponse, typeof(string)));
        }

        /// <summary>
        /// Obtain a FracTEL Auth token. Returns a token that can be used to make authenticated requests
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="username">FracTEL username</param>
        /// <param name="password">FracTEL password</param>
        /// <param name="expires">FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 24 hours (optional)</param>
        /// <returns>Task of string</returns>
        public async System.Threading.Tasks.Task<string> PostAuthAsync (string username, string password, int? expires = null)
        {
             ApiResponse<string> localVarResponse = await PostAuthAsyncWithHttpInfo(username, password, expires);
             return localVarResponse.Data;

        }

        /// <summary>
        /// Obtain a FracTEL Auth token. Returns a token that can be used to make authenticated requests
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="username">FracTEL username</param>
        /// <param name="password">FracTEL password</param>
        /// <param name="expires">FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 24 hours (optional)</param>
        /// <returns>Task of ApiResponse (string)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<string>> PostAuthAsyncWithHttpInfo (string username, string password, int? expires = null)
        {
            // verify the required parameter 'username' is set
            if (username == null)
                throw new ApiException(400, "Missing required parameter 'username' when calling AuthApi->PostAuth");
            // verify the required parameter 'password' is set
            if (password == null)
                throw new ApiException(400, "Missing required parameter 'password' when calling AuthApi->PostAuth");

            var localVarPath = "/auth";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new Dictionary<String, String>();
            var localVarHeaderParams = new Dictionary<String, String>(Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
                "application/x-www-form-urlencoded"
            };
            String localVarHttpContentType = Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
            };
            String localVarHttpHeaderAccept = Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (username != null) localVarFormParams.Add("username", Configuration.ApiClient.ParameterToString(username)); // form parameter
            if (password != null) localVarFormParams.Add("password", Configuration.ApiClient.ParameterToString(password)); // form parameter
            if (expires != null) localVarFormParams.Add("expires", Configuration.ApiClient.ParameterToString(expires)); // form parameter


            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.POST, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("PostAuth", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<string>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => x.Value.ToString()),
                (string) Configuration.ApiClient.Deserialize(localVarResponse, typeof(string)));
        }

    }
}
