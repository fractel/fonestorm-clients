/*
 * FoneStorm API 2.4.0 (Thunder)
 * FracTEL's Middleware API
 *
 * OpenAPI spec version: 2.4.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.model;

import java.util.Objects;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * Callback URL to notify when a call is made.
 */
@ApiModel(description = "Callback URL to notify when a call is made.")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2018-01-22T07:46:07.451-07:00")
public class FoneNumberVoiceOptionsSendNotify {
  @SerializedName("url")
  private String url = null;

  @SerializedName("method")
  private String method = null;

  public FoneNumberVoiceOptionsSendNotify url(String url) {
    this.url = url;
    return this;
  }

   /**
   * HTTP URL.
   * @return url
  **/
  @ApiModelProperty(value = "HTTP URL.")
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public FoneNumberVoiceOptionsSendNotify method(String method) {
    this.method = method;
    return this;
  }

   /**
   * HTTP URL method.
   * @return method
  **/
  @ApiModelProperty(value = "HTTP URL method.")
  public String getMethod() {
    return method;
  }

  public void setMethod(String method) {
    this.method = method;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FoneNumberVoiceOptionsSendNotify foneNumberVoiceOptionsSendNotify = (FoneNumberVoiceOptionsSendNotify) o;
    return Objects.equals(this.url, foneNumberVoiceOptionsSendNotify.url) &&
        Objects.equals(this.method, foneNumberVoiceOptionsSendNotify.method);
  }

  @Override
  public int hashCode() {
    return Objects.hash(url, method);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FoneNumberVoiceOptionsSendNotify {\n");
    
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    method: ").append(toIndentedString(method)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
  
}

