class Person < ActiveRecord::Base
  has_and_belongs_to_many :websites
  has_and_belongs_to_many :talks

  class << self
    def options_for_select
      Person.all.map { |p| [p.id, p.name] }
    end
  end
end
