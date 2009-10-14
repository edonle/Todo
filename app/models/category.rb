class Category < ActiveRecord::Base
  validates_length_of :category, :maximum=>30
  validates_uniqueness_of :category, :message => "já existe!"
end

