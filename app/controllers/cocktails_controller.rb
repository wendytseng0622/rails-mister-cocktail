class CocktailsController < ApplicationController


def index
    @cocktails = Cocktail.all
  end


def new
    @cocktail = Cocktail.new
  end

def create
  @cocktail = Cocktail.new (
    cocktail_params)
  if @cocktail.save
    redirect_to @cocktail, notice: 'cocktail is created'

  else
    render :new
  end
end

 def show
    @cocktail = Cocktail.find(params[:id])
  end



  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a trusted parameter "white list" through.
    def cocktail_params
      params.require(:cocktail).permit(:name)
    end


end


