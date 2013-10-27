class Recipe < ActiveRecord::Base

  attr_accessible :name, :steps

  has_many :steps, dependent: :destroy

end
