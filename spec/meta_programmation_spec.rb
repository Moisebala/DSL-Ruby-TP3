require_relative 'spec_helper.rb'
require 'contacts/contact'

module Contacts
describe 'DSL avec meta programation ' do

  before do
    tel = Telephone.new(1, "5142546369", :Mobile)
    tels=[tel]
    adresse = Adresse.numero("325")
                  .rue("joliette")
                  .codepostal("J4h-2L4")
                  .ville("Montreal")
                  .pays("Canada ")
    adresses =[adresse]
    soc = Social.new( "moisebala" ,:Facebook)
    socs=[soc]
    fete = "#{03}-#{16}-#{1988}"
    @attendu = Contact.new( "Moussa","Balla",tels,"moisebala@gmail.com",
                            adresses,"UQAM",:Famille,fete,socs).to_s

  end
  it 'DSL contact avec utilisation de metaprogramtion ' do
    contact1 = Contact.nom "Moussa" do
                    prenom "Balla"
                    tel  1, "5142546369", :Mobile
                    email"moisebala@gmail.com"
                    adresse Adresse.numero("325")
                                 .rue("joliette")
                                 .codepostal("J4h-2L4")
                                 .ville("Montreal")
                                 .pays("Canada ")
                    societe "UQAM"
                    groupe :Famille
                    fete 03,16,1988
                    social "moisebala" ,:Facebook
                    end
    contact1.to_s.must_equal @attendu
  end

  it 'DSL contact avec utilisation de metaprogramtion utilisation alias ' do
    contact2 = Contact.nom "Moussa" do
      prenom "Balla"
      tel  1, "5142546369", :Mobile
      courriel "moisebala@gmail.com"
      adresse Adresse.numero("325")
                  .rue("joliette")
                  .codepostal("J4h-2L4")
                  .ville("Montreal")
                  .pays("Canada ")
      entreprise "UQAM"
      groupe :Famille
      anniversaire 03,16,1988
      social "moisebala" ,:Facebook
    end
    contact2.to_s.must_equal @attendu
  end

end
end
