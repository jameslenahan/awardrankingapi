class AgencyController < ApplicationController
    before_action :set_agency, only: [:show, :update, :destroy]

    # GET /EntriesController
    def index
      render json: Agency.all

    end
  
    # POST /EntriesController
    def create
      @agency = Agency.new(agency_params)
      @agency.save
    end
  
    # GET /EntriesController/:id
    def show
      render json: Agency.find(params[:id])
    end
  
    # PUT /EntriesController/:id
    def update
      @agency.update(agency_params)
      head :no_content
    end
  
    # DELETE /EntriesController/:id
    def destroy
      @agency.destroy
      head :no_content
    end
  
    private
  
    def agency_params
      # whitelist params
      params.permit(:name, :description, :deadline, :rating, :cost, :typeofaward, :url)
    end
  
    def set_agency
      @agency = Agency.find(params[:id])
    end    
end
