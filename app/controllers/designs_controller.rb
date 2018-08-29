class DesignsController < ApplicationController
  before_action :set_design, only: [:show, :edit, :update, :destroy]

  def index
    @designs = Design.all
  end

  def show
    @design = Design.find(params[:id])
    @product = Product.new
  end

  def new
    @design = Design.new
  end

  def create
    @design = Design.new(design_params)
    if @design.save
      @design.create
      redirect_to design_path(@design)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
    redirect_to designs_path
  end

  private
  def design_params
    params.require(:design).permit(:name, :theme, :photo)
  end

  def set_design
    @design = Design.find(params[:id])
  end

end
