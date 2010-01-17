class Stat < ActiveRecord::Base
  
  validates_uniqueness_of :day, :scope => :term_id
  
  belongs_to :term
  
end
