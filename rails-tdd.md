# TDD com Ruby on Rails, RSpec e Capybara

## TDD(Test-driven development)
Desenvolvimento Guiado a Testes

Kent Beck(Pai do TDD), criou a biblioteca SUnit para a linguagem Smalltalk em 1990 para testes unitários.

Em 1998 Kent Beck e Erich Gamma desenvolveram a biblioteca JUnit para testes unitários no Java.

Foi sendo percebido que ao desenvolver guiado a testes o design dos sistemas estavam melhorando.

### Fluxo TDD
`Red-Green-Refact`

- Primeiro passo(Red): Escreva um teste que falhe
- Segundo passo(Green): Escreva o código para que o teste tenha sucesso
- Terceiro passo(Refact): Elimine a redundância

### Pra que testar Software?
1. Garantir a qualidade do softare;
2. Segurança e facilidada na manutenção;
3. Melhor design de software;
4. Documentação técnica.

### Tipos de testes
1. Unitário: Testes de pequenos trechos de código, uma função por exemplo.
2. Integração: Testes que envolvem mais de um elemento, classes e serviços que possuem dependência.
3. Sistema(código legado)

Testes unitários e de integração são mais fáceis e baratos para se fazer.

Segundo a pirâmide de testes do Martin Flower, um sistema deve possuir mais testes de unidades do que os outros tipos.

1. UI (Acceptance Tests)
2. Service (Integration Tests)
3. Unit (Unit Tests) (Prioridade, base da pirâmide)

### Premissas dos testes
- Testes devem ser confiáveis
- Testes devem ser fáceis de escrever
- Restes devem ser fáceis de entender hoje e no futuro
- Não estamos focados em velocidade

### Padrão xUnit 4 fases
1. Setup: Quando é colocado o SUT(System Under Test, o objeto sendo testado) no estado necessário para o teste;
> `subject = described_class.new`
2. Exercise: Quando acontece a interação com o SUT;
>`result = subject.sum(5,5)`
3. Verify: Quando é verificado o comportamento esperado;
>`expect(result).to eq(10)`
4. Teardown: Quando o sistema é colocado no estado em que ele estava antes do teste ser executado(Utilizando Rspec, isso ocorre automaticamente)

## BDD(Behaviour Driven Development)
Desenvolvimento Guiado a Comportamento

Criado em 2003 por Dan North devido a dificuldade de ensinar o TDD aos seus alunos, que ficavam com dúvida por onde começar, o que testar e como nomear os testes.

O BDD nasceu como um modo de rever a nomenclatura do TDD e como se enxerga essa prática, hoje BDD é uma **abordagem de desenvolvimento de software**.

Uma abordagem/método que te faz pensar em como usar seu código e a partir disso gerar uma documentação/especifícação do comportamento que seu código faz.

A principal motivação do TDD não é testar o seu software, e sim especificá-lo com **exemplos de como usar o seu código** e deixar isso guiar o design do software.

Teste == Comportamento

Ferramentas: Cucumber, BDD Gem

O BDD permite que o cliente participe/crie da especificação dos cenários.

## RSpec
https://rspec.info/

`rspec --init` inicializa os arquivos padrões do rspec.

`rspec` roda os testes do diretório.

`rspec /folder`executa todos os testes dentro da pasta.

`rspec /folder/test_spec.rb` executa determinado arquivo de teste.

`rspec /folder/test_spec.rb -e "teste"` executa o teste informado do arquivo, pelo nome.

`rspec /folder/test_spec.rb:10` executa o teste da linha informada.

Os arquivos de testes serão mantidos dentro do diretório `spec` e também precisam possuir o sufixo `_spec.rb`

### describe
Um arquivo de teste inicia-se com o método `describe`, sinalizando que iremos descrever/"explicar" algo através de testes.

Quando informado uma classe no describe, o rspec irá tentar localizar a classe no diretório
```
describe Class do
  ...
end
```
Não é necessário informar uma classe, pode ser uma string também
```
describe 'test one' do
  ...
end
```
Podemos também passar para o `describe` tanto a classe como um texto:
```
describe Calculator, "Testes sobre calculadora" do 
  ...
end
```

### it, specity and example
Dentro do `describe` podemos utilizar três métodos para escrever nossos testes, são eles: it, specify e example

`it 'do something' do ... end`

`specify 'do something' do ... end`

`example 'do something' do ... end`

Até a versão 2.11 do Rspec, era utilizado o método `expect` dentro dos teste para indicar o resultado esperado.

