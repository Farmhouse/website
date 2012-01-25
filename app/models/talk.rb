class Talk < ActiveRecord::Base
  belongs_to :conf
  has_and_belongs_to_many :people
end
