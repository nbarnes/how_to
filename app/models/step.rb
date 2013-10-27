class Step < ActiveRecord::Base
  attr_accessible :instruction, :ordinality

  belongs_to :recipe

  validates :instruction, :presence => true
  validates :ordinality, :presence => true

end
