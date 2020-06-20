class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def show
    @address = Address.find_by_short(params[:short])
    if @address.nil? || @address.empty?
      render_404
    else
      redirect_to @address.url
    end
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to root_path

    else
      render :new
    end
  end

  private

  def address_params
    params.require(:address).permit(:url, :short)
  end
end
