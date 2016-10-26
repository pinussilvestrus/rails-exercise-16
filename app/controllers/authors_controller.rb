class AuthorsController < ApplicationController
  def new
  end

  def index
  end

  # POST /authors
  def create
    @author = Author.new(author_params)

    @author.save
    redirect_to new_author_path
  end

  private
    def author_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
