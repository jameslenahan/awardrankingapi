class AgencyController < ApplicationController
    before_action :set_agency, only: [:show, :update, :destroy]

    # GET /EntriesController
    def index
      render json: Agency.all

    end
  
    # POST /EntriesController
    def create
      @Agency = Agency.new(agency_params)
      @Agency.save
    end
  
    # GET /EntriesController/:id
    def show
      render json: Agency.find(params[:id])
    end
  
    # PUT /EntriesController/:id
    def update
      @Agency.update(agency_params)
      head :no_content
    end
  
    # DELETE /EntriesController/:id
    def destroy
      @Agency.destroy
      head :no_content
    end
  
    private
  
    def agency_params
      # whitelist params
      params.permit(:name, :description, :typeofagency)
    end
  
    def set_Agency
      @Agency = Agency.find(params[:id])
    end
end
