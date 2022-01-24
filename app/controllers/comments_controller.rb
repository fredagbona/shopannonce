class CommentsController < ApplicationController
  before_action :set_advert, only: [:create, :edit, :update]
  def create
    @comment = @advert.comments.build(comment_params)
    respond_to do |format|
      if @comment.save
        format.json { render :index }
      else
        format.html { redirect_to advert_path(@advert), notice: 'Impossible de publier...' }
      end
    end
  end
  def edit
    @comment = @advert.comments.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'Modifier un commentaire'
      format.js { render :edit }
    end
  end
  def update
    @comment = @advert.comments.find(params[:id])
      respond_to do |format|
        if @comment.update(comment_params)
          flash.now[:notice] = 'Commentaire mis àjour'
          format.js { render :index }
        else
          flash.now[:notice] = 'Impossible de mettre à jour'
          format.js { render :edit_error }
        end
      end
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      flash.now[:notice] = 'Deleting comment'
      format.js { render :index }
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:advert_id, :name, :email, :content)
  end
  def set_advert
    @advert = Advert.find(params[:advert_id])
  end
end
