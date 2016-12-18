$LOAD_PATH.unshift('.','contacts')
require 'contacts/contact'
require 'contacts/csv_contact'
require 'contacts/adresse'
include Contacts

# creation des adresses methode de chainage
a1 = Adresse.numero("325")
             .rue("joliette")
             .codepostal("J4h-2L4")
             .ville("Montreal")
             .pays("Canada ")
puts a1
#avec meta-programmation
contact = Contact.nom "Guy" do
  prenom "Tremblay"
  tel "1", "5144361829", :Mobile
  email "tremblay.guy@gmail.com"
  adresse 100, "Sherbrook", "h3h-2L7", "Montréal","Canada"
  societe "UQAM"
  groupe :Professeur
  fete 12 ,12 ,1900
  social "GuyTremblay" , :Tweeter
end
puts contact

#avec chainage de méthodes
contact2 = Contact.nom("Moussa")
              .prenom("Balla")
              .tel("1", "4384033676", :Domicile)
              .tel("1", "4384033676", :Mobile)
              .email("moisebala@gmail.com")
              .adresse(325, "joliette","J4h-2L4"," Montreal"," Canada" )
              .societe("UQAM")
              .groupe(:Famille)
              .fete(03,16,1988)
              .social("Moussaballa" ,:Facebook)
puts contact2

#CSVContact.new.sauvegarder(contact2)