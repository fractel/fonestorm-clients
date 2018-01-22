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
    /// Callback URL to notify when a fax is received.
    /// </summary>
    [DataContract]
    public partial class FoneNumberFaxOptionsReceiveNotify :  IEquatable<FoneNumberFaxOptionsReceiveNotify>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="FoneNumberFaxOptionsReceiveNotify" /> class.
        /// </summary>
        /// <param name="Url">HTTP URL..</param>
        /// <param name="Method">HTTP URL method..</param>
        public FoneNumberFaxOptionsReceiveNotify(string Url = default(string), string Method = default(string))
        {
            this.Url = Url;
            this.Method = Method;
        }
        
        /// <summary>
        /// HTTP URL.
        /// </summary>
        /// <value>HTTP URL.</value>
        [DataMember(Name="url", EmitDefaultValue=false)]
        public string Url { get; set; }

        /// <summary>
        /// HTTP URL method.
        /// </summary>
        /// <value>HTTP URL method.</value>
        [DataMember(Name="method", EmitDefaultValue=false)]
        public string Method { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class FoneNumberFaxOptionsReceiveNotify {\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
            sb.Append("  Method: ").Append(Method).Append("\n");
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
            return this.Equals(obj as FoneNumberFaxOptionsReceiveNotify);
        }

        /// <summary>
        /// Returns true if FoneNumberFaxOptionsReceiveNotify instances are equal
        /// </summary>
        /// <param name="other">Instance of FoneNumberFaxOptionsReceiveNotify to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(FoneNumberFaxOptionsReceiveNotify other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Url == other.Url ||
                    this.Url != null &&
                    this.Url.Equals(other.Url)
                ) && 
                (
                    this.Method == other.Method ||
                    this.Method != null &&
                    this.Method.Equals(other.Method)
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
                if (this.Url != null)
                    hash = hash * 59 + this.Url.GetHashCode();
                if (this.Method != null)
                    hash = hash * 59 + this.Method.GetHashCode();
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
