module Contacts

class Telephone

def initialize(indicatif, numero, type)
  @indicatif = indicatif
  @numero = numero
  @type = type
end

def to_s
  " +#{@indicatif} #{@numero[0..2]}-#{@numero[3..5]}-#{@numero[6..9]} (#{@type})"
end
end
end
