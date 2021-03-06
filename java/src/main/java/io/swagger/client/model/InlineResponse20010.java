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
import io.swagger.client.model.Integration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * InlineResponse20010
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2018-01-20T08:47:04.787-07:00")
public class InlineResponse20010 {
  @SerializedName("integrations")
  private List<Integration> integrations = null;

  public InlineResponse20010 integrations(List<Integration> integrations) {
    this.integrations = integrations;
    return this;
  }

  public InlineResponse20010 addIntegrationsItem(Integration integrationsItem) {
    if (this.integrations == null) {
      this.integrations = new ArrayList<Integration>();
    }
    this.integrations.add(integrationsItem);
    return this;
  }

   /**
   * Get integrations
   * @return integrations
  **/
  @ApiModelProperty(value = "")
  public List<Integration> getIntegrations() {
    return integrations;
  }

  public void setIntegrations(List<Integration> integrations) {
    this.integrations = integrations;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20010 inlineResponse20010 = (InlineResponse20010) o;
    return Objects.equals(this.integrations, inlineResponse20010.integrations);
  }

  @Override
  public int hashCode() {
    return Objects.hash(integrations);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20010 {\n");
    
    sb.append("    integrations: ").append(toIndentedString(integrations)).append("\n");
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

