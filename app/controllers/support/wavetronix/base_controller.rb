module Support
  module Wavetronix
    class BaseController < Support::BaseController
      def index
        @product_lines  = ProductLine.all
        @download_types = DownloadType.all
      end
    end
  end
end
