class AnnoncesController < ApplicationController
  def new
    @annonce = Annonce.new
    @pokemons = current_user.pokemons
  end

  def create

  end
end
