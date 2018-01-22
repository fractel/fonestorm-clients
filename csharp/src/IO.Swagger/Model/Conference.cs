/* 
 * FoneStorm API 2.4.0 (Thunder)
 *
 * FracTEL's Middleware API
 *
 * OpenAPI spec version: 2.4.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Swagger.Client.SwaggerDateConverter;

namespace IO.Swagger.Model
{
    /// <summary>
    /// Conference
    /// </summary>
    [DataContract]
    public partial class Conference :  IEquatable<Conference>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Conference" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected Conference() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="Conference" /> class.
        /// </summary>
        /// <param name="Id">Unique identifier of conference. (required).</param>
        /// <param name="EndTime">End time and date of conference..</param>
        /// <param name="Label">Label for conference..</param>
        /// <param name="StartTime">Start time and date of conference..</param>
        /// <param name="BeforeMessage">Message to play before conference start time..</param>
        /// <param name="AfterMessage">Message to play after conference end time..</param>
        /// <param name="MaxMembers">Maximum number of allowed conference attendees..</param>
        public Conference(string Id = default(string), string EndTime = default(string), string Label = default(string), string StartTime = default(string), string BeforeMessage = default(string), string AfterMessage = default(string), decimal? MaxMembers = default(decimal?))
        {
            // to ensure "Id" is required (not null)
            if (Id == null)
            {
                throw new InvalidDataException("Id is a required property for Conference and cannot be null");
            }
            else
            {
                this.Id = Id;
            }
            this.EndTime = EndTime;
            this.Label = Label;
            this.StartTime = StartTime;
            this.BeforeMessage = BeforeMessage;
            this.AfterMessage = AfterMessage;
            this.MaxMembers = MaxMembers;
        }
        
        /// <summary>
        /// Unique identifier of conference.
        /// </summary>
        /// <value>Unique identifier of conference.</value>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public string Id { get; set; }

        /// <summary>
        /// End time and date of conference.
        /// </summary>
        /// <value>End time and date of conference.</value>
        [DataMember(Name="end_time", EmitDefaultValue=false)]
        public string EndTime { get; set; }

        /// <summary>
        /// Label for conference.
        /// </summary>
        /// <value>Label for conference.</value>
        [DataMember(Name="label", EmitDefaultValue=false)]
        public string Label { get; set; }

        /// <summary>
        /// Start time and date of conference.
        /// </summary>
        /// <value>Start time and date of conference.</value>
        [DataMember(Name="start_time", EmitDefaultValue=false)]
        public string StartTime { get; set; }

        /// <summary>
        /// Message to play before conference start time.
        /// </summary>
        /// <value>Message to play before conference start time.</value>
        [DataMember(Name="before_message", EmitDefaultValue=false)]
        public string BeforeMessage { get; set; }

        /// <summary>
        /// Message to play after conference end time.
        /// </summary>
        /// <value>Message to play after conference end time.</value>
        [DataMember(Name="after_message", EmitDefaultValue=false)]
        public string AfterMessage { get; set; }

        /// <summary>
        /// Maximum number of allowed conference attendees.
        /// </summary>
        /// <value>Maximum number of allowed conference attendees.</value>
        [DataMember(Name="max_members", EmitDefaultValue=false)]
        public decimal? MaxMembers { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class Conference {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  EndTime: ").Append(EndTime).Append("\n");
            sb.Append("  Label: ").Append(Label).Append("\n");
            sb.Append("  StartTime: ").Append(StartTime).Append("\n");
            sb.Append("  BeforeMessage: ").Append(BeforeMessage).Append("\n");
            sb.Append("  AfterMessage: ").Append(AfterMessage).Append("\n");
            sb.Append("  MaxMembers: ").Append(MaxMembers).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="obj">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object obj)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            return this.Equals(obj as Conference);
        }

        /// <summary>
        /// Returns true if Conference instances are equal
        /// </summary>
        /// <param name="other">Instance of Conference to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Conference other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Id == other.Id ||
                    this.Id != null &&
                    this.Id.Equals(other.Id)
                ) && 
                (
                    this.EndTime == other.EndTime ||
                    this.EndTime != null &&
                    this.EndTime.Equals(other.EndTime)
                ) && 
                (
                    this.Label == other.Label ||
                    this.Label != null &&
                    this.Label.Equals(other.Label)
                ) && 
                (
                    this.StartTime == other.StartTime ||
                    this.StartTime != null &&
                    this.StartTime.Equals(other.StartTime)
                ) && 
                (
                    this.BeforeMessage == other.BeforeMessage ||
                    this.BeforeMessage != null &&
                    this.BeforeMessage.Equals(other.BeforeMessage)
                ) && 
                (
                    this.AfterMessage == other.AfterMessage ||
                    this.AfterMessage != null &&
                    this.AfterMessage.Equals(other.AfterMessage)
                ) && 
                (
                    this.MaxMembers == other.MaxMembers ||
                    this.MaxMembers != null &&
                    this.MaxMembers.Equals(other.MaxMembers)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            // credit: http://stackoverflow.com/a/263416/677735
            unchecked // Overflow is fine, just wrap
            {
                int hash = 41;
                // Suitable nullity checks etc, of course :)
                if (this.Id != null)
                    hash = hash * 59 + this.Id.GetHashCode();
                if (this.EndTime != null)
                    hash = hash * 59 + this.EndTime.GetHashCode();
                if (this.Label != null)
                    hash = hash * 59 + this.Label.GetHashCode();
                if (this.StartTime != null)
                    hash = hash * 59 + this.StartTime.GetHashCode();
                if (this.BeforeMessage != null)
                    hash = hash * 59 + this.BeforeMessage.GetHashCode();
                if (this.AfterMessage != null)
                    hash = hash * 59 + this.AfterMessage.GetHashCode();
                if (this.MaxMembers != null)
                    hash = hash * 59 + this.MaxMembers.GetHashCode();
                return hash;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}