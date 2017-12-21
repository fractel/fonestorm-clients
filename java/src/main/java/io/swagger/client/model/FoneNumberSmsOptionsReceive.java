/*
 * FoneStorm API 2.2.0 (Breeze)
 * FracTEL's Middleware API
 *
 * OpenAPI spec version: 2.2.0
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
 * Delivery service type used as the destination to receive messages.
 */
@ApiModel(description = "Delivery service type used as the destination to receive messages.")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2017-12-20T17:25:02.886-07:00")
public class FoneNumberSmsOptionsReceive {
  @SerializedName("type")
  private String type = null;

  @SerializedName("email")
  private String email = null;

  @SerializedName("device")
  private String device = null;

  @SerializedName("forward")
  private String forward = null;

  @SerializedName("url")
  private String url = null;

  @SerializedName("url_method")
  private String urlMethod = null;

  public FoneNumberSmsOptionsReceive type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Configured service type.
   * @return type
  **/
  @ApiModelProperty(value = "Configured service type.")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public FoneNumberSmsOptionsReceive email(String email) {
    this.email = email;
    return this;
  }

   /**
   * Email address if configured for email.
   * @return email
  **/
  @ApiModelProperty(value = "Email address if configured for email.")
  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public FoneNumberSmsOptionsReceive device(String device) {
    this.device = device;
    return this;
  }

   /**
   * FracTEL device if configured for device.
   * @return device
  **/
  @ApiModelProperty(value = "FracTEL device if configured for device.")
  public String getDevice() {
    return device;
  }

  public void setDevice(String device) {
    this.device = device;
  }

  public FoneNumberSmsOptionsReceive forward(String forward) {
    this.forward = forward;
    return this;
  }

   /**
   * Telephone number if configured for forward.
   * @return forward
  **/
  @ApiModelProperty(value = "Telephone number if configured for forward.")
  public String getForward() {
    return forward;
  }

  public void setForward(String forward) {
    this.forward = forward;
  }

  public FoneNumberSmsOptionsReceive url(String url) {
    this.url = url;
    return this;
  }

   /**
   * HTTP URL if configured for URL.
   * @return url
  **/
  @ApiModelProperty(value = "HTTP URL if configured for URL.")
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public FoneNumberSmsOptionsReceive urlMethod(String urlMethod) {
    this.urlMethod = urlMethod;
    return this;
  }

   /**
   * HTTP URL method if configured for URL.
   * @return urlMethod
  **/
  @ApiModelProperty(value = "HTTP URL method if configured for URL.")
  public String getUrlMethod() {
    return urlMethod;
  }

  public void setUrlMethod(String urlMethod) {
    this.urlMethod = urlMethod;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FoneNumberSmsOptionsReceive foneNumberSmsOptionsReceive = (FoneNumberSmsOptionsReceive) o;
    return Objects.equals(this.type, foneNumberSmsOptionsReceive.type) &&
        Objects.equals(this.email, foneNumberSmsOptionsReceive.email) &&
        Objects.equals(this.device, foneNumberSmsOptionsReceive.device) &&
        Objects.equals(this.forward, foneNumberSmsOptionsReceive.forward) &&
        Objects.equals(this.url, foneNumberSmsOptionsReceive.url) &&
        Objects.equals(this.urlMethod, foneNumberSmsOptionsReceive.urlMethod);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, email, device, forward, url, urlMethod);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FoneNumberSmsOptionsReceive {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    device: ").append(toIndentedString(device)).append("\n");
    sb.append("    forward: ").append(toIndentedString(forward)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    urlMethod: ").append(toIndentedString(urlMethod)).append("\n");
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

