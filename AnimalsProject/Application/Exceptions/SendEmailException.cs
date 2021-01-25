using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Application.Exceptions
{
    [Serializable]
    public class SendEmailException : ObjectException
    {
        public SendEmailException()
        {
        }

        public SendEmailException(string message)
            : base(message)
        {
        }

        public SendEmailException(string message, Exception inner)
            : base(message, inner)
        {
        }

        public SendEmailException(string message, string userIdentifier) : base(message, userIdentifier) { }
        

        public SendEmailException(string message, string userIdentifier, Exception inner) : base(message, userIdentifier, inner)
        {
        }

        protected SendEmailException(SerializationInfo info, StreamingContext context)
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
