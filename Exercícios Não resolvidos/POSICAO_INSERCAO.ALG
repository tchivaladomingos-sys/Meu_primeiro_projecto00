Algoritmo "Posicao Insercao"
Var
meuVetor: vetor [1..5] de Inteiro
valorProcurado, posicao: Inteiro
funcao encontrar_posicao (x: Inteiro): Inteiro
var
baixo, alto, meio: Inteiro
Inicio
baixo <- 1
alto <- 5
   enquanto (baixo <= alto) faca
   meio <- (baixo + alto) \ 2
   se (v [meio] = x) entao
   retorne meio// Valor já existe, retornar a posicão dele
   senao
      se(v [meio] < x) entao
       baixo <- meio + 1
       senao
       alto <- meio - 1
       fimse
         fimse
    fimenquanto
    // Se não encontrou o valor exato, 'baixo' indica onde ele deveria estar
  retorne baixo
  fimfuncao
  Inicio
  meuVetor [1] <- 10
   meuVetor [2] <- 20
    meuVetor [3] <- 30
     meuVetor [4] <- 40
      meuVetor [5] <- 50
      escreva("Digite um valor para simular a insercão: ")
      leia (valorProcurado)
      posicao <-
      econtrar_posicao(meuVetor , valorProcurado)
escreval("Para manter a ordem, o valor",valorProcurado, " deve ser inserido na posicão:", posicao)

Fimalgoritmo