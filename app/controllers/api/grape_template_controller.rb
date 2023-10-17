class Api::GrapeTemplateController < ApplicationController

    skip_before_action :verify_authenticity_token

    def create 
       html = request.raw_post
       
       @grape_template = GrapeTemplate.new(html_template: params[:_json])

    if @grape_template.save
      render json: { message: 'Template created successfully' }
    else
      render json: { errors: @grape_template.errors.full_messages }, status: :unprocessable_entity
    end
 
    end
 
    def index
        @grape_templates = GrapeTemplate.all
        render json: @grape_templates
    end
 

end
