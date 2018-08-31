class RegisterProductsController < ApplicationController
  before_action :set_register_product, only: [:show, :edit, :update, :destroy]

  # GET /register_products
  # GET /register_products.json
  def index
    @register_products = RegisterProduct.all
  end

  # GET /register_products/1
  # GET /register_products/1.json
  def show
  end

  # GET /register_products/new
  def new
    @register_product = RegisterProduct.new
  end

  # GET /register_products/1/edit
  def edit
  end

  # POST /register_products
  # POST /register_products.json
  def create
    @register_product = RegisterProduct.new(register_product_params)

    respond_to do |format|
      if @register_product.save
        format.html { redirect_to @register_product, notice: 'Register product was successfully created.' }
        format.json { render :show, status: :created, location: @register_product }
      else
        format.html { render :new }
        format.json { render json: @register_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /register_products/1
  # PATCH/PUT /register_products/1.json
  def update
    respond_to do |format|
      if @register_product.update(register_product_params)
        format.html { redirect_to @register_product, notice: 'Register product was successfully updated.' }
        format.json { render :show, status: :ok, location: @register_product }
      else
        format.html { render :edit }
        format.json { render json: @register_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /register_products/1
  # DELETE /register_products/1.json
  def destroy
    @register_product.destroy
    respond_to do |format|
      format.html { redirect_to register_products_url, notice: 'Register product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register_product
      @register_product = RegisterProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_product_params
      params.require(:register_product).permit(:nome, :id_seq, :endereco, :preco, :email)
    end
end
