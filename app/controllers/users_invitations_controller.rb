class UsersInvitationsController < Devise::InvitationsController
  before_action :configure_permitted_parameters, only: [:create]

  def edit
    sign_out send("current_#{resource_name}") if send("#{resource_name}_signed_in?")
    set_minimum_password_length
    resource.invitation_token = params[:invitation_token]
    redirect_to "#{params[:fe_url]}?invitation_token=#{params[:invitation_token]}", allow_other_host: true if params[:fe_url]
  end

  def update
    super do |resource|
      if resource.errors.empty?
        render json: { status: "Invitation Accepted!" }, status: 200 and return
      else
        render json: resource.errors, status: 401 and return
      end
    end
  end

  private

  def configure_permitted_parameters
    params.permit(:create_password_route)
  end
end
