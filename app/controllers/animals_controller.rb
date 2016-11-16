class AnimalsController < ApplicationController
  def getAllAnimal
  	@animals=Animal.all
  	  end
end
