module Support
  module Wavetronix
    class DownloadTypesController < BaseController
      def show
        @download_type = DownloadType.find(params[:id])
      end

      def choose
        params[:download_type].present? ? redirect_to(support_wavetronix_download_type_path(params[:download_type])) : redirect_to(support_wavetronix_root_path)
      end
    end
  end
end
