class SuppliersController < ApplicationController

    #get all
    def index
        render json: Supplier.all
    end

    #get one MEKE NAMA DANNE NA LARAVEL WALA THYNA WDHTA HDUWA
    def show
        supplier = Supplier.find(params[:id])
        render json: supplier
    end

     #post
    def create
        supplier = Supplier.create(supplier_params)
        render json: supplier
    end
      
    # private 
      
    def supplier_params
        params.require(:supplier).permit(:name, :age)
    end

    #put?
    def update
        supplier = Supplier.find(params[:id])
        supplier.update(supplier_params)
        render json: supplier
      end

      #delete
      def destroy
        Supplier.destroy(params[:id])
      end
end
