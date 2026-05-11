Algoritmo "bubble_sort_contagem"
Const    TAM = 10
Var
  v: Vetor[1..TAM] de Inteiro
   i, j, temp, trocas: Inteiro


Inicio
// Leitura

   Para i <- 1 Ate TAM faca
   Escreva("v[", i, "]: ")
   Leia(v[i])
   FimPara
   // Bubble Sort com contagem
   trocas <- 0
   Para i <- 1 Ate TAM-1 faca
   Para j <- 1 Ate TAM-i faca
   Se (v[j] > v[j+1]) Entao
   temp <- v[j]
   v[j] <- v[j+1]
   v[j+1] <- temp
   trocas <- trocas + 1
   FimSe
   FimPara
   FimPara
   // Exibição
   Escreval("Vetor ordenado:")
   Para i <- 1 Ate TAM faca
   Escreva(v[i], " ")
   FimPara
   Escreval("")
   Escreval("Número de trocas: ", trocas)
Fimalgoritmo