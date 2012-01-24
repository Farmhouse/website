module ApplicationHelper

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

end
