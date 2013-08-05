class UploadController < ApplicationController
   
   def index
   # render :file => 'app\views\upload\create.html.erb' 
   end
  def create
   @name = params[:upload][:file1].original_filename 
   directory = "public/images" 
    # create the file path 
    @path = File.join(directory, @name) 
    # write the file 
    File.open(@path, "wb") { |f| f.write(params[:upload][:file1].read) } 
    flash[:notice]="<p style='color:green' >#{@path} #{@name} Uploaded successfully</p>"
	
	session[:img]=@name
	redirect_to :action=>'index'
 end
end
