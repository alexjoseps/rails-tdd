describe "Matchers de comparação" do
  it "greater(>) than" do
    expect(5).to be > 2
  end

  it "greater or equal(>=) than" do
    expect(5).to be >= 5
  end

  it "less(<) than" do
    expect(5).to be < 10
  end

  it "less or equal(<=) than" do
    expect(10).to be <= 10
  end

  it "between two numbers(inclusive)" do
    expect(10).to be_between(5, 10).inclusive
  end

  it "between two numbers(exclusive)" do
    expect(9).to be_between(5, 10).exclusive
  end

  it "match regex" do
    email = "alex@teste.com.br"
    expect(email).to match(/.@./)
  end

  it "start with some number" do
    numbers = [1,2,3]
    
    expect(numbers).to start_with 1
  end

  it "start with some text" do
    name = "Alex Teste"
    
    expect(name).to start_with "Alex"
  end

  it "end with some number" do
    numbers = [1,2,3]

    expect(numbers).to end_with 3
  end

  it "end with some text" do
    name = "Alex Teste"

    expect(name).to end_with "Teste"
  end
end