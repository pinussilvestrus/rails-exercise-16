class PapersController < ApplicationController
  def new
    @paper = Paper.new
  end

  def create
    @paper = Paper.new(paper_params)

    if @paper.save
      # redirect_to @author, notice: 'Author was successfully created.'
      render :new
    else
      render :new
    end
  end

  private
    def set_paper
      @paper = Paper.find(params[:id])
    end

    def paper_params
      params.require(:paper).permit(:title, :venue, :year)
    end
end
