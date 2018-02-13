class UsersController < ApplicationController
  def index
    @users = []
    @users = User.all
  end
end
