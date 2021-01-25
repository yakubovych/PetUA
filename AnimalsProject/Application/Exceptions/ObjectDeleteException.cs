using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Application.Exceptions
{
    [Serializable]
    public class ObjectDeleteException : ObjectException
    {
        public ObjectDeleteException()
        {
        }

        public ObjectDeleteException(string message)
            : base(message)
        {
        }

        public ObjectDeleteException(string message, string objectIdentifier)
            : base(message, objectIdentifier)
        {
        }

        public ObjectDeleteException(string message, string objectIdentifier, Exception inner)
            : base(message, objectIdentifier, inner)
        {
        }

        public ObjectDeleteException(string message, Exception inner)
            : base(message, inner)
        {
        }

        protected ObjectDeleteException(SerializationInfo info, StreamingContext context)
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
