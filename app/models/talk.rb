class Talk < ActiveRecord::Base
  belongs_to :conf
  has_and_belongs_to_many :people

  class << self
    def options_for_select
      Talk.all.map { |t| [t.title, t.id] }
    end
  end
end
