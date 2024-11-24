Algoritmo "Caluladora_Fatec"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
procedimento menuprincipal
inicio
   escreval ("Menu Calculadora")
   escreval("1 - Operações Básicas")
   escreval("2 - Concatenar Strings")
   escreval("3 - Fatorial")
   escreval("4 - Juros")
   escreval("5 - Conversão de Base Numérica")
   escreval("6 - Função do Segundo Grau")
   escreval("0 - Sair do sistema")
fimprocedimento

procedimento menujuros
inicio
   escreval ("Juros")
   escreval("1 - Juros Simples")
   escreval("2 - Juros Compostos")
   escreval("0 - Voltar ao menu principal")
fimprocedimento

procedimento menubase
inicio
   escreval ("Menu Conversao de Base Numérica")
   escreval("1 - B2 X B10")
   escreval("2 - B10 X B2")
   escreval("3 - B2 X B8")
   escreval("4 - B8 X B2")
   escreval("5 - B2 X B16")
   escreval("6 - B16 X B2")
   escreval("0 - Voltar ao menu principal")

fimprocedimento

funcao somar(a,b: real): real
inicio
   retorne a + b
fimfuncao

funcao subtrair(a,b: real): real
inicio
   retorne a - b
fimfuncao

funcao multiplicar(a,b: real): real
inicio
   retorne a * b
fimfuncao

funcao dividir(a,b: real): real
inicio
   se (b=0) entao
      escreval ("Impossível dividir por zero")
      escreval("Tente novamente!!!")
      escreval("Digite F9 para continuar")
      pausa
   senao
      retorne a / b
   fimse
fimfuncao

funcao Concatenacao():caracter
var
   opcao, palavra, string: caracter
inicio
   enquanto opcao <> "n" faca
      escreva("Digite uma palavra: ")
      leia(palavra)
      string  <- string + palavra
      escreva ("Deseja continuar (s/n): ")
      leia(opcao)
   fimenquanto
   retorne string

fimfuncao

funcao Fatoracao (numero: inteiro) : inteiro
var
   fatorial :inteiro
inicio
   fatorial<-1
   se numero=0 entao
      fatorial<-1
   senao entao
      para incremento de numero até 1 passo -1 faca
         fatorial<-incremento * fatorial
      fimpara
   fimse
   retorne fatorial
fimfunção

funcao CalcularJurosSimples(c, i, t: real): real

Inicio
   juros := c * t * i/100
   retorne juros

fimfuncao

funcao juros_compostos (c,i,t: real ) : real
inicio
   retorne  c *( 1 + (i /100)) ^ t
fimfuncao

funcao calcular_delta(): real
inicio
   delta<- (b*b) - (4*a*c)
   retorne delta
fimfuncao

funcao repeticao(): caracter
inicio
   escreva("Deseja realizar outra operação (s/n): ")
   leia(repetir)
   retorne repetir
fimfuncao

funcao B2XB10(binario: real) : real
var
   decimal, i, digito: real
inicio
   decimal <- 0
   i <- 0
   enquanto binario > 0 faca
      digito <- binario % 10
      decimal <- decimal + digito * (2 ^ i)
      binario <- binario / 10
      i <- i + 1
   fimenquanto
   retorne decimal
fimfuncao

Funcao B10XB2(Num: inteiro) : Caracter
Var
   Resultado: Caracter
Inicio
   Resultado <- ""
   Se Num = 0 Então
      Resultado <- "0"
   Senao
      enquanto (Num > 0) faca
         Se (Num % 2 = 0) Então
            Resultado <- ("0" + Resultado)
         Senao
            Resultado <- ("1" + Resultado)
         FimSe
         Num <- (Num div 2)
      FimEnquanto
   FimSe
   Retorne Resultado
FimFuncao

