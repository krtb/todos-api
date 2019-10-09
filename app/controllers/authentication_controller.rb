class AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate # don't need a user token for this action
  # return auth token once user is authenticated
  def authenticate
    auth_token =
      AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    json_response(auth_token: auth_token)
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end

# responsible for orchestrating the auth process
# using the auth service we created
# service architecture allows this file to be relatively small