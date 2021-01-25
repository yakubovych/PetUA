using System;

namespace Domain.Common
{
    public abstract class AnimalBase
    {
        public string CreatedBy { get; set; }

        public DateTime? Created { get; set; }

        public string LastModifiedBy { get; set; }

        public DateTime? LastModified { get; set; }
    }
}
