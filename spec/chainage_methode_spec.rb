require 'rspec'
require 'contacts/contact'

module Contacts

describe 'DSL chainage de methode contact' do
  before do
    adresse = Adresse.numero("100")
                  .rue("sherbrook")
                  .codepostal("h3h-2L7")
                  .ville("Montreal")
                  .pays("Canada ")
    adresse1 =Adresse.numero("325")
                    .rue("joliette")
                    .codepostal("J4h-2L4")
                     .ville("Montreal")
                    .pays("Canada ")
    adresses = [adresse.to_s,adresse1.to_s]
    tel = Telephone.new(1,"5142546369", :Mobile)
    tel1 = Telephone.new(1,"5142546369", :Domicile)
    tels = [tel,tel1]
    soc = Sociaux.new( "moisebala", :facebook)
    soc1 = Sociaux.new( "moisebala", :tweeter)
    socs = [soc,soc1]
    @attendu = Contact.new( "Moussa","Balla", tels,"moisebala@gmail.com",
                            adresses,"UQAM",:Famille,"03,16,1988",socs).to_s
  end

  it 'DSL contact avec utilisation de chainage ' do
    contact2 = Contact.nom("Moussa")
                   .prenom("Balla")
                   .tel(1, "5142546369", :Mobile)
                   .tel(1, "5142546369", :Domicile)
                   .email("moisebala@gmail.com")
                   .adresse(Adresse.numero("100")
                                .rue("sherbrook")
                                .codepostal("h3h-2L7")
                                .ville("Montreal")
                                .pays("Canada ").to_s)
                   .adresse((Adresse.numero("325")
                                 .rue("joliette")
                                 .codepostal("J4h-2L4")
                                 .ville("Montreal")
                                 .pays("Canada ").to_s ))
                   .societe("UQAM")
                   .groupe(:Famille)
                   .fete(03,16,1988)
                   .social("moisebala" ,:Facebook)
                   .social("moisebala" ,:tweeter)

    contact2.to_s.must_equal @attendu
  end

  it 'DSL contact avec utilisation de chainage sur les alias ' do
    contact2 = Contact.nom("Moussa")
                   .prenom("Balla")
                   .phone(1, "5142546369", :Mobile)
                   .phone(1, "5142546369", :Domicile)
                   .courriel("moisebala@gmail.com")
                   .adresse(Adresse.numero("100")
                                .rue("sherbrook")
                                .codepostal("h3h-2L7")
                                .ville("Montreal")
                                .pays("Canada ").to_s )
                   .adresse((Adresse.numero("325")
                                 .rue("joliette")
                                 .codepostal("J4h-2L4")
                                 .ville("Montreal")
                                 .pays("Canada ").to_s ))
                   .compagnie("UQAM")
                   .groupe(:Famille)
                   .anniversaire(03,16,1988)
                   .social("moisebala" ,:Facebook)
                   .social("moisebala" ,:tweeter)

    contact2.to_s.must_equal @attendu
  end
end
end