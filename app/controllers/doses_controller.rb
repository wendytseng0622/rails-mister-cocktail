class DosesController < ApplicationController

def new
  @dose = Dose.new
end

def create
  @dose = Dose.new(params[:dose])
  if @dose.save
    redirect_to @dose, notice: 'new doses is created'

  else
    render :new
  end
end

def destroy
  @dose = Dose.find(param[:id])
  @dose.destroy
  @cocktail = @dose.cocktail
  redirect_to @cocktail
end
end
