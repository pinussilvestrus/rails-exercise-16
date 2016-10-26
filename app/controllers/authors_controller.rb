class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]

  def new
    @author = Author.new
  end

  def show
  end

  def index
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author, notice: 'Author was successfully created.'
    else
      render :new
    end
  end

  private
    def set_author
      @author = Author.find(params[:id])
    end

    def author_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
