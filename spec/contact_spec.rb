require 'rspec'
require 'contacts/contact'

module Contacts
describe "Tout ses attributs  class d'un contact" do
  describe Telephone do
    it "Ajouter un numero de telephone pour un contact" do
      c = Telephone.new (1,"5146035652","Mobile")
      c.to_s.must_equal "+1 514-603-5652 (Mobile)"
    end
  end
  describe Adresse  do
    it "Ajouter une adresse pour un contact " do
      c = Adresse.new (1,"joliette","J4h-LL3","Montreal","Canada")
      c.to_s.must_equal "1, joliette (J4h-LL3) -  Montreal ,  Canada"
    end
  end
   describe Social do
    it "Ajouter les reseaux sociaux pour un contact " do
      c = SociaL.new ("moisebala","Facebook")
      c.to_s.must_equal "@moisebala  (Facebook)"
    end
   end

end
end

