class Manufacturer < ActiveRecord::Base
  attr_accessible :description, :image, :name, :position, :support_site, :web_site
end
