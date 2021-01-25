using System.Threading.Tasks;

namespace Application.Common.Interfaces
{
    public interface IEmailHelper
    {
        Task GetDataAndSendAsync(string emailReceiver, string PathToEmailBodyTempalte, string emailSubjectTemlate, params string[] links);
    }
}
