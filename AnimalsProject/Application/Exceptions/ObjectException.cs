using Application.Common.Constants;
using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Application.Exceptions
{
    [Serializable]
    public class ObjectException : Exception
    {
        public string ObjectIdentifier { get; } = "Identifier: ";

        public ObjectException()
        {
        }

        public ObjectException(string message)
            : base(message)
        {
        }

        public ObjectException(string message, Exception inner)
            : base(message, inner)
        {
        }

        public ObjectException(string message, string objectIdentifier) : base(message)
        {
            ObjectIdentifier += objectIdentifier;
        }

        public ObjectException(string message, string objectIdentifier, Exception inner) : base(message, inner)
        {
            ObjectIdentifier += objectIdentifier;
        }

        protected ObjectException(SerializationInfo info, StreamingContext context)
           : base(info, context)
        {
            ObjectIdentifier = info.GetString("ObjectIdentifier");
        }

        [SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
        public override void GetObjectData(SerializationInfo info, StreamingContext context)
        {
            if (info == null)
            {
                throw new ArgumentNullException("info");
            }

            info.AddValue("ObjectIdentifier", ObjectIdentifier);

            base.GetObjectData(info, context);
        }

        public override string ToString()
        {
            var objectIdentifier = ObjectIdentifier.Length > StandardMessageLengthConstants.IDENTIFIER ? ObjectIdentifier + ". " : "";

            return Message + objectIdentifier;
        }
    }
}