funcao binarioxocta (recebebin : caractere ) : caractere
var
armazconversao:caracter
inicio
   memoriastring <- recebebin
   i <- compr(recebebin)

   enquanto i > 0 faca
      teste <- 0  // o teste, verifica se o digito do usuario é valido
      partestring <- copia(recebebin,(i-2),i) // essas 2 linhas estão
      partestring <- copia(partestring,1,3)   // responsaveis por organizar os 3 digitos


      se (partestring = "0") ou (partestring = "00") ou (partestring = "000") entao
         armazconversao <- "0" + armazconversao
         teste <- 1
      fimse
      se (partestring = "1") ou (partestring = "01") ou (partestring = "001") entao
         armazconversao <- "1" + armazconversao
         teste <- 1
      fimse
      se (partestring = "10") ou (partestring = "010") entao
         armazconversao <- "2" + armazconversao
         teste <- 1
      fimse
      se (partestring = "11") ou (partestring = "011") entao
         armazconversao <- "3" + armazconversao
         teste <- 1
      fimse
      se partestring = "100" entao
         armazconversao <- "4" + armazconversao
         teste <- 1
      fimse
      se partestring = "101" entao
         armazconversao <- "5" + armazconversao
         teste <- 1
      fimse
      se partestring = "110" entao
         armazconversao <- "6" + armazconversao
         teste <- 1
      fimse
      se partestring = "111" entao
         armazconversao <- "7" + armazconversao
         teste <- 1
      fimse
      se teste = 0 entao
         recebebin <- "invalido" // caso teste = 0, invalida o recebebin
         armazconversao <- "invalido"
         i <- 0
      fimse

      i <- i - 3   // zera o i para outra operação
   fimEnquanto
   retorne armazconversao
fimfuncao

funcao octaxbinario(recebeocta : caractere ) : caractere
var
 armazconversao:caracter
inicio

   memoriastring <- recebeocta
   i <- compr(recebeocta)

   enquanto i > 0 faca
      partestring <- copia(recebeocta, i, i) // Seleciona o caracter atual
      partestring <- copia(partestring, 1, 1) // Verifica se é 1 caracter
      teste <- 0

      se (partestring = "0") entao
         armazconversao <- "000" + armazconversao
         teste <- 1
      fimse
      se (partestring = "1") entao
         armazconversao <- "001" + armazconversao
         teste <- 1
      fimse
      se (partestring = "2") entao
         armazconversao <- "010" + armazconversao
         teste <- 1
      fimse
      se (partestring = "3") entao
         armazconversao <- "011" + armazconversao
         teste <- 1
      fimse
      se (partestring = "4") entao
         armazconversao <- "100" + armazconversao
         teste <- 1
      fimse
      se (partestring = "5") entao
         armazconversao <- "101" + armazconversao
         teste <- 1
      fimse
      se (partestring = "6") entao
         armazconversao <- "110" + armazconversao
         teste <- 1
      fimse
      se (partestring = "7") entao
         armazconversao <- "111" + armazconversao
         teste <- 1
      fimse

      se teste = 0 entao
         recebeocta <- "invalido"
         armazconversao <- "nao ha"
         i <- 0
      fimse

      i <- i - 1
   fimenquanto
   retorne armazconversao
fimfuncao

funcao B2XB16(binario: real) : caracter
var
   decimal, Valor,i,digito:real
   resultado1:caracter
inicio
   decimal <- 0
   i <- 0
   enquanto binario > 0 faca
      digito <- binario % 10
      decimal <- decimal + digito * (2 ^ i)
      binario <- binario/10
      i <- i + 1
   fimenquanto
   Valor <- (decimal)
   se decimal mod 16=0 entao
      resultado1 <-resultado1+"0"
   fimse
   enquanto (decimal >0) faca
      Escolha (decimal mod 16)
      caso 1
         Resultado1<- ("1" + Resultado1)
      caso 2
         Resultado1<- ("2" + Resultado1)
      caso 3
         Resultado1<- ("3" + Resultado1)
      caso 4
         Resultado1<- ("4" + Resultado1)
      caso 5
         Resultado1<- ("5" + Resultado1)
      caso 6
         Resultado1 <- ("6" + Resultado1)
      caso 7
         Resultado1 <- ("7" + Resultado1)
      caso 8
         Resultado1 <- ("8" + Resultado1)
      caso 9
         Resultado1 <- ("9" + Resultado1)
      caso 10
         Resultado1 <- ("A" + Resultado1)
      caso 11
         Resultado1 <- ("B" + Resultado1)
      caso 12
         Resultado1 <- ("C" + Resultado1)
      caso 13
         Resultado1 <- ("D" + Resultado1)
      caso 14
         Resultado1 <- ("E" + Resultado1)
      caso 15
         Resultado1 <- ("F" + Resultado1)
      FimEscolha
      decimal <- (decimal/16)
   FimEnquanto
   retorne Resultado1
fimfuncao

funcao B16XB2(hexadecimal: caracter) : caracter
var
   i,verif: inteiro
   strFracao,memoriaStr,resultado1: caractere
