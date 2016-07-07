class Student < ActiveRecord::Base
  has_many :studentcohorts
  has_many :cohorts, through: :studentcohorts, dependent: :destroy
  attachment :profile_image

  def upload=(value)
    write_attribute(:profile_image, value.read) if value.respond_to? :read
  end

  def self.quick_all
    exclude_big_columns = ['upload']
    columns = Student.attribute_names - exclude_big_columns
    all.select(columns)
  end
end
