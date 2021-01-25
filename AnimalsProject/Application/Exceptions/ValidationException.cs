using Application.Common.Constants;
using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Application.Exceptions
{
    [Serializable]
    public class ValidationException : ObjectException
    {
        public string Value { get; private set; } = "Value: ";

        public ValidationException()
        {
        }

        public ValidationException(string message)
            : base(message)
        {
        }

        public ValidationException(string message, string objectIdentifier)
            : base(message, objectIdentifier)
        {
        }
        
        public ValidationException(string message, string objectIdentifier, string value)
            : base(message, objectIdentifier)
        {
            Value += value;
        }

        public ValidationException(string message, string objectIdentifier, string value, Exception inner)
            : base(message, objectIdentifier, inner)
        {
            Value += value;
        }

        public ValidationException(string message, string objectIdentifier, Exception inner)
            : base(message, objectIdentifier, inner)
        {
        }

        public ValidationException(string message, Exception inner)
            : base(message, inner)
        {
        }

        protected ValidationException(SerializationInfo info, StreamingContext context)
           : base(info, context)
        {
            Value = info.GetString("Value");
        }

        [SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
        public override void GetObjectData(SerializationInfo info, StreamingContext context)
        {
            if (info == null)
            {
                throw new ArgumentNullException("info");
            }

            info.AddValue("Value", Value);

            base.GetObjectData(info, context);
        }

        public override string ToString()
        {
            var objectIdentifier = ObjectIdentifier.Length > StandardMessageLengthConstants.IDENTIFIER ? ObjectIdentifier + ". " : "";
            var value = Value.Length > StandardMessageLengthConstants.VALUE ? Value + ". ": "";

            return Message + objectIdentifier + value;
        }
    }
}
