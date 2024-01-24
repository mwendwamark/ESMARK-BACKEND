class SessionController < ApplicationController
  skip_before_action :authorize

  def create
    tenant = Tenant.find_by(email: params[:email])
    if tenant&.authenticate(params[:password])
      session[:tenant_id] = tenant.id
      render json: { user: authorize }, status: :ok
    else
      render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    end
  end

  def destroy
    session.delete :user_id
    head :no_content
  end
end
