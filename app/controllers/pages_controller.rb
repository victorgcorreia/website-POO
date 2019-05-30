class PagesController < ApplicationController
  def home
      @pets = Pet.where.not(available: false)
  end
end
