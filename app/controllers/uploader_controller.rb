require 'import'
class UploaderController < ApplicationController
    def index
    end
    
    def create
        if params[:file]
            FileUploader.upload(params[:file], params[:type])
        end
    end
    
    
end
