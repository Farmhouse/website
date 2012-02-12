module ApplicationHelper

  def editing?
    Rails.env.development?
    false
  end

  def link_to_twitter(thing)
    link_to "@#{thing.twitter}", "http://twitter.com/#{thing.twitter}", :rel => "external"
  end

  def human_readable_datetime(datetime)
    datetime.strftime("%B %e, %l:%M %p")
  end

  def html5_datetime(datetime)
    datetime.strftime("%m-%d-%yT%H:%M")
  end

  def time_tag(datetime)
    content_tag(:time, human_readable_datetime(datetime), :datetime => html5_datetime(datetime))
  end

  def link_to_person(person)
    link_to_unless_current person.name, person_slug_path(person.slug), :class => "fn n p-fn p-n"
  end

  def link_to_conf(conf)
    pieces     = conf.name.split
    last_piece = pieces.pop
    conf_name  = pieces.join(" ") + "&nbsp;" + last_piece
    
    link_to_unless_current conf_name.html_safe, year_path(conf.year), :class => "org p-org"
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
