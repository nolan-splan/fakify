class UsersController < ApplicationController
  def index
    users = []
    100.times do
      users << User.generate_user
    end
    render json: users.as_json
  end

  def show
    user = User.generate_user
    render json: user.as_json
  end
end
