class ProfileController < ApplicationController
  def index
    @user = current_user
    @adverts = current_user.adverts.all.order(created_at: :desc)
  end
end
