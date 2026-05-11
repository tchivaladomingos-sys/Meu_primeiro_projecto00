Algoritmo "Ordenar Matriz"

Var
mat: vetor [1..5 , 1..5] de Inteiro
i, j, k, chave: Inteiro
Inicio
para i de 1 ate 5 faca
  para j de 1 ate 5 faca
  escreva("Linha", i, "Coluna", j, ":")
      leia(mat [i, j])
      fimpara
    fimpara
  para i de 1 ate 5 faca
   para j de 2 ate 5 faca
  chave <- mat[i, j]
  k <- j- i
   enquanto (k >= 1) e
 (mat[i, j] > chave)faca
               mat[i, k + 1] <- mat [i, j]
     k <- k - 1
     fimenquanto
     mat [i, k + 1]<- chave
     fimpara
   fimpara
   escreval("")
   escreval("--- Matriz Ordenada por Linhas ---")
 para i de ate 5 faca
    para j de 1 ate 5 faca
    escreva( mat[i, j], " ")
     fimpara
     escreval (" ")
   fimpara
Fimalgoritmo