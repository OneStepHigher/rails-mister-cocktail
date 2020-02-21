class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end
  ##### SHOW ALL COCKTAILS

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end
  ##### SHOW ONE SPECEFIC COCKTAIL
  ##### CREATING A NEW DOSE ON SHOW

  def new
    @cocktail = Cocktail.new()
  end
  ##### GET CREATING A NEW COCKTAIL
  ##### NEED FOR DISPLAYING THE FORM

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end
  ##### CREATING A NEW COCKTAIL IN THE BACKGROUND
  ##### USE INFORMATION FROM PARAMS (see form from def new)
  ##### SAVE IT AND REDIRECT TO THE SHOW PAGE @COCKTAIL MEANS IT TAKES THE ID OF THE NEWLY CREATED - ITS MAGIC

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
  ##### THIS IS NEEDED FOR THE CREATING OF THE COCKTAIL IT PERMITS THE INPUTS FROM THE FORM
end
