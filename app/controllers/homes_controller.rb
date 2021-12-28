class HomesController < ApplicationController
  def index
    @advert = Advert.last
    @adverts = Advert.all.order(created_at: :desc).limit(2)
  end
  def faq

  end
end
