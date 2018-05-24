class DosesController < ApplicationController

  before_action :set_cocktail, only: [ :new, :create ]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      # redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def destroy
    ####
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

end