inicio
   memoriaStr <- hexadecimal
   i <- compr(hexadecimal)

   enquanto i > 0 faca
      strFracao <- ""
      strFracao <- copia(hexadecimal,i,i)
      strFracao <- copia(strFracao,1,1)
      verif <- 0

      se (strFracao = "0") entao
         resultado1 <- "0000" + resultado1
         verif <- 1
      fimse
      se (strFracao = "1") entao
         resultado1 <- "0001" + resultado1
         verif <- 1
      fimse
      se (strFracao = "2") entao
         resultado1 <- "0010" + resultado1
         verif <- 1
      fimse
      se (strFracao = "3") entao
         resultado1 <- "0011" + resultado1
         verif <- 1
      fimse
      se (strFracao = "4") entao
         resultado1 <- "0100" + resultado1
         verif <- 1
      fimse
      se (strFracao = "5") entao
         resultado1 <- "0101" + resultado1
         verif <- 1
      fimse
      se (strFracao = "6") entao
         resultado1 <- "0110" + resultado1
         verif <- 1
      fimse
      se (strFracao = "7") entao
         resultado1 <- "0111" + resultado1
         verif <- 1
      fimse
      se (strFracao = "8") entao
         resultado1 <- "1000" + resultado1
         verif <- 1
      fimse
      se (strFracao = "9") entao
         resultado1 <- "1001" + resultado1
         verif <- 1
      fimse
      se (strFracao = "A") entao
         resultado1 <- "1010" + resultado1
         verif <- 1
      fimse
      se (strFracao = "B") entao
         resultado1 <- "1011" + resultado1
         verif <- 1
      fimse
      se (strFracao = "C") entao
         resultado1 <- "1100" + resultado1
         verif <- 1
      fimse
      se (strFracao = "D") entao
         resultado1 <- "1101" + resultado1
         verif <- 1
      fimse
      se (strFracao = "E") entao
         resultado1 <- "1110" + resultado1
         verif <- 1
      fimse
      se (strFracao = "F") entao
         resultado1 <- "1111" + resultado1
         verif <- 1
      fimse
      se verif = 0 entao
         hexadecimal <- "invalido"
         resultConversao <- "nao ha"
         i <- 0
      fimse
      i <- i - 1
   fimEnquanto
   retorne resultado1
fimfuncao





