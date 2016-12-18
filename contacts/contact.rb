require_relative 'telephone'
require_relative 'adresse'
require_relative 'sociaux'
require 'csv_contact'

module Contacts
class Contact
  attr_reader :nom, :prenom, :telephones, :email, :groupe , :adresses, :societe ,:sociaux , :fete

  def initialize(nom, prenom, telephones, email, adresses, societe, groupe, fete, sociaux)
    @nom = nom
    @prenom = prenom
    @telephones = telephones
    @email = email
    @adresses = adresses
    @sociaux = sociaux
    @groupe = groupe
    @fete = fete
    @societe=societe
  end

  def Contact.nom(nom, &block)
    contact = Contact.new(nom, nil, [], nil, [], nil, nil, nil,[])
    if block_given?
      contact.instance_eval &block
    end
    contact
  end
  def prenom(prenom)
    return @prenom if prenom.nil?
    @prenom = prenom
    self
  end

  def social(identifiant,genre)
    @sociaux << Social.new(identifiant,genre)
    self
  end

  def groupe(groupe)
    return @groupe if groupe.nil?
    @groupe = groupe
    self
  end

  def tel(indicatif, numero, type)
    @telephones << Telephone.new(indicatif, numero, type)
    self
  end

  alias :telephone :tel
  alias :phone :tel

  def email(email)
    return @email if email.nil?
    @email = email
    self
  end

  alias :mail :email
  alias :courriel :email

  def adresse(numero,rue,codepostal,ville,pays)
    @adresses << Adresse.new(numero,rue,codepostal,ville,pays)
    self
  end

  def societe(societe)
    return @societe if societe.nil?
    @societe = societe
    self
  end

  alias :compagnie :societe
  alias :entreprise :societe

  def fete(jour, mois, annee)
    @fete= "#{jour}-#{mois}-#{annee}"
    self
  end

  def to_s
    telephones = @telephones.map {|tel| tel.to_s}.join(" - ")
    adresse = @adresses.map {|adr| adr.to_s}.join("\n")
    sociaux =@sociaux.map{|soc| soc.to_s}.join("\n")
    "#{@nom} #{@prenom}
    Téléphones : #{telephones}
    Email : #{@email}
    Adresses : #{adresse}
    societe : #{@societe}
    Groupe : #{@groupe}
    fete : #{@fete}
    sociaux : #{sociaux}"
  end
end
end