class PagesController < ApplicationController
  def home
      @pets = Pet.where.not(available: false)
  end

  def homepage
      @pets = Pet.all
  end

  def choose_role
  end
end
