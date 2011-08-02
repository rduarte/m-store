class Product < ActiveRecord::Base
  validates_presence_of :name, :price, :weight
  has_and_belongs_to_many :categories
end
