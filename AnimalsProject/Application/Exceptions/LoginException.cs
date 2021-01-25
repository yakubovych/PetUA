using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Application.Exceptions
{
    [Serializable]
    public class LoginException: ObjectException
    {
        public LoginException()
        {
        }

        public LoginException(string message)
            : base(message)
        {
        }

        public LoginException(string message, string objectIdentifier)
            : base(message, objectIdentifier)
        {
        }

        public LoginException(string message, string objectIdentifier, Exception inner)
            : base(message, objectIdentifier, inner)
        {
        }

        public LoginException(string message, Exception inner)
            : base(message, inner)
        {
        }

        protected LoginException(SerializationInfo info, StreamingContext context)
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
