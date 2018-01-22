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
import java.util.ArrayList;
import java.util.List;

/**
 * InlineResponse20016
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2018-01-20T08:47:04.787-07:00")
public class InlineResponse20016 {
  @SerializedName("choices")
  private List<SurveyQuestionChoice> choices = null;

  public InlineResponse20016 choices(List<SurveyQuestionChoice> choices) {
    this.choices = choices;
    return this;
  }

  public InlineResponse20016 addChoicesItem(SurveyQuestionChoice choicesItem) {
    if (this.choices == null) {
      this.choices = new ArrayList<SurveyQuestionChoice>();
    }
    this.choices.add(choicesItem);
    return this;
  }

   /**
   * Get choices
   * @return choices
  **/
  @ApiModelProperty(value = "")
  public List<SurveyQuestionChoice> getChoices() {
    return choices;
  }

  public void setChoices(List<SurveyQuestionChoice> choices) {
    this.choices = choices;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20016 inlineResponse20016 = (InlineResponse20016) o;
    return Objects.equals(this.choices, inlineResponse20016.choices);
  }

  @Override
  public int hashCode() {
    return Objects.hash(choices);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20016 {\n");
    
    sb.append("    choices: ").append(toIndentedString(choices)).append("\n");
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
