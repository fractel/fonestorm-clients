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
import java.util.ArrayList;
import java.util.List;

/**
 * InlineResponse20015
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2018-01-20T08:47:04.787-07:00")
public class InlineResponse20015 {
  @SerializedName("fonenumbers")
  private List<String> fonenumbers = null;

  public InlineResponse20015 fonenumbers(List<String> fonenumbers) {
    this.fonenumbers = fonenumbers;
    return this;
  }

  public InlineResponse20015 addFonenumbersItem(String fonenumbersItem) {
    if (this.fonenumbers == null) {
      this.fonenumbers = new ArrayList<String>();
    }
    this.fonenumbers.add(fonenumbersItem);
    return this;
  }

   /**
   * Get fonenumbers
   * @return fonenumbers
  **/
  @ApiModelProperty(value = "")
  public List<String> getFonenumbers() {
    return fonenumbers;
  }

  public void setFonenumbers(List<String> fonenumbers) {
    this.fonenumbers = fonenumbers;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20015 inlineResponse20015 = (InlineResponse20015) o;
    return Objects.equals(this.fonenumbers, inlineResponse20015.fonenumbers);
  }

  @Override
  public int hashCode() {
    return Objects.hash(fonenumbers);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20015 {\n");
    
    sb.append("    fonenumbers: ").append(toIndentedString(fonenumbers)).append("\n");
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

