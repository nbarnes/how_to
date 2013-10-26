class Recipe < ActiveRecord::Base

  attr_accessible :name, :description, :steps

  has_many :steps, dependent: :destroy

end
