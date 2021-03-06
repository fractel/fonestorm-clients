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
 * Service type related properties.
 */
@ApiModel(description = "Service type related properties.")
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2018-01-22T07:46:07.451-07:00")
public class FoneNumberService {
  @SerializedName("type")
  private String type = null;

  @SerializedName("id")
  private String id = null;

  public FoneNumberService type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Delivery service type used for fonenumber.
   * @return type
  **/
  @ApiModelProperty(value = "Delivery service type used for fonenumber.")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public FoneNumberService id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Delivery service id used for fonenumber.
   * @return id
  **/
  @ApiModelProperty(value = "Delivery service id used for fonenumber.")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FoneNumberService foneNumberService = (FoneNumberService) o;
    return Objects.equals(this.type, foneNumberService.type) &&
        Objects.equals(this.id, foneNumberService.id);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, id);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FoneNumberService {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
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

