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
import io.swagger.client.model.CallToAction;
import java.io.IOException;

/**
 * InlineResponse20114
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2018-01-20T08:47:04.787-07:00")
public class InlineResponse20114 {
  @SerializedName("cta")
  private CallToAction cta = null;

  public InlineResponse20114 cta(CallToAction cta) {
    this.cta = cta;
    return this;
  }

   /**
   * Get cta
   * @return cta
  **/
  @ApiModelProperty(value = "")
  public CallToAction getCta() {
    return cta;
  }

  public void setCta(CallToAction cta) {
    this.cta = cta;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20114 inlineResponse20114 = (InlineResponse20114) o;
    return Objects.equals(this.cta, inlineResponse20114.cta);
  }

  @Override
  public int hashCode() {
    return Objects.hash(cta);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20114 {\n");
    
    sb.append("    cta: ").append(toIndentedString(cta)).append("\n");
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

