class NewslettersController < ApplicationController
  before_action :set_newsletter, only: [:destroy]

  def create
    @newsletter = Newsletter.create(newsletter_params)
    if @newsletter.save 
     redirect_to homes_index_path, notice: "Thanks for your subscribing" 
     
    else
      redirect_to homes_index_path, notice: "Error !!!" 
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
