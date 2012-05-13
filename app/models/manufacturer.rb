class Manufacturer < ActiveRecord::Base
  attr_accessible :description, :image, :name, :support_site, :web_site

  validates :name, presence: true
  validates :description, presence: true
end
