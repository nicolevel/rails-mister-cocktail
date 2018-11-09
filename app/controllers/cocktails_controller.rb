class CocktailsController < ApplicationController

  def index         # GET /restaurants
    @cocktails = Cocktail.all
  end

  def show          # GET /restaurants/:id
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new           # GET /restaurants/new
    @cocktails = Cocktail.new
  end

  def create        # POST /restaurants
    @cocktails = Cocktail.new(cocktail_params)
    if @cocktails.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
