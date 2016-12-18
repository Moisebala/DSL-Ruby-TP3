module Contacts
class Adresse
  def initialize(numero, rue, codepostal, ville, pays)
    @numero = numero
    @rue = rue
    @codepostal = codepostal
    @ville = ville
    @pays = pays
  end
  def numero(numero)
    return @numero if numero.nil?
    @numero = numero
  end
  def rue (rue)
    return @rue if rue.nil?
    @rue =rue
  end
  def codepostal (codepostal)
    return @codepostal if codepostal.nil?
    @codepostal =codepostal
  end
  def ville(ville)
    return @ville if ville.nil?
    @ville =ville
  end
  def pays(pays)
    return @pays if pays.nil?
    @pays = pays
  end
  def to_s
    "#{@numero}, #{@rue} (#{@codepostal}) - #{@ville} , #{@pays}"
  end
end
end