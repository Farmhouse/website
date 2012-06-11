class Lab < ActiveRecord::Base
  validates :your_name, :your_email, :your_twitter, :your_phone, :your_bio, :presence => true
  validates :project_title, :project_description,                           :presence => true
end
