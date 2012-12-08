class ProductImportsController < ApplicationController
  def new
    @product_import = ProductImport.new
  end

  def create
    @product_import = ProductImport.new(params[:product_import])
    if @product_import.save
      redirect_to root_url, notice: "Imported products successfully."
    else
      render :new
    end
  end
end
