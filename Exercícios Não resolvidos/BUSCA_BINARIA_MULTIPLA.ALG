Algoritmo "Busca Binaria Multipla"

Var
vet: Vetor[1..10] de Inteiro
i, alvo: Inteiro
  procedimento buscar_todas(x:Inteiro)
  var
baixo, alto, meio, temp: Inteiro
encontrou: Logico
Inicio
  baixo <- 1
  alto <- 10
  encontrou <- falso
     enquanto ( baixo <= alto) e (nao encontrou) faca
     meio <- (baixo + alto) \ 2
   se (vet[meio] = x) entao
   encontrou <- verdadeiro
 temp <- meio
 enquanto (temp >= 1) e ( vet[ temp ] = x) faca
   escreval("Valor encontrado na posicão:", temp)
  temp <- temp - 1
  fimenquanto
  '          temp <- meio + 1
  enquanto(temp <= 10) e (vet[temp] = x)faca
    escreval("Valor encontrado na posicão:", temp)
       temp <- temp c
       fimenquanto
    senao
      se  (vet[meio] < x)entao
      baixo <- meio + 1
      senao
      alto <- meio - 1
      fimse
       fimse
       fimenquanto
     se (encontrou = falso) entao
       escreval(" O valor", x, " não foi encontrado no vetor.")
      fimse
      fimprocedimento
    Inicio
    vet[1] <- 10;
    vet[2] <- 20;
    vet[3] <- 20;
    vet[4] <- 20;
    vet[5] <- 30;
    vet[6] <- 40;
    vet[7] <- 50;
    vet[8] <- 60;
    vet[9] <- 70;
    vet[10] <- 80;
         escreva("Qual valor deseja buscar? ")
         leia(alvo)
         escreval("--- Resultados da Busca---")
         buscar_todas(alvo)
Fimalgoritmo