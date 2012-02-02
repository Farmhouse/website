class Person < ActiveRecord::Base
  has_and_belongs_to_many :websites
  has_many :speakings
  has_many :talks, :through => :speakings, :uniq => true

  before_create :sluggify

  class << self
    def options_for_select
      Person.all.map { |p| [p.id, p.name] }
    end
  end

  def sluggify
    if self.slug.blank?
      s = self.name
    else
      s = self.slug
    end

    self.slug = s.downcase.gsub(/_/, "-").gsub(/\s/, "-").gsub(/-{2,}/, "-").gsub(/\W/, "-")
  end
end
