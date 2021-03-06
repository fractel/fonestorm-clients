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
import io.swagger.client.model.FoneNumber;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * InlineResponse2009
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2018-01-20T08:47:04.787-07:00")
public class InlineResponse2009 {
  @SerializedName("fonenumbers")
  private List<FoneNumber> fonenumbers = null;

  public InlineResponse2009 fonenumbers(List<FoneNumber> fonenumbers) {
    this.fonenumbers = fonenumbers;
    return this;
  }

  public InlineResponse2009 addFonenumbersItem(FoneNumber fonenumbersItem) {
    if (this.fonenumbers == null) {
      this.fonenumbers = new ArrayList<FoneNumber>();
    }
    this.fonenumbers.add(fonenumbersItem);
    return this;
  }

   /**
   * Get fonenumbers
   * @return fonenumbers
  **/
  @ApiModelProperty(value = "")
  public List<FoneNumber> getFonenumbers() {
    return fonenumbers;
  }

  public void setFonenumbers(List<FoneNumber> fonenumbers) {
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
    InlineResponse2009 inlineResponse2009 = (InlineResponse2009) o;
    return Objects.equals(this.fonenumbers, inlineResponse2009.fonenumbers);
  }

  @Override
  public int hashCode() {
    return Objects.hash(fonenumbers);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2009 {\n");
    
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

