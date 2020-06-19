class PagesController < ApplicationController
  def home
    @addresses = Address.all
  end
end
