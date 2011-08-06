class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :photos
  
  has_friendly_id :name, :use_slug => true, :approximate_ascii => true
  validates_presence_of :name, :price, :weight
end
