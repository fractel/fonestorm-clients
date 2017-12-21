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
import java.util.ArrayList;
import java.util.List;

/**
 * SurveyQuestionChoice
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2017-12-20T17:03:53.264-07:00")
public class SurveyQuestionChoice {
  @SerializedName("id")
  private String id = null;

  @SerializedName("created_at")
  private String createdAt = null;

  @SerializedName("label")
  private String label = null;

  @SerializedName("question_id")
  private String questionId = null;

  @SerializedName("responses")
  private  responses = null;

  @SerializedName("type")
  private String type = null;

  @SerializedName("updated_at")
  private String updatedAt = null;

  public SurveyQuestionChoice id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Identifier of survey question choice.
   * @return id
  **/
  @ApiModelProperty(required = true, value = "Identifier of survey question choice.")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public SurveyQuestionChoice createdAt(String createdAt) {
    this.createdAt = createdAt;
    return this;
  }

   /**
   * Date and time of creation.
   * @return createdAt
  **/
  @ApiModelProperty(value = "Date and time of creation.")
  public String getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(String createdAt) {
    this.createdAt = createdAt;
  }

  public SurveyQuestionChoice label(String label) {
    this.label = label;
    return this;
  }

   /**
   * Question label for field.
   * @return label
  **/
  @ApiModelProperty(value = "Question label for field.")
  public String getLabel() {
    return label;
  }

  public void setLabel(String label) {
    this.label = label;
  }

  public SurveyQuestionChoice questionId(String questionId) {
    this.questionId = questionId;
    return this;
  }

   /**
   * Identifier of associated question.
   * @return questionId
  **/
  @ApiModelProperty(value = "Identifier of associated question.")
  public String getQuestionId() {
    return questionId;
  }

  public void setQuestionId(String questionId) {
    this.questionId = questionId;
  }

  public SurveyQuestionChoice responses( responses) {
    this.responses = responses;
    return this;
  }

  public SurveyQuestionChoice addResponsesItem( responsesItem) {
    if (this.responses == null) {
      this.responses = ;
    }
    this.responses.add(responsesItem);
    return this;
  }

   /**
   * Array of Survey Response objects.
   * @return responses
  **/
  @ApiModelProperty(value = "Array of Survey Response objects.")
  public  getResponses() {
    return responses;
  }

  public void setResponses( responses) {
    this.responses = responses;
  }

  public SurveyQuestionChoice type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Question field type.
   * @return type
  **/
  @ApiModelProperty(value = "Question field type.")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public SurveyQuestionChoice updatedAt(String updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }

   /**
   * Date and time of last update.
   * @return updatedAt
  **/
  @ApiModelProperty(value = "Date and time of last update.")
  public String getUpdatedAt() {
    return updatedAt;
  }

  public void setUpdatedAt(String updatedAt) {
    this.updatedAt = updatedAt;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SurveyQuestionChoice surveyQuestionChoice = (SurveyQuestionChoice) o;
    return Objects.equals(this.id, surveyQuestionChoice.id) &&
        Objects.equals(this.createdAt, surveyQuestionChoice.createdAt) &&
        Objects.equals(this.label, surveyQuestionChoice.label) &&
        Objects.equals(this.questionId, surveyQuestionChoice.questionId) &&
        Objects.equals(this.responses, surveyQuestionChoice.responses) &&
        Objects.equals(this.type, surveyQuestionChoice.type) &&
        Objects.equals(this.updatedAt, surveyQuestionChoice.updatedAt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, createdAt, label, questionId, responses, type, updatedAt);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SurveyQuestionChoice {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    createdAt: ").append(toIndentedString(createdAt)).append("\n");
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    questionId: ").append(toIndentedString(questionId)).append("\n");
    sb.append("    responses: ").append(toIndentedString(responses)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    updatedAt: ").append(toIndentedString(updatedAt)).append("\n");
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

