module Contacts
class Adresse
  def initialize(numero, rue, codepostal, ville, pays)
    @numero = numero
    @rue = rue
    @codepostal = codepostal
    @ville = ville
    @pays = pays
  end
  def self.numero( numero )
    adresse = Adresse.new( numero, nil, nil, nil, nil )
    adresse
  end
  def rue (rue)
    return @rue if rue.nil?
    @rue =rue
    self
  end
  def codepostal (codepostal)
    return @codepostal if codepostal.nil?
    @codepostal =codepostal
    self
  end
  alias :zipcode :codepostal

  def ville(ville)
    return @ville if ville.nil?
    @ville =ville
    self
  end
  def pays(pays)
    return @pays if pays.nil?
    @pays = pays
    self
  end
  def to_s
    "#{@numero}, #{@rue} (#{@codepostal}) - #{@ville} , #{@pays}"
  end
end
end