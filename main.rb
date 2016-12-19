$LOAD_PATH.unshift('.','contacts')
require 'contacts/contact'
require 'contacts/csv_contact'
require 'contacts/adresse'
include Contacts

#creatio de DSL Adresse
A1= Adresse.numero("100")
    .rue("sherbrook")
    .codepostal("h3h-2L7")
    .ville("Montreal")
    .pays("Canada ")

#avec meta-programmation
contact = Contact.nom "Guy" do
  prenom "Tremblay"
  tel "1", "5144361829", :Mobile
  email "tremblay.guy@gmail.com"
  adresse A1.to_s
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
              .adresse((Adresse.numero("325")
                            .rue("joliette")
                            .codepostal("J4h-2L4")
                            .ville("Montreal")
                            .pays("Canada ")).to_s)
              .societe("UQAM")
              .groupe(:Famille)
              .fete(03,16,1988)
              .social("Moussaballa" ,:Facebook)
puts contact2

#CSVContact.new.sauvegarder(contact2)