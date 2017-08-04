/*
 * FracTEL API 2.1.1
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 2.1.1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.api;

import io.swagger.client.ApiCallback;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.ApiResponse;
import io.swagger.client.Configuration;
import io.swagger.client.Pair;
import io.swagger.client.ProgressRequestBody;
import io.swagger.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;



import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MessagesApi {
    private ApiClient apiClient;

    public MessagesApi() {
        this(Configuration.getDefaultApiClient());
    }

    public MessagesApi(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return apiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    /**
     * Build call for postMessagesReceive
     * @param fonenumber Your FracTEL phone number. (required)
     * @param type Message routing type. (required)
     * @param value Message routing type value. (optional)
     * @param urlMethod URL method when type is URL. (optional)
     * @param urlUsername Optional URL username when type is URL. (optional)
     * @param urlPassword Optional URL password when type is URL. (optional)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call postMessagesReceiveCall(String fonenumber, String type, String value, String urlMethod, String urlUsername, String urlPassword, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/messages/receive";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        if (fonenumber != null)
        localVarFormParams.put("fonenumber", fonenumber);
        if (type != null)
        localVarFormParams.put("type", type);
        if (value != null)
        localVarFormParams.put("value", value);
        if (urlMethod != null)
        localVarFormParams.put("url_method", urlMethod);
        if (urlUsername != null)
        localVarFormParams.put("url_username", urlUsername);
        if (urlPassword != null)
        localVarFormParams.put("url_password", urlPassword);

        final String[] localVarAccepts = {
            
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/x-www-form-urlencoded"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] {  };
        return apiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call postMessagesReceiveValidateBeforeCall(String fonenumber, String type, String value, String urlMethod, String urlUsername, String urlPassword, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        // verify the required parameter 'fonenumber' is set
        if (fonenumber == null) {
            throw new ApiException("Missing the required parameter 'fonenumber' when calling postMessagesReceive(Async)");
        }
        
        // verify the required parameter 'type' is set
        if (type == null) {
            throw new ApiException("Missing the required parameter 'type' when calling postMessagesReceive(Async)");
        }
        
        
        com.squareup.okhttp.Call call = postMessagesReceiveCall(fonenumber, type, value, urlMethod, urlUsername, urlPassword, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Configure the delivery service type used as the destination for received messages.
     * Returns a JSON response
     * @param fonenumber Your FracTEL phone number. (required)
     * @param type Message routing type. (required)
     * @param value Message routing type value. (optional)
     * @param urlMethod URL method when type is URL. (optional)
     * @param urlUsername Optional URL username when type is URL. (optional)
     * @param urlPassword Optional URL password when type is URL. (optional)
     * @return String
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public String postMessagesReceive(String fonenumber, String type, String value, String urlMethod, String urlUsername, String urlPassword) throws ApiException {
        ApiResponse<String> resp = postMessagesReceiveWithHttpInfo(fonenumber, type, value, urlMethod, urlUsername, urlPassword);
        return resp.getData();
    }

    /**
     * Configure the delivery service type used as the destination for received messages.
     * Returns a JSON response
     * @param fonenumber Your FracTEL phone number. (required)
     * @param type Message routing type. (required)
     * @param value Message routing type value. (optional)
     * @param urlMethod URL method when type is URL. (optional)
     * @param urlUsername Optional URL username when type is URL. (optional)
     * @param urlPassword Optional URL password when type is URL. (optional)
     * @return ApiResponse&lt;String&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<String> postMessagesReceiveWithHttpInfo(String fonenumber, String type, String value, String urlMethod, String urlUsername, String urlPassword) throws ApiException {
        com.squareup.okhttp.Call call = postMessagesReceiveValidateBeforeCall(fonenumber, type, value, urlMethod, urlUsername, urlPassword, null, null);
        Type localVarReturnType = new TypeToken<String>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Configure the delivery service type used as the destination for received messages. (asynchronously)
     * Returns a JSON response
     * @param fonenumber Your FracTEL phone number. (required)
     * @param type Message routing type. (required)
     * @param value Message routing type value. (optional)
     * @param urlMethod URL method when type is URL. (optional)
     * @param urlUsername Optional URL username when type is URL. (optional)
     * @param urlPassword Optional URL password when type is URL. (optional)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call postMessagesReceiveAsync(String fonenumber, String type, String value, String urlMethod, String urlUsername, String urlPassword, final ApiCallback<String> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = postMessagesReceiveValidateBeforeCall(fonenumber, type, value, urlMethod, urlUsername, urlPassword, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<String>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for postMessagesReceiveNotify
     * @param fonenumber Your FracTEL phone number. (required)
     * @param method Callback URL method. (required)
     * @param url Callback URL. (required)
     * @param urlUsername Callback URL username. (optional)
     * @param urlPassword Callback URL password. (optional)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call postMessagesReceiveNotifyCall(String fonenumber, String method, String url, String urlUsername, String urlPassword, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/messages/receive_notify";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        if (fonenumber != null)
        localVarFormParams.put("fonenumber", fonenumber);
        if (method != null)
        localVarFormParams.put("method", method);
        if (url != null)
        localVarFormParams.put("url", url);
        if (urlUsername != null)
        localVarFormParams.put("url_username", urlUsername);
        if (urlPassword != null)
        localVarFormParams.put("url_password", urlPassword);

        final String[] localVarAccepts = {
            
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/x-www-form-urlencoded"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] {  };
        return apiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call postMessagesReceiveNotifyValidateBeforeCall(String fonenumber, String method, String url, String urlUsername, String urlPassword, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        // verify the required parameter 'fonenumber' is set
        if (fonenumber == null) {
            throw new ApiException("Missing the required parameter 'fonenumber' when calling postMessagesReceiveNotify(Async)");
        }
        
        // verify the required parameter 'method' is set
        if (method == null) {
            throw new ApiException("Missing the required parameter 'method' when calling postMessagesReceiveNotify(Async)");
        }
        
        // verify the required parameter 'url' is set
        if (url == null) {
            throw new ApiException("Missing the required parameter 'url' when calling postMessagesReceiveNotify(Async)");
        }
        
        
        com.squareup.okhttp.Call call = postMessagesReceiveNotifyCall(fonenumber, method, url, urlUsername, urlPassword, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Configure the callback URL to notify when a message is received.
     * Returns a JSON response
     * @param fonenumber Your FracTEL phone number. (required)
     * @param method Callback URL method. (required)
     * @param url Callback URL. (required)
     * @param urlUsername Callback URL username. (optional)
     * @param urlPassword Callback URL password. (optional)
     * @return String
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public String postMessagesReceiveNotify(String fonenumber, String method, String url, String urlUsername, String urlPassword) throws ApiException {
        ApiResponse<String> resp = postMessagesReceiveNotifyWithHttpInfo(fonenumber, method, url, urlUsername, urlPassword);
        return resp.getData();
    }

    /**
     * Configure the callback URL to notify when a message is received.
     * Returns a JSON response
     * @param fonenumber Your FracTEL phone number. (required)
     * @param method Callback URL method. (required)
     * @param url Callback URL. (required)
     * @param urlUsername Callback URL username. (optional)
     * @param urlPassword Callback URL password. (optional)
     * @return ApiResponse&lt;String&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<String> postMessagesReceiveNotifyWithHttpInfo(String fonenumber, String method, String url, String urlUsername, String urlPassword) throws ApiException {
        com.squareup.okhttp.Call call = postMessagesReceiveNotifyValidateBeforeCall(fonenumber, method, url, urlUsername, urlPassword, null, null);
        Type localVarReturnType = new TypeToken<String>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Configure the callback URL to notify when a message is received. (asynchronously)
     * Returns a JSON response
     * @param fonenumber Your FracTEL phone number. (required)
     * @param method Callback URL method. (required)
     * @param url Callback URL. (required)
     * @param urlUsername Callback URL username. (optional)
     * @param urlPassword Callback URL password. (optional)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call postMessagesReceiveNotifyAsync(String fonenumber, String method, String url, String urlUsername, String urlPassword, final ApiCallback<String> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = postMessagesReceiveNotifyValidateBeforeCall(fonenumber, method, url, urlUsername, urlPassword, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<String>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for postMessagesSend
     * @param to The recipient&#39;s 10 digits phone number. (required)
     * @param fonenumber Your FracTEL phone number to use as from (required)
     * @param message Content of SMS (required)
     * @param mediaUrl URL for media for send via SMS (up to 10) (optional)
     * @param confirmationUrl Callback URL for confirmation (optional)
     * @param confirmationUrlUsername Callback URL username for confirmation (optional)
     * @param confirmationUrlPassword Callback URL password for confirmation (optional)
     * @param requireConfirmation Only send message if confirmation is available (optional)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call postMessagesSendCall(String to, String fonenumber, String message, List<String> mediaUrl, String confirmationUrl, String confirmationUrlUsername, String confirmationUrlPassword, Boolean requireConfirmation, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/messages/send";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        if (to != null)
        localVarFormParams.put("to", to);
        if (fonenumber != null)
        localVarFormParams.put("fonenumber", fonenumber);
        if (message != null)
        localVarFormParams.put("message", message);
        if (mediaUrl != null)
        localVarFormParams.put("media_url", mediaUrl);
        if (confirmationUrl != null)
        localVarFormParams.put("confirmation_url", confirmationUrl);
        if (confirmationUrlUsername != null)
        localVarFormParams.put("confirmation_url_username", confirmationUrlUsername);
        if (confirmationUrlPassword != null)
        localVarFormParams.put("confirmation_url_password", confirmationUrlPassword);
        if (requireConfirmation != null)
        localVarFormParams.put("require_confirmation", requireConfirmation);

        final String[] localVarAccepts = {
            
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/x-www-form-urlencoded"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] {  };
        return apiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call postMessagesSendValidateBeforeCall(String to, String fonenumber, String message, List<String> mediaUrl, String confirmationUrl, String confirmationUrlUsername, String confirmationUrlPassword, Boolean requireConfirmation, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        // verify the required parameter 'to' is set
        if (to == null) {
            throw new ApiException("Missing the required parameter 'to' when calling postMessagesSend(Async)");
        }
        
        // verify the required parameter 'fonenumber' is set
        if (fonenumber == null) {
            throw new ApiException("Missing the required parameter 'fonenumber' when calling postMessagesSend(Async)");
        }
        
        // verify the required parameter 'message' is set
        if (message == null) {
            throw new ApiException("Missing the required parameter 'message' when calling postMessagesSend(Async)");
        }
        
        
        com.squareup.okhttp.Call call = postMessagesSendCall(to, fonenumber, message, mediaUrl, confirmationUrl, confirmationUrlUsername, confirmationUrlPassword, requireConfirmation, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Send an SMS or MMS message to a recipient.
     * Returns a JSON response
     * @param to The recipient&#39;s 10 digits phone number. (required)
     * @param fonenumber Your FracTEL phone number to use as from (required)
     * @param message Content of SMS (required)
     * @param mediaUrl URL for media for send via SMS (up to 10) (optional)
     * @param confirmationUrl Callback URL for confirmation (optional)
     * @param confirmationUrlUsername Callback URL username for confirmation (optional)
     * @param confirmationUrlPassword Callback URL password for confirmation (optional)
     * @param requireConfirmation Only send message if confirmation is available (optional)
     * @return String
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public String postMessagesSend(String to, String fonenumber, String message, List<String> mediaUrl, String confirmationUrl, String confirmationUrlUsername, String confirmationUrlPassword, Boolean requireConfirmation) throws ApiException {
        ApiResponse<String> resp = postMessagesSendWithHttpInfo(to, fonenumber, message, mediaUrl, confirmationUrl, confirmationUrlUsername, confirmationUrlPassword, requireConfirmation);
        return resp.getData();
    }

    /**
     * Send an SMS or MMS message to a recipient.
     * Returns a JSON response
     * @param to The recipient&#39;s 10 digits phone number. (required)
     * @param fonenumber Your FracTEL phone number to use as from (required)
     * @param message Content of SMS (required)
     * @param mediaUrl URL for media for send via SMS (up to 10) (optional)
     * @param confirmationUrl Callback URL for confirmation (optional)
     * @param confirmationUrlUsername Callback URL username for confirmation (optional)
     * @param confirmationUrlPassword Callback URL password for confirmation (optional)
     * @param requireConfirmation Only send message if confirmation is available (optional)
     * @return ApiResponse&lt;String&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<String> postMessagesSendWithHttpInfo(String to, String fonenumber, String message, List<String> mediaUrl, String confirmationUrl, String confirmationUrlUsername, String confirmationUrlPassword, Boolean requireConfirmation) throws ApiException {
        com.squareup.okhttp.Call call = postMessagesSendValidateBeforeCall(to, fonenumber, message, mediaUrl, confirmationUrl, confirmationUrlUsername, confirmationUrlPassword, requireConfirmation, null, null);
        Type localVarReturnType = new TypeToken<String>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Send an SMS or MMS message to a recipient. (asynchronously)
     * Returns a JSON response
     * @param to The recipient&#39;s 10 digits phone number. (required)
     * @param fonenumber Your FracTEL phone number to use as from (required)
     * @param message Content of SMS (required)
     * @param mediaUrl URL for media for send via SMS (up to 10) (optional)
     * @param confirmationUrl Callback URL for confirmation (optional)
     * @param confirmationUrlUsername Callback URL username for confirmation (optional)
     * @param confirmationUrlPassword Callback URL password for confirmation (optional)
     * @param requireConfirmation Only send message if confirmation is available (optional)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call postMessagesSendAsync(String to, String fonenumber, String message, List<String> mediaUrl, String confirmationUrl, String confirmationUrlUsername, String confirmationUrlPassword, Boolean requireConfirmation, final ApiCallback<String> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = postMessagesSendValidateBeforeCall(to, fonenumber, message, mediaUrl, confirmationUrl, confirmationUrlUsername, confirmationUrlPassword, requireConfirmation, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<String>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for postMessagesSendNotify
     * @param fonenumber Your FracTEL phone number (required)
     * @param method Callback URL method. (required)
     * @param url Callback URL. (required)
     * @param urlUsername Callback URL username. (optional)
     * @param urlPassword Callback URL password. (optional)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call postMessagesSendNotifyCall(String fonenumber, String method, String url, String urlUsername, String urlPassword, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/messages/send_notify";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();
        if (fonenumber != null)
        localVarFormParams.put("fonenumber", fonenumber);
        if (method != null)
        localVarFormParams.put("method", method);
        if (url != null)
        localVarFormParams.put("url", url);
        if (urlUsername != null)
        localVarFormParams.put("url_username", urlUsername);
        if (urlPassword != null)
        localVarFormParams.put("url_password", urlPassword);

        final String[] localVarAccepts = {
            
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/x-www-form-urlencoded"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] {  };
        return apiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call postMessagesSendNotifyValidateBeforeCall(String fonenumber, String method, String url, String urlUsername, String urlPassword, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        // verify the required parameter 'fonenumber' is set
        if (fonenumber == null) {
            throw new ApiException("Missing the required parameter 'fonenumber' when calling postMessagesSendNotify(Async)");
        }
        
        // verify the required parameter 'method' is set
        if (method == null) {
            throw new ApiException("Missing the required parameter 'method' when calling postMessagesSendNotify(Async)");
        }
        
        // verify the required parameter 'url' is set
        if (url == null) {
            throw new ApiException("Missing the required parameter 'url' when calling postMessagesSendNotify(Async)");
        }
        
        
        com.squareup.okhttp.Call call = postMessagesSendNotifyCall(fonenumber, method, url, urlUsername, urlPassword, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Configure the callback URL to notify when a message is sent.
     * Returns a JSON response
     * @param fonenumber Your FracTEL phone number (required)
     * @param method Callback URL method. (required)
     * @param url Callback URL. (required)
     * @param urlUsername Callback URL username. (optional)
     * @param urlPassword Callback URL password. (optional)
     * @return String
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public String postMessagesSendNotify(String fonenumber, String method, String url, String urlUsername, String urlPassword) throws ApiException {
        ApiResponse<String> resp = postMessagesSendNotifyWithHttpInfo(fonenumber, method, url, urlUsername, urlPassword);
        return resp.getData();
    }

    /**
     * Configure the callback URL to notify when a message is sent.
     * Returns a JSON response
     * @param fonenumber Your FracTEL phone number (required)
     * @param method Callback URL method. (required)
     * @param url Callback URL. (required)
     * @param urlUsername Callback URL username. (optional)
     * @param urlPassword Callback URL password. (optional)
     * @return ApiResponse&lt;String&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<String> postMessagesSendNotifyWithHttpInfo(String fonenumber, String method, String url, String urlUsername, String urlPassword) throws ApiException {
        com.squareup.okhttp.Call call = postMessagesSendNotifyValidateBeforeCall(fonenumber, method, url, urlUsername, urlPassword, null, null);
        Type localVarReturnType = new TypeToken<String>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Configure the callback URL to notify when a message is sent. (asynchronously)
     * Returns a JSON response
     * @param fonenumber Your FracTEL phone number (required)
     * @param method Callback URL method. (required)
     * @param url Callback URL. (required)
     * @param urlUsername Callback URL username. (optional)
     * @param urlPassword Callback URL password. (optional)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call postMessagesSendNotifyAsync(String fonenumber, String method, String url, String urlUsername, String urlPassword, final ApiCallback<String> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = postMessagesSendNotifyValidateBeforeCall(fonenumber, method, url, urlUsername, urlPassword, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<String>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
}
