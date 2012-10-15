module ApplicationHelper

  def page_title
    if @title
      "The Farmhouse : #{@title}"
    else
      "The Farmhouse in Hollywood, California"
    end
  end

  def link_to_sponsor_image_tag(slug, url)
    link_to image_tag("http://farmhouse.s3.amazonaws.com/images/sponsors/#{slug}.png",
                      :alt => slug.gsub(/-/, " ")
                     ),
            url,
            :rel => "external",
            :id  => slug
  end

  def sluggify(text, separator="-")
    text.downcase.gsub(/_|\s|\W/, separator).gsub(/-{2,}/, separator).gsub(/(-)+$/, "")
  end

  def remote_image_tag(path, options = {})
    image_tag "http://farmhouse.s3.amazonaws.com/images/#{path}.jpg",
              :alt   => options[:alt],
              :class => options[:class],
              :id    => options[:id]
  end

  def link_to_twitter(thing)
    link_to "@#{thing.twitter}", "http://twitter.com/#{thing.twitter}", :rel => "external"
  end

  def link_to_person(person)
    link_to_unless_current person.name, person_slug_path(person.slug), :class => "fn n p-fn p-n"
  end

  def nav_to(link_text, link_path, options = {})
    if request.path == link_path
      options[:class] = "active"
    end

    content_tag :li, :class => options[:class]  do
      link_to link_text, link_path
    end
  end

end
