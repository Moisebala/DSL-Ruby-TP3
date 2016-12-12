$LOAD_PATH.unshift('.','contacts')
require 'contacts/contact'
require 'contacts/csv_contact'
include Contacts


#DSL avec instance_eval
contact = Contact.nom "Guy" do
  prenom "Tremblay"
  tel "1", "5144361829", :Mobile
  email "tremblay.guy@gmail.com"
  adresse 1256, "Ontario", "h3h-2L7", "Montréal"
  societe "UQAM"
  groupe :Professeur
  fete 12 ,12 ,1900
  social "GuyTremblay" , :Tweeter
end
puts contact

#DSL avec chainage de méthodes
contact2 = Contact.nom("Moussa")
              .prenom("Balla")
              .tel("1", "4384033676", :Domicile)
              .tel("1", "4384033676", :Mobile)
              .email("moisebala@gmail.com")
              .adresse(325, "Joliette", "J4h-2L4", "Montréal")
              .societe("UQAM")
              .groupe(:Famille)
              .fete(03,16,1988)
              .social("Moussaballa" ,:Facebook)
puts contact2

#CSVContact.new.creation(contact2)