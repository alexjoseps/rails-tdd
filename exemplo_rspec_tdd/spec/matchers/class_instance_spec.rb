require "texto"

describe "Matchers de classes/objetos" do
  it "be_instance_of" do
    name = "Alex"
    
    expect(name).to be_instance_of String
  end

  it "be_kind_of / be_a / be_an" do
    name = "Souza" # String.new
    texto = Texto.new("Mundo") 

    expect(name).to be_kind_of String
    expect(texto).to be_kind_of Texto
    expect(texto).to be_kind_of String
  end

  it "respond_to" do
    name = "Souza" # String.new
    texto = Texto.new("Mundo")

    expect(name).to respond_to :size
    expect(texto).to respond_to :size
  end
end