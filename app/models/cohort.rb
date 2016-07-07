class Cohort < ActiveRecord::Base
  has_many :studentcohorts
  has_many :students, through: :studentcohorts, dependent: :destroy

end
