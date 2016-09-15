class AddProductsController < ApplicationController
  before_action :set_add_product, only: [:show, :edit, :update, :destroy]

  # GET /add_products
  # GET /add_products.json
  def index
    @add_products = AddProduct.all
  end

  # GET /add_products/1
  # GET /add_products/1.json
  def show
  end

  # GET /add_products/new
  def new
    @add_product = AddProduct.new
  end

  # GET /add_products/1/edit
  def edit
  end

  # POST /add_products
  # POST /add_products.json
  def create
    @add_product = AddProduct.new(add_product_params)

    respond_to do |format|
      if @add_product.save
        format.html { redirect_to @add_product, notice: 'Add product was successfully created.' }
        format.json { render :show, status: :created, location: @add_product }
      else
        format.html { render :new }
        format.json { render json: @add_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_products/1
  # PATCH/PUT /add_products/1.json
  def update
    respond_to do |format|
      if @add_product.update(add_product_params)
        format.html { redirect_to @add_product, notice: 'Add product was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_product }
      else
        format.html { render :edit }
        format.json { render json: @add_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_products/1
  # DELETE /add_products/1.json
  def destroy
    @add_product.destroy
    respond_to do |format|
      format.html { redirect_to add_products_url, notice: 'Add product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_product
      @add_product = AddProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_product_params
      params.require(:add_product).permit(:title, :decription, :link, :product_id)
    end
end
