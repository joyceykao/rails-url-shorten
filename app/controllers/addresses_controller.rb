class AddressesController < ApplicationController
  def show
    @address = Address.find_by_short(params[:short])
    redirect_to @address.url
  end
end
