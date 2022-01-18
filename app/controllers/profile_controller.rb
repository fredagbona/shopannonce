class ProfileController < ApplicationController
  def index
    @user = current_user
    @adverts = current_user.adverts.all.order(created_at: :desc).limit(5)
  end
end
