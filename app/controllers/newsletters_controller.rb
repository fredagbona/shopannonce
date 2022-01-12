class NewslettersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_newsletter, only: [:destroy]

  def create
    @newsletter = Newsletter.create(newsletter_params)
    if @newsletter.save 
      format.html { redirect_to homes_index_path, notice: "Thanks for your subscribing" }
     
    else
      format.html { render :new, status: :unprocessable_entity }
    end
  end

  private

    def set_newsletter
      @newsletter = Newsletter.find(params[:id])
    end

    def newsletter_params
      params.require(:newsletter).permit(:email)
    end
end
