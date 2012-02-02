module ApplicationHelper

  def editing?
    Rails.env.development?
  end

  def link_to_twitter(thing)
    link_to "@#{thing.twitter}", "http://twitter.com/#{thing.twitter}", :rel => "external"
  end

  def human_readable_datetime(datetime)
    datetime.strftime("%B %e, %Y %l:%M %p")
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
    link_to_unless_current conf.name, year_path(conf.year), :class => "org p-org"
  end

end
