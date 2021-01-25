using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Application.Exceptions
{
    [Serializable]
    public class ObjectNotFoundException : ObjectException
    {
        public ObjectNotFoundException()
        {
        }

        public ObjectNotFoundException(string message)
            : base(message)
        {
        }

        public ObjectNotFoundException(string message, string objectIdentifier)
            : base(message, objectIdentifier)
        {
        }

        public ObjectNotFoundException(string message, string objectIdentifier, Exception inner)
            : base(message, objectIdentifier, inner)
        {
        }

        public ObjectNotFoundException(string message, Exception inner)
            : base(message, inner)
        {
        }

        protected ObjectNotFoundException(SerializationInfo info, StreamingContext context)
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
