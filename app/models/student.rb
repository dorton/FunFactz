class Student < ActiveRecord::Base
  has_many :studentcohorts
  has_many :cohorts, through: :studentcohorts, dependent: :destroy
  attachment :profile_image
  validates_presence_of :name, :fun_fact, :cohorts, :profile_image

end
