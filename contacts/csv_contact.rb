require_relative'contact'
require 'csv'

module Contacts
class CSVContact
  def sauvegarder (contact)
    nomfichier = "#{contact.nom} - Contact"
    adresse = contact.adresses.map {|adr| adr.to_s}.join(" - ")
    telephones = contact.telephones.map {|tel| tel.to_s}.join(" - ")
    sociaux =contact.sociaux.map {|soc| soc.to_s}.join(" - ")

    CSV.open(nomfichier, "wb") do |csv|
      csv << ["nom","prenom","telephones","email","adresses","societe","groupe","fete","sociaux"]
      csv << [contact.nom, contact.prenom, telephones, contact.email, adresse, contact.societe,
              contact.groupe , contact.fete ,sociaux]
    end
  end
end
end

