class DosesController < ApplicationController
  def create
  @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    # @review.save
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: "Dose was succsefully created"
    else
      render :new
    end
  end
def destroy
 @dose = Dose.delete(params[:id])
end
  def new
    @dose = Dose.new
   @cocktail = Cocktail.find(params[:cocktail_id])
  end

  private
  def dose_params
   params.require(:dose).permit(:description, :ingredient_id)
 end
end
