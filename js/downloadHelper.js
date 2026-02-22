// Download helper functions for file downloads
window.downloadHelper = {
    /**
     * Download a file from a byte array
     * @param {string} fileName - The name of the file to download
     * @param {Uint8Array} byteArray - The file content as byte array
     * @param {string} contentType - The MIME type of the file
     */
    downloadFromByteArray: function (fileName, byteArray, contentType) {
        const blob = new Blob([byteArray], { type: contentType || 'application/octet-stream' });
        const url = URL.createObjectURL(blob);
        const anchorElement = document.createElement('a');
        anchorElement.href = url;
        anchorElement.download = fileName || 'download';
        anchorElement.click();
        anchorElement.remove();
        URL.revokeObjectURL(url);
    },

    /**
     * Download a file from a base64 string
     * @param {string} fileName - The name of the file to download
     * @param {string} base64String - The file content as base64 string
     * @param {string} contentType - The MIME type of the file
     */
    downloadFromBase64: function (fileName, base64String, contentType) {
        const byteCharacters = atob(base64String);
        const byteNumbers = new Array(byteCharacters.length);
        for (let i = 0; i < byteCharacters.length; i++) {
            byteNumbers[i] = byteCharacters.charCodeAt(i);
        }
        const byteArray = new Uint8Array(byteNumbers);
        this.downloadFromByteArray(fileName, byteArray, contentType);
    },

    /**
     * Download a file from a URL
     * @param {string} fileName - The name of the file to download
     * @param {string} url - The URL to download from
     */
    downloadFromUrl: function (fileName, url) {
        const anchorElement = document.createElement('a');
        anchorElement.href = url;
        anchorElement.download = fileName || 'download';
        anchorElement.target = '_blank';
        anchorElement.click();
        anchorElement.remove();
    }
};

// Simplified download function for ExportService
window.downloadFile = function (base64String, fileName, contentType) {
    window.downloadHelper.downloadFromBase64(fileName, base64String, contentType);
};
