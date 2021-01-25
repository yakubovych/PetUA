using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Application.Exceptions
{
    [Serializable]
    public class RegisterException : ObjectException
    {
        public RegisterException()
        {
        }

        public RegisterException(string message)
            : base(message)
        {
        }

        public RegisterException(string message, string objectIdentifier)
            : base(message, objectIdentifier)
        {
        }

        public RegisterException(string message, string objectIdentifier, Exception inner)
            : base(message, objectIdentifier, inner)
        {
        }

        public RegisterException(string message, Exception inner)
            : base(message, inner)
        {
        }

        protected RegisterException(SerializationInfo info, StreamingContext context)
           : base(info, context)
        {
        }

        [SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
        public override void GetObjectData(SerializationInfo info, StreamingContext context)
        {
            if (info == null)
            {
                throw new ArgumentNullException("info");
            }

            base.GetObjectData(info, context);
        }
    }
}
