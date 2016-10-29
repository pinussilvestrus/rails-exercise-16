class PapersController < ApplicationController
  before_action :set_paper, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @paper = Paper.new
  end

  def edit
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

  def update
    if @paper.update(paper_params)
      redirect_to @paper
    else
      render 'edit'
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
