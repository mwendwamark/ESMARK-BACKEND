class TenantsController < ApplicationController
  skip_before_action :authorize, only: [:create, :destroy, :show, :index]
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  def index
    render json: Tenant.all, status: :ok
  end

  def show
    render json: { tenant: authorize }, status: :ok
    # tenant = tenant_finder 
    # render json: tenant, status: :ok
  end

  def create
    tenant = Tenant.create!(tenant_params)
    session[:tenant_id] = tenant.id
    render json: tenant, status: :created
  end

  def destroy
    tenant = tenant_finder
    tenant.destroy
    head :no_content
  end

  private

  def render_not_found_response
    render json: { errors: ["Tenant not found"] }, status: :not_found
  end

  def render_unprocessable_entity(e)
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end

  def tenant_params
    params.permit(:name, :house_number, :house_type, :phone_number, :id_number, :occupation, :rent, :next_of_kin_name, :next_of_kin_phone, :password, :password_confirmation)
  end

  def tenant_finder
    tenant = Tenant.find(params[:id])
  end
end
