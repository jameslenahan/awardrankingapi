class EntriesController < ApplicationController
    before_action :set_entry, only: [:show, :update, :destroy]

    # GET /EntriesController
    def index
      render json: Entry.all

    end
  
    # POST /EntriesController
    def create
      @entry = Entry.new(entry_params)
      @entry.save
    end
  
    # GET /EntriesController/:id
    def show
      render json: Entry.find(params[:id])
    end
  
    # PUT /EntriesController/:id
    def update
      @entry.update(entry_params)
      head :no_content
    end
  
    # DELETE /EntriesController/:id
    def destroy
      @entry.destroy
      head :no_content
    end
  
    private
  
    def entry_params
      # whitelist params
      params.permit(:name, :description, :deadline, :rating, :cost, :typeofaward, :url)
    end
  
    def set_entry
      @entry = Entry.find(params[:id])
    end
end
