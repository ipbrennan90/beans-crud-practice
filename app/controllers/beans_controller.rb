class BeansController < ApplicationController
  before_action :set_bean, only: [:show, :edit, :update, :destroy]

  def index
    @beans= Bean.all
  end

  def new
    @bean=Bean.new
  end

  def create
    @bean = Bean.new(bean_params)
    if @bean.save
      redirect_to beans_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @bean.update
    redirect_to bean_path(@bean)
  end

  def destroy
    @bean.destroy
  end

  private

  def set_bean
    @bean=Bean.find(params[:id])
  end

  def bean_params
    params.require(:bean).permit(:species, :date_planted, :date_harvested)
  end

end
