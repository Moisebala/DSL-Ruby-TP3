require 'rspec'
require 'contacts/contact'

module Contacts
describe "Un contact et tout ses attributs qui vont avec " do
  describe "#Com" do
    it "Ajouter un numero de telephone pour un contact" do
      c = Telephone.new (1,"5146035652","Mobile")
      c.to_s.must_equal "+1 514-603-5652 (Mobile)"
    end
    it "Ajouter une adresse pour un contact " do
      c = Adresse.new (1,"joliette","J4h-LL3","Montreal","Canada")
      c.to_s.must_equal "1, joliette (J4h-LL3) -  Montreal ,  Canada"
    end
    it "Ajouter les reseaux sociaux pour un contact " do
      c = SociaL.new ("moisebala","Facebook")
      c.to_s.must_equal "@moisebala  (Facebook)"
    end

end
end
end
