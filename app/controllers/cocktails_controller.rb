class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    # reviews = Review.all
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to root_path, notice: 'Cocktail was successfully destroyed.'
  end

  private

  def params_cocktail
    params.require(:cocktail).permit(:name, :photo)
 end
end
