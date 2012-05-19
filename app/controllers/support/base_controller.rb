module Support
  class BaseController < ApplicationController
    def index
      @manufacturers = Manufacturer.order("position")
    end

  end
end
