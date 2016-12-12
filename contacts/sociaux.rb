module Contacts
class Social
  def initialize(identifiant, genre)
    @identifiant = identifiant
    @genre = genre
  end
  def to_s
    "@#{@identifiant}  (#{@genre})"
  end
end
end