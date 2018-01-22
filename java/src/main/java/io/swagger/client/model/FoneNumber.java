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
import io.swagger.client.model.FoneNumberFaxOptions;
import io.swagger.client.model.FoneNumberService;
import io.swagger.client.model.FoneNumberSmsOptions;
import io.swagger.client.model.FoneNumberVoiceOptions;
import java.io.IOException;

/**
 * FoneNumber
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2018-01-22T07:46:07.451-07:00")
public class FoneNumber {
  @SerializedName("fonenumber")
  private String fonenumber = null;

  @SerializedName("state")
  private String state = null;

  @SerializedName("rate_center")
  private String rateCenter = null;

  @SerializedName("is_active")
  private String isActive = null;

  @SerializedName("service")
  private FoneNumberService service = null;

  @SerializedName("sms_options")
  private FoneNumberSmsOptions smsOptions = null;

  @SerializedName("voice_options")
  private FoneNumberVoiceOptions voiceOptions = null;

  @SerializedName("fax_options")
  private FoneNumberFaxOptions faxOptions = null;

  public FoneNumber fonenumber(String fonenumber) {
    this.fonenumber = fonenumber;
    return this;
  }

   /**
   * FoneNumber.
   * @return fonenumber
  **/
  @ApiModelProperty(required = true, value = "FoneNumber.")
  public String getFonenumber() {
    return fonenumber;
  }

  public void setFonenumber(String fonenumber) {
    this.fonenumber = fonenumber;
  }

  public FoneNumber state(String state) {
    this.state = state;
    return this;
  }

   /**
   * US State for fonenumber.
   * @return state
  **/
  @ApiModelProperty(value = "US State for fonenumber.")
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public FoneNumber rateCenter(String rateCenter) {
    this.rateCenter = rateCenter;
    return this;
  }

   /**
   * Rate center for fonenumber.
   * @return rateCenter
  **/
  @ApiModelProperty(value = "Rate center for fonenumber.")
  public String getRateCenter() {
    return rateCenter;
  }

  public void setRateCenter(String rateCenter) {
    this.rateCenter = rateCenter;
  }

  public FoneNumber isActive(String isActive) {
    this.isActive = isActive;
    return this;
  }

   /**
   * Status of FoneNumber.
   * @return isActive
  **/
  @ApiModelProperty(value = "Status of FoneNumber.")
  public String getIsActive() {
    return isActive;
  }

  public void setIsActive(String isActive) {
    this.isActive = isActive;
  }

  public FoneNumber service(FoneNumberService service) {
    this.service = service;
    return this;
  }

   /**
   * Get service
   * @return service
  **/
  @ApiModelProperty(value = "")
  public FoneNumberService getService() {
    return service;
  }

  public void setService(FoneNumberService service) {
    this.service = service;
  }

  public FoneNumber smsOptions(FoneNumberSmsOptions smsOptions) {
    this.smsOptions = smsOptions;
    return this;
  }

   /**
   * Get smsOptions
   * @return smsOptions
  **/
  @ApiModelProperty(value = "")
  public FoneNumberSmsOptions getSmsOptions() {
    return smsOptions;
  }

  public void setSmsOptions(FoneNumberSmsOptions smsOptions) {
    this.smsOptions = smsOptions;
  }

  public FoneNumber voiceOptions(FoneNumberVoiceOptions voiceOptions) {
    this.voiceOptions = voiceOptions;
    return this;
  }

   /**
   * Get voiceOptions
   * @return voiceOptions
  **/
  @ApiModelProperty(value = "")
  public FoneNumberVoiceOptions getVoiceOptions() {
    return voiceOptions;
  }

  public void setVoiceOptions(FoneNumberVoiceOptions voiceOptions) {
    this.voiceOptions = voiceOptions;
  }

  public FoneNumber faxOptions(FoneNumberFaxOptions faxOptions) {
    this.faxOptions = faxOptions;
    return this;
  }

   /**
   * Get faxOptions
   * @return faxOptions
  **/
  @ApiModelProperty(value = "")
  public FoneNumberFaxOptions getFaxOptions() {
    return faxOptions;
  }

  public void setFaxOptions(FoneNumberFaxOptions faxOptions) {
    this.faxOptions = faxOptions;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FoneNumber foneNumber = (FoneNumber) o;
    return Objects.equals(this.fonenumber, foneNumber.fonenumber) &&
        Objects.equals(this.state, foneNumber.state) &&
        Objects.equals(this.rateCenter, foneNumber.rateCenter) &&
        Objects.equals(this.isActive, foneNumber.isActive) &&
        Objects.equals(this.service, foneNumber.service) &&
        Objects.equals(this.smsOptions, foneNumber.smsOptions) &&
        Objects.equals(this.voiceOptions, foneNumber.voiceOptions) &&
        Objects.equals(this.faxOptions, foneNumber.faxOptions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(fonenumber, state, rateCenter, isActive, service, smsOptions, voiceOptions, faxOptions);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FoneNumber {\n");
    
    sb.append("    fonenumber: ").append(toIndentedString(fonenumber)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    rateCenter: ").append(toIndentedString(rateCenter)).append("\n");
    sb.append("    isActive: ").append(toIndentedString(isActive)).append("\n");
    sb.append("    service: ").append(toIndentedString(service)).append("\n");
    sb.append("    smsOptions: ").append(toIndentedString(smsOptions)).append("\n");
    sb.append("    voiceOptions: ").append(toIndentedString(voiceOptions)).append("\n");
    sb.append("    faxOptions: ").append(toIndentedString(faxOptions)).append("\n");
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

