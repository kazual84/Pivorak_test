class JorneysController < ApplicationController
  before_action :set_jorney, only: [:show, :edit, :update, :destroy]

  def index
    @jorneys = Jorney.all
  end


  def show
  end

  def new
    @jorney = Jorney.new
  end

  def create
    @jorney = Jorney.new(jorney_params)
    if @jorney.save
      redirect_to @jorney
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @jorney.update_attributes(jorney_params)
      redirect_to @jorney
    else
      render :edit
    end
  end

  def destroy
    @jorney.destroy
    redirect_to jorneys_path
  end


  private

  def set_jorney
    @jorney = Jorney.find(params[:id])
  end

  def jorney_params
    params.require(:jorney).permit(:title, :capacity, :start_datetime)
  end

end