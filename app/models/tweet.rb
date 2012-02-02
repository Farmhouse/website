class Tweet < ActiveRecord::Base
  belongs_to :conf
  belongs_to :talk
end
