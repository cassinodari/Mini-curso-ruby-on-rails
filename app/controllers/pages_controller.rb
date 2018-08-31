class PagesController < ApplicationController
  def home
  end

  def catalog
  end

  def products
    ## Trás todos os registros da tabela Products
    @products = Product.all
    render :json => @products
  end
  
end
