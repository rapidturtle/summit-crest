class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :name, :email, :subject, :comments
  
  validates :name, :subject, :comments, presence: true
  validates :email, presence: true,
                    format: { with: /^[A-Z0-9\.%\+\-\']+@(?:[A-Z0-9\-]+\.)+(?:[A-Z]{2,4}|museum|travel)$/i }
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send "#{name}=", value
    end
  end
  
  def persisted?
    false
  end
end
