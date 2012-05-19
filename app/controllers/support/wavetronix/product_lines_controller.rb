module Support
  module Wavetronix
    class ProductLinesController < BaseController
      def index
        redirect_to support_wavetronix_root_path
      end

      def show
        @product_line = ProductLine.find(params[:id])
        @products     = Product.all(params: { product_line_id: @product_line.id })
      end
  
      def choose
        params[:product_line].present? ? redirect_to(support_wavetronix_product_line_path(params[:product_line])) : redirect_to(support_wavetronix_root_path)
      end
    end
  end
end
