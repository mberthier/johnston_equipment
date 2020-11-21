class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :contact, :inventory, :product ]

  def home
  end

  def about
  end

  def contact
  end

  def inventory
  end

  def product
  end
end
