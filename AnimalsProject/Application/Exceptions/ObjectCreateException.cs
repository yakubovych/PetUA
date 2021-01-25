using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Application.Exceptions
{
    [Serializable]
    public class ObjectCreateException : ObjectException
    {
        public ObjectCreateException()
        {
        }

        public ObjectCreateException(string message)
            : base(message)
        {
        }

        public ObjectCreateException(string message, Exception inner)
            : base(message, inner)
        {
        }

        public ObjectCreateException(string message, string objectIdentifier) : base(message, objectIdentifier)
        {
        }

        public ObjectCreateException(string message, string objectIdentifier, Exception inner) : base(message, objectIdentifier, inner)
        {
        }

        protected ObjectCreateException(SerializationInfo info, StreamingContext context)
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