Var
   // Seção de Declarações das variáveis
   opcao, fat,fatorial,incremento, numero, termino, num : inteiro
   operacao,repetir,opcaojuros, opcaobase: caracter
   recebebin,partestring,memoriastring,resultadostg:caracter
   x,y, juros, c, i, t, j,m,a,b,delta,binario,resultbin : real
   teste:inteiro
   recebeocta,hexadecimal,resultadoocta:caracter
   resultadohexa,resultadobinario,resultdec:caracter

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   repita
      menuprincipal
      escreva("Entre com a opção desejada: ")
      leia (opcao)
      escolha opcao
      caso 1
         repita
            limpatela
            operacao <- ""
            escreva("Digite um número: ")
            leia(x)
            resultado <- x
            enquanto operacao <> "=" faca
               escreva ("Escolha a operação +,-,*,/ ou = para terminar: ")
               leia(operacao)
               escolha operacao
               caso "+"
                  escreva("Digite outro número: ")
                  leia(y)
                  resultado <- somar(resultado,y)
                  limpatela
                  escreval(resultado)
               caso "-"
                  escreva("Digite outro número: ")
                  leia(y)
                  resultado <- subtrair(resultado,y)
                  limpatela
                  escreval(resultado)
               caso "*"
                  escreva("Digite outro número: ")
                  leia(y)
                  resultado <- multiplicar(resultado,y)
                  limpatela
                  escreval(resultado)
               caso "/"
                  escreva("Digite outro número: ")
                  leia(y)
                  resultado <- dividir(resultado,y)
                  limpatela
                  escreval(resultado)
               caso "="
                  limpatela
                  escreval("Resultado: ",resultado)
               fimescolha
            fimenquanto
            repetir := repeticao()
         ate repetir = "n"
      caso 2
         repita
            limpatela
            escreva(Concatenacao())
            escreval()
            repetir := repeticao()
         ate repetir = "n"
      caso 3
         repita
            limpatela
            escreva ("Digite um número: ")
            leia(numero)
            se numero >12 entao
               escreval("Tente novamente,o número deve ser igual ou menor que 12")
            senao
               escreval("O Fatorial de",numero," é:",Fatoracao(numero))
            fimse
            repetir := repeticao()
         ate repetir = "n"
      caso 4
         limpatela
         menujuros
         escreva ("Digite a opção desejada: ")
         leia (opcaojuros)
         escolha opcaojuros
         caso "1"
            repita
               LimpaTela
               escreva ("Digite o valor do seu capital inical (c): R$ ")
               leia (c)
               escreva ("Digite o valor do juros (i) em porcentagem:")
               leia(i)
               escreva ("Digite o tempo (t) em meses: ")
               leia(t)
               LimpaTela
               j := CalcularJurosSimples(c, i, t)
               escreva(c, " * ", i * 100, "% * ", t, " = R$", j:0:2)
               escreval
               escreva("O valor dos juros simples é: R$", j:0:2)
               escreval (" ")
               repetir := repeticao()
            ate repetir = "n"
         caso "2"
            repita
               limpatela
               escreva("Digite o capital aplicado:R$ ")
               leia(c)
               escreva("Digite a taxa de juros: ")
               leia(i)
               escreva("Digite o tempo: ")
               leia(t)
               m <- juros_compostos(c,i,t)
               escreval("O montante é: ",m)
               repetir := repeticao()
            ate repetir = "n"
         caso "0"
         outrocaso
            escreval ("Digite a opção correta, tente novamente!!!")
            escreval("Digite F9 para continuar")
            pausa
         fimescolha

      caso 5
         repita
            limpatela
            menubase
            escreva("Digite a opção desejada: ")
            leia(opcaobase)
            escolha opcaobase
            caso "1"
               limpatela
               escreva("Digite um número de Base 2: ")
               leia(binario)
               resultbin <- B2XB10(binario)
               escreval("O número na Base 10 é: ", resultbin)

            caso "2"
               limpatela
               Escreva("Digite um valor em B10: ")
               Leia(Num)
               Resultdec <- B10XB2(Num)
               Escreval("O valor ", Num, " em B10 será de: ", Resultdec)

            caso "3"
               limpatela
               escreva("Digite o valor em binario:")
               leia(recebebin)
               resultadostg <- binarioxocta(recebebin)
               escreval("O número: ", recebebin, " é ", resultadostg," na Base 8")

            caso "4"
               limpatela
               escreva("Digite o valor em octadecimal: ")
               leia(recebeocta)
               resultadoocta <- octaxbinario(recebeocta)
               escreval("O número: ", recebeocta, " é ", resultadoocta)

            caso "5"
               limpatela
               escreva("Digite um número de Base 2: ")
               leia(binario)
               resultadohexa <- B2XB16(binario)
               escreval("O número na Base 16 é: ", resultadohexa)

            caso "6"
               limpatela
               escreva("Digite um número de Base 16: ")
               leia(hexadecimal)
               resultadobinario <- B16XB2(hexadecimal)
               escreval("O número na Base 2 é: ", resultadobinario)

            caso "0"
            outrocaso
               escreval("Opção inválida!!!")
            fimescolha
            repetir := repeticao()
         ate repetir = "n"
      caso 6
         repita
            limpatela
            repita
               escreva("Digite o valor de a: ")
               leia(a)
               se a=0 entao
                  escreval("Não é uma Equação de Segundo Grau, Insira outro valor de a:")
               fimse
            ate a<>0
            escreva("Digite o valor de b: ")
            leia(b)
            escreva("Digite o valor de c: ")
            leia(c)
            delta := calcular_delta()
            se delta < 0 entao
               escreva("A equação não possui raízes reais.")
            senao
               se delta = 0 entao
                  x := -b + (RaizQ(delta)) / (2*a)
                  escreva("A equação possui uma raiz real: ", x)
               senao
                  x := (-b + RaizQ(delta)) / (2*a)
                  y := (-b - RaizQ(delta)) / (2*a)
                  escreva("As raízes da equação são: ", x, " e ", y)
               fimse
            fimse
            escreval("")
            repetir := repeticao()
         ate repetir = "n"
         repetir := "s"
      caso 0
         escreva ("Obrigado por utilizar o sistema, saindo do sistema!!!")
         timer (1000)

      outrocaso
         escreva("Opção invalida, tente novamente!!!")
         timer(1000)
         timer (0)
      fimescolha
      limpatela
   ate opcao = 0
fimalgoritmo