class Membership < ActiveRecord::Base
  attr_accessible :description, :name, :price, :slug
end
