class Page < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true, :approximate_ascii => true
  
  validates_presence_of :name, :description
  validates_uniqueness_of :name

end
