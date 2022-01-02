class RolesController < ApplicationController
    before_action :set_role, only: %i[show edit update destroy]
    load_and_authorize_resource
    respond_to :html, :json
  
    def index
      @roles = Role.all
    end
  
    def new
      @role = Role.new
    end
  
  
    def edit; end
  
    def create
      @role = Role.new(role_params)
  
      if @role.save
        redirect_to roles_url, notice: "Role was successfully created."
      else
        render :new
      end
    end
  
    def update
      if @role.update(role_params)
        redirect_to roles_url, notice: "Role was successfully updated."
      else
        render :edit
      end
    end
  
  
    def destroy
      @role.destroy
      redirect_to roles_url, notice: "Role was successfully destroyed."
    end
  
    private
  
    def set_role
      @role = Role.find(params[:id])
    end
  
    def role_params
      params.require(:role).permit(:name, permissions_attributes: {})
    end
  end
  