class CustomerAppsController < ApplicationController
  before_action :set_customer_app, only: [:show, :edit, :update, :destroy]

 

  # GET /customer_apps/1
  # GET /customer_apps/1.json
  def show
    render layout: "customer_app"
  end

  # GET /customer_apps/new
  def new
    @customer_app = CustomerApp.new(:app_id => params[:app_id])
  end

  # GET /customer_apps/1/edit
  def edit
  end

  # POST /customer_apps
  # POST /customer_apps.json
  def create
    @customer_app = CustomerApp.new(customer_app_params)

    respond_to do |format|
      if @customer_app.save
        format.html { redirect_to @customer_app, notice: 'Customer app was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer_app }
      else
        format.html { render action: 'new' }
        format.json { render json: @customer_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_apps/1
  # PATCH/PUT /customer_apps/1.json
  def update
    respond_to do |format|
      if @customer_app.update(customer_app_params)
        format.html { redirect_to @customer_app, notice: 'Customer app was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_apps/1
  # DELETE /customer_apps/1.json
  def destroy
    @customer_app.destroy
    respond_to do |format|
      format.html { redirect_to customer_apps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_app
      @customer_app = CustomerApp.find_by(slug: params[:slug])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_app_params
      params.require(:customer_app).permit(:site_title, :name, :slug, :custom_url, :description, :contact_name, :contact_email, :app_id)
    end
end
