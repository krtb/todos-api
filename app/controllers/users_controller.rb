class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create # don't need a user token for this action
  # POST /signup
  # return authenticated token upon signup
  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  private

  def user_params
    params.permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end
end

# user_controller: attempts to create a users, returns a JSON response with result
# user ActiveRecord's (create!) method, to that if error, exception will be raised
# and handled in the exception handler
