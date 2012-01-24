class Person < ActiveRecord::Base
  has_and_belongs_to_many :websites
end
