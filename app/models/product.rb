class Product < ActiveResource::Base
  self.site = "http://www.wavetronix.com/en/support/product_lines/:product_line_id/"
end