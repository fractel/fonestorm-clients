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
import io.swagger.client.model.SurveyQuestionChoice;
import java.io.IOException;

/**
 * InlineResponse20117
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2018-01-20T08:47:04.787-07:00")
public class InlineResponse20117 {
  @SerializedName("choice")
  private SurveyQuestionChoice choice = null;

  public InlineResponse20117 choice(SurveyQuestionChoice choice) {
    this.choice = choice;
    return this;
  }

   /**
   * Get choice
   * @return choice
  **/
  @ApiModelProperty(value = "")
  public SurveyQuestionChoice getChoice() {
    return choice;
  }

  public void setChoice(SurveyQuestionChoice choice) {
    this.choice = choice;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20117 inlineResponse20117 = (InlineResponse20117) o;
    return Objects.equals(this.choice, inlineResponse20117.choice);
  }

  @Override
  public int hashCode() {
    return Objects.hash(choice);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20117 {\n");
    
    sb.append("    choice: ").append(toIndentedString(choice)).append("\n");
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

