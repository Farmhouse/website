class Person < ActiveRecord::Base
  has_and_belongs_to_many :websites
  has_many :speakings
  has_many :talks, :through => :speakings, :uniq => true

  class << self
    def options_for_select
      Person.all.map { |p| [p.id, p.name] }
    end
  end
end
