class AnnoncesController < ApplicationController
  def new
    @annonce = Annonce.new
    @pokemons = current_user.pokemons
  end

  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.user = current_user
    @annonce.pokemon = Pokemon.find(1)
    @annonce.save!
    redirect_to annonce_path(@annonce)
  end


  private

  def annonce_params
    params.require(:annonce).permit(:prix, :address, :stars)
  end
end