A partir da versão 2.11 até atualmente, o método utilizado é o `expect`

Link útil: https://www.betterspecs.org/

### context
Pensando em agrupar nossos testes, teve a ideia do comando `context`, ele serve para agruparmos testes que são referente a uma mesma função e/ou contexto no qual o teste ocorre.

```
context '#sum' do
  it 'with positive numbers' do 
    ...
  end
end
```

### subject
Dentro do `describe`, quando passamos uma classe para ele, é possível fazer uso do método `subject` que irá instanciar um objeto da classe informada(implícito):
```
describe Calculator do
  # Calculator.new
  subject
  ...
end
```

Para renomear o subject:

`subject(:calc) { described_class.new }`

Nos casos onde passamos para o `describe` um texto, também podemos definir nosso subject(explícito):
```
describe "Calculadora" do 
  subject { Calculator.new }
  ...
end
```

### xit
Podemos usar o método `xit` no lugar do `it` nos testes para tornar um teste pendente, fazendo com que o rspec ignore ele.
```
xit "wip test" do
  ...
end
```

### expectations
`expect().to ...` 

`expect().to_not ...`

### matchers igualdade
#### equal / be
Compara o objeto instanciado em si, não o valor

`expect(calc).to equal(calc)`

#### eql / eq
Compara o valor que o objeto instanciado possui

`expect(result).to eq("ruby")`


### matchers true/false
#### be true / be_truthy
Validar que o valor esperado é verdadeiro
```
expect(1.odd?).to be true
expect(1.odd?).to be_truthy
``` 
#### be false / be_falsey
Validar que o valor esperado é falso
```
expect(1.even?).to be false
expect(1.even?).to be_falsey
```
#### be_nil
Validar que o valor esperado é nulo

`expect(nome).to be_nil`

### matchers comparação
Utilizamos o matcher `be` para fazer comparações

#### maior(>)
`expect(result).to be > 5`

#### maior igual(>=)
`expect(5).to be >= 5`

#### menor(<)
`expect(5).to be < 10`

#### menor igual(<=)
`expect(10).to be <= 10`

#### entre(be_between)(inclusive/exclusive)
`expect(10).to be_between(5, 10).inclusive`  
`expect(9).to be_between(5, 10).exclusive`

#### match(/regex/)
`expect(email).to match(/.@./)`

#### começa com(start_with/starting_with)
Pode ser utilizado com texto e arrays

`expect(numbers).to start_with 1`  
`expect(name).to start_with "Alex"`

#### termina com(end_with/ending_with)
Pode ser utilizado com textos e arrays

`expect(numbers).to end_with 3`  
`expect(name).to end_with "Teste"`

### matchers classes/objetos
#### be_instance_of
Compara se o objeto é instância direta de determinada classe  
`expect(name).to be_instance_of String`

#### be_kind_of / be_a / be_an
Compara se o objeto é instância direta de determinada classe ou se o objeto pertence a uma classe que herda da classe informada.  
Class Texto < String  
`expect(texto).to be_kind_of Texto`  
`expect(texto).to be_kind_of String`

#### respond_to
Verifica se o objeto informado possui determinado método diretamente ou indiretamente
`expect(name).to respond_to(:size)`

### matchers atributos da classe/instância
#### have_attributes
Valida se a instância possui o atributo e valor informado
`expect(person).to have_attributes(:name, age: 20)`

### matchers predicados
.nil? => be_nil
.even? => be_even

Podemos usar métodos predicados do Ruby no Rspec
`expect(10).to be_even`

### matchers para exceções
Para capturar erros/exceções, precisamos utilizar o expect da seguinte forma:  
`expect{subject}.to ...`  
Passando para ele, entre chaves, a ação que irá gerar o erro.

#### raise_exception
Apena valida se a ação gerou uma exceção, sem especificar qual.
`expect{subject}.to raise_exception`

#### raise_error
Com esse, podemos validar a classe da exceção e a mensagem.
`expect{subject}.to raise_error(ZeroDivisionError)`  
`expect{subject}.to raise_error("divided by 0")`  
`expect{subject}.to raise_error(ZeroDivisionError, "divided by 0")`  
`expect{subject}.to raise_error(/divided/)`

### describe
Podemos iniciar um arquivo utilizando somente o `describe` ou `RSpec.describe`

Também podemos passar para o describe uma string que será interpretada como subject, no lugar de uma classe.

## Capybara