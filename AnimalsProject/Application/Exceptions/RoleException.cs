using Application.Common.Constants;
using System;
using System.Runtime.Serialization;
using System.Security.Permissions;

namespace Application.Exceptions
{
    [Serializable]
    public class RoleException: ObjectException
    {
        public string Role { get; } = "Role: ";

        public RoleException()
        {
        }

        public RoleException(string message)
            : base(message)
        {
        }

        public RoleException(string message, Exception inner)
            : base(message, inner)
        {
        }

        public RoleException(string message, string role, Exception inner) : base(message, inner)
        {
            Role += role;
        }
        
        public RoleException(string message, string role) : base(message)
        {
            Role += role;
        }

        public RoleException(string message, string userIdentifier, string role) : base(message, userIdentifier)
        {
            Role += role;
        }

        public RoleException(string message, string userIdentifier, string role, Exception inner) : base(message, userIdentifier, inner)
        {
            Role += role;
        }

        protected RoleException(SerializationInfo info, StreamingContext context)
           : base(info, context)
        {
            Role = info.GetString("Role");
        }

        [SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
        public override void GetObjectData(SerializationInfo info, StreamingContext context)
        {
            if (info == null)
            {
                throw new ArgumentNullException("info");
            }

            info.AddValue("Role", Role);

            base.GetObjectData(info, context);
        }

        public override string ToString()
        {
            var objectIdentifier = ObjectIdentifier.Length > StandardMessageLengthConstants.IDENTIFIER ? ObjectIdentifier + ". " : "";
            var role = Role.Length > StandardMessageLengthConstants.ROLE ? Role + ". " : "";

            return Message + objectIdentifier + role;
        }
    }
}
