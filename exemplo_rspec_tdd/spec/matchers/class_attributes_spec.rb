require 'person'

describe "Matchers para atributos de classe" do
  it "have_attributes" do
    person = Person.new
    person.name = 'Alex'
    person.age = 25

    expect(person).to have_attributes(name: 'Alex', age: (be >= 18))
  end
end