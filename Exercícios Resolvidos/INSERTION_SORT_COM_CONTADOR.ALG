Algoritmo "Insertion Sort com Contador"
Var
vet: vetor [1..5] de Inteiro
i, j, chave, deslocamentos: Inteiro
Inicio
Escreval("Digite 5 números para o vetor:")
para i de 1 ate 5 faca
Escreval("Posicão ", i, ":")
leia(vet[i])
  fimpara
  deslocamentos <- 0
para i de 2 ate 5 faca
  chave  <- vet[i]
  j <- i - 1
  enquanto (j >= 1) e (vet[j] > chave))faca
  vet[j + 1] <- vet[j]
  deslocamentos <- deslocamentos + 1
  j <- j - 1
  fimenquanto
      vet[j + 1] <- chave
      fimpara
      escreval("")
      escreval("--- Vetor Ordenado---")
      para i de 1 ate 5 faca
      escreva(vet[i]," ")
      fimpara
      escreval("")
      escreval(" Total de deslocamentos realizados: ", deslocamentos)


Fimalgoritmo