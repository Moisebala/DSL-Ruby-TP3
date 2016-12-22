require_relative 'spec_helper.rb'
require 'contacts/contact'


module Contacts

describe "DSL chainage de methode contact " do
  before do
    tel = Telephone.new(1, "5142546369", :Mobile)
    tels=[tel]
    adr = Adresse.numero("325")
              .rue("joliette")
              .codepostal("J4h-2L4")
              .ville("Montreal")
              .pays("Canada ")
    adrs =[adr]
    soc = Social.new("moisebala",:Facebook)
    socs=[soc]
    fete ="#{03}-#{16}-#{1988}"
    @attendu = Contact.new( "Moussa","Balla",tels,"moisebala@gmail.com",
                           adrs,"UQAM",:Famille,fete,socs).to_s

  end

  it "DSL contact avec utilisation de chainage " do
    contact1 = Contact.nom("Moussa")
                   .prenom("Balla")
                   .tel(1, "5142546369", :Mobile)
                   .email("moisebala@gmail.com")
                   .adresse(Adresse.numero("325")
                                 .rue("joliette")
                                 .codepostal("J4h-2L4")
                                 .ville("Montreal")
                                 .pays("Canada "))
                   .societe("UQAM")
                   .groupe(:Famille)
                   .fete(03,16,1988)
                   .social("moisebala" ,:Facebook)
    contact1.to_s.must_equal @attendu
  end

  it "DSL contact avec utilisation de chainage sur les alias " do
    contact2 = Contact.nom("Moussa")
                   .prenom("Balla")
                   .phone(1, "5142546369", :Mobile)
                   .courriel("moisebala@gmail.com")
                   .adresse(Adresse.numero("325")
                                 .rue("joliette")
                                 .codepostal("J4h-2L4")
                                 .ville("Montreal")
                                 .pays("Canada "))
                   .compagnie("UQAM")
                   .groupe(:Famille)
                   .anniversaire(03,16,1988)
                   .social("moisebala" ,:Facebook)
   contact2.to_s.must_equal @attendu
  end

end
end

