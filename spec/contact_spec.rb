require_relative 'spec_helper.rb'
require 'contacts/contact'

module Contacts
describe Contact do
  describe " retourner les formats d'affichage d'un contact " do
    before do
    @adresse = Adresse.numero("100")
                  .rue("sherbrook")
                  .codepostal("h3h-2L7")
                  .ville("Montreal")
                  .pays("Canada ")
    @tel = Telephone.new(1, "5142546369", :Mobile)

    @soc = Social.new( "moisebala" ,:Facebook)
    end

    it "Retourne le format d'affichage d'une adresse " do
      adr = "100, sherbrook (h3h-2L7) - Montreal , Canada "
      adr.must_equal @adresse.to_s
    end

    it "Retourne le format d'affichage d'un numero de telephone " do
      t = " +1 514-254-6369 (Mobile)"
      t.must_equal @tel.to_s
    end

    it "Retourne le format d'affichage de l'identifiant sur les reseaux " do
      s = "@moisebala  (Facebook)"
      s.must_equal @soc.to_s
    end

  end
end
end



