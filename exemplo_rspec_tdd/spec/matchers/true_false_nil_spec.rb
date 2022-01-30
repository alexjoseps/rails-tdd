describe "Matchers de verdadeiro/falso/nulo" do
  it "be true and be_truthy" do
    expect(1.odd?).to be true
    expect(3.odd?).to be_truthy
  end

  it "be false and be_falsey" do
    expect(1.even?).to be false
    expect(3.even?).to be_falsey
  end

  it "be_nil" do
    name = nil

    expect(name).to be_nil
  end
end