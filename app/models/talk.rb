class Talk < ActiveRecord::Base
  belongs_to :conf
  has_many :speakings
  has_many :people, :through => :speakings, :uniq => true

  has_many :photos
  has_many :videos
  has_many :tweets
  has_many :links

  before_create :sluggify

  class << self
    def options_for_select
      Talk.all.map { |t| [t.title, t.id] }
    end
  end

  def sluggify
    if self.slug.blank?
      s = self.title
    else
      s = self.slug
    end

    self.slug = s.downcase.gsub(/_/, "-").gsub(/\s/, "-").gsub(/-{2,}/, "-").gsub(/\W/, "-")
  end
end
