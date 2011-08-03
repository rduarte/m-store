class Category < ActiveRecord::Base
  acts_as_nested_set
  has_and_belongs_to_many :products
  has_friendly_id :name, :use_slug => true, :approximate_ascii => true
end
