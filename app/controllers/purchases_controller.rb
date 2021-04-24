class PurchasesController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  def index
    @purchase_address = PurchaseAddress.new
  end

  def create
  end

end
