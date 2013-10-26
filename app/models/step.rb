class Step < ActiveRecord::Base
  attr_accessible :description, :name, :ordinality

  belongs_to :recipe

  validates :name, :presence => true
  validates :ordinality, :presence => true

end
