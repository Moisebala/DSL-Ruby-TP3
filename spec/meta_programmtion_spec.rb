require 'rspec'

describe 'DSL meta programmation utilisant instance_eval' do
  before do
    adresse = Adresse.new( 100, "Sherbrook", "h3h-2L7", "Montréal","Canada" )
    adresse1 =Adresse.new(325, "joliette","J4h-2L4"," Montreal"," Canada")
    adresses = [adresse,adresse1]
    tel = Telephone.new(1,"5142546369", :Mobile)
    tel1 = Telephone.new(1,"5142546369", :Domicile)
    tels = [tel,tel1]
    soc = Sociaux.new( "moisebala", :facebook)
    soc1 = Sociaux.new( "moisebala", :tweeter)
    socs = [soc,soc1]
    @attendu = Contact.new( "Moussa","Balla", tels,"moisebala@gmail.com",
                            adresses,"UQAM",:Famille,"03,16,1988",socs).to_s
  end

  it 'DSL contact avec utisation de metaprogrammation' do
    contact2 = Contact.nom "Moussa" do
                    prenom "Balla"
                    tel 1, "5142546369", :Mobile
                    tel 1, "5142546369", :Domicile
                    email "moisebala@gmail.com"
                    adresse 100, "Sherbrook", "h3h-2L7", "Montréal","Canada"
                    adresse 325, "joliette","J4h-2L4"," Montreal"," Canada"
                    societe "UQAM"
                    groupe :Famille
                    fete 03,16,1988
                    social "moisebala" ,:Facebook
                    social "moisebala" ,:tweeter
    end
    contact2.to_s.must_equal @attendu
  end
end