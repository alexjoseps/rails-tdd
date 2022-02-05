describe "Matchers predicados" do
  it "be_nil" do
    name = nil

    expect(name).to be_nil
  end

  it "be_even" do
    expect(10).to be_even
  end

  it "be_odd" do
    expect(5).to be_odd
  end
end