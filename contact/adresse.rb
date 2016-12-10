
class Adresse
  def initialize(numero, rue, codepostal, ville)
    @numero = numero
    @rue = rue
    @codepostal = codepostal
    @ville = ville
  end

  def to_s
    "#{@numero}, #{@rue} (#{@codepostal}) - #{@ville}"
  end
end
