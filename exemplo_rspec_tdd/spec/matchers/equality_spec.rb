describe "Matchers de igualdade" do
  it "#equal and #be" do
    x = "ruby"
    y = x

    expect(x).to equal(y)
    expect(x).to be(y)
  end

  it "#eql and #eq" do
    x = "ruby"
    y = "ruby"

    expect(x).to eql(y)
    expect(x).to eq(y)
  end
end