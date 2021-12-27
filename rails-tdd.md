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

## RSpec
https://rspec.info/

`rspec --init` inicializa os arquivos padrões do rspec

`rspec` roda os testes do diretório

## Capybara