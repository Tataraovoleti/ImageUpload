
   function Checkfiles()
	{   
		var upfile = document.getElementById('co');
		var fileName=upfile.value;
		var extention = fileName.substring(fileName.lastIndexOf('.') + 1);
		if(fileName=="")
		{
			alert("Shouldn't be Blank");
			upfile.focus();
			return false;
		}
		if(extention == "gif" || extention == "GIF" || extention == "JPEG" || extention == "jpeg" || extention == "jpg" || extention == "JPG" || extention == "png" || extention == "PNG")
		{
		return true;
		} 
		else
		{
			alert("Upload Gif or Jpg of png images only");
			upfile.focus();
			return false;
		}
	}