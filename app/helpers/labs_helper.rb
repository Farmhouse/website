module LabsHelper
  def project_idea_image_tag(slug, alt="")
    image_tag "http://farmhouse.s3.amazonaws.com/images/labs/ideas/#{slug}.jpg", :alt => alt
  end
end
