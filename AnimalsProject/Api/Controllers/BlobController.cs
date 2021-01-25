using Application.DTO.Incoming;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BlobController : ControllerBase
    {
        private readonly IBlobService _blobService;
        public BlobController(IBlobService blobService)
        {
            _blobService = blobService;
        }

        [HttpGet("list")]
        public async Task<IActionResult> ListBlobs()
        {
            return Ok(await _blobService.ListBlobAsync());
        }

        [HttpGet("{blobName}")]
        public async Task<IActionResult> GetBlob(string blobName)
        {
            var data = await _blobService.GetBlobsAsync(blobName);
            return File(data.Stream, data.ContentType);
        }
        [HttpPost]
        [Route("uploadfile")]
        public async Task<IActionResult> UploadFile([FromBody] UploadFileRequestDto request)
        {
            try
            {
                await _blobService.UploadFileBlobAsync(request.FilePath, request.FileName);
                return Ok();
            }
            catch (System.Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}