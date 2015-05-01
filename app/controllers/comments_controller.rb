class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  def index
    @comments = Comment.where(comment: nil)
  end

  # GET /comments/1
  def show
  end

  # GET /comments/new
  def new

    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    redirect_to root_path, alert: "You're not authorized!" and return unless authorized?
  end

  # POST /comments
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      session[:full_name], session[:email] = @comment.full_name, @comment.email
      redirect_to @comment, notice: 'Comment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /comments/1
  def update
    redirect_to root_path, alert: "You're not authorized!" and return unless authorized?
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /comments/1
  def destroy
    redirect_to root_path, alert: "You're not authorized!" and return unless authorized?
    @comment.destroy
    redirect_to comments_url, notice: 'Comment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:full_name, :email, :content, :comment_id)
    end

    def authorized?
      session[:email] == @comment.email && session[:full_name] == @comment.full_name
    end
end
