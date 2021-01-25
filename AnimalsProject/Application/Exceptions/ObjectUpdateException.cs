using Application.Common.Constants;
using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Application.Exceptions
{
    [Serializable]
    public class ObjectUpdateException : ObjectException
    {
        public string UpdateValue { get; } = "Value that was tried to set: ";

        public ObjectUpdateException()
        {
        }

        public ObjectUpdateException(string message)
            : base(message)
        {
        }

        public ObjectUpdateException(string message, string objectIdentifier)
            : base(message, objectIdentifier)
        {
        }

        public ObjectUpdateException(string message, string objectIdentifier, string updateValue)
            : base(message, objectIdentifier)
        {
            UpdateValue += updateValue;
        }

        public ObjectUpdateException(string message, string objectIdentifier, Exception inner)
            : base(message, objectIdentifier, inner)
        {
        }

        public ObjectUpdateException(string message, string objectIdentifier, string updateValue, Exception inner)
            : base(message, objectIdentifier, inner)
        {
            UpdateValue += updateValue;
        }

        public ObjectUpdateException(string message, Exception inner)
            : base(message, inner)
        {
        }

        protected ObjectUpdateException(SerializationInfo info, StreamingContext context)
           : base(info, context)
        {
            UpdateValue = info.GetString("UpdateValue");
        }

        [SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
        public override void GetObjectData(SerializationInfo info, StreamingContext context)
        {
            if (info == null)
            {
                throw new ArgumentNullException("info");
            }

            info.AddValue("UpdateValue", UpdateValue);

            base.GetObjectData(info, context);
        }

        public override string ToString()
        {
            var objectIdentifier = ObjectIdentifier.Length > StandardMessageLengthConstants.IDENTIFIER ? ObjectIdentifier + ". " : "";
            var updateValue = UpdateValue.Length > StandardMessageLengthConstants.UPDATE_VALUE ? UpdateValue + ". " : "";

            return Message + objectIdentifier + updateValue;
        }
    }
}
