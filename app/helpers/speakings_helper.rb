module SpeakingsHelper
  def speaking(talk, person)
    Speaking.where(:talk_id => talk.id).where(:person_id => person.id).first
  end
end
