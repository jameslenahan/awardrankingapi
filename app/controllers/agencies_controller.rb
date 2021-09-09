class AgenciesController < ApplicationController
    before_action :set_agency, only: [:show, :update, :destroy]


    def index
      render json: Agency.all

    end

    def create
      @agency = Agency.new(agency_params)
      @agency.save
    end
  

    def show
      render json: Agency.find(params[:id])
    end

    def update
      @agency.update(agency_params)
      @entry = @agency.entries.create(publish_at: Time.now)
      head :no_content
    end
 
    def destroy
      @agency.destroy
      head :no_content
    end
  
    private
  
    def agency_params
      # whitelist params
      params.require(:agency).permit(:name[:entries])
    end
  
    def set_agency
      @agency = Agency.find(params[:id])
    end
end
