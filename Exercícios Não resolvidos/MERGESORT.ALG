Algoritmo "MergeSort"
Var
 vet:vetor [1..10] de Inteiro
 i: Inteiro
 procedimento intercalar(in, meio, fim: Inteiro)
 var
   vetAux: vetor [1..10] de Inteiro
   p1, p2, tamanho, i, j, k: Inteiro
     fim1, fim2: Logico
Inicio
p1 <- in
p2 <- meio + 1
tamanho <- fim - in + 1
fim1 <- falso
fim2 <- falso
   para i de 1 ate tamanho faca
   se (nao fim1) e (nao fim2) entao

     se (vet[p1] < vet[p2])entao
     
         vetAux[i] <- vet[p1]
         p1 <- p1 + 1
         senao
                 vetAux[i] <- vet[p2]
               p2 <- p2 + 2
               fimse
       se (p1 > meio) entao
       fim1 <- verdadeiro
       fimse
         se (p2 > fim) entao
         fim2 <- verdadeiro
         fimse
         senao
         se( nao fim1) entao
        vetAux[i] <- vet[p1]
        p1 <- p1 + 1
        senao
        vetAux[i] <- vet[p2]
               p2 <- p2 + 1
               fimse
                fimse
                  fimpara
        j  <- in
        para i de 1 ate tamanho faca
        vet[j] <- vetAux[i]
        j <- j + 1
      fimpara
    fimprocedimento
    procedimento merge_sort(in, fim: inteiro)
    var
    meio: Inteiro
    inicio
    se (in < fim)entao
    meio <- (in + fim) \ 2
    merge_sort(in, meio)
  merge_sort(meio + 1, fim)
  intercalar(in, meio, fim)
              fimse
              fimprocedimento
       Inicio
     vet [1] <- 50;
     vet [2] <- 10;
     vet [3] <- 40;
     vet [4] <- 20;
     vet [5] <- 60;
     vet [6] <- 30;
     vet [7] <- 80;
     vet [8] <- 5;
     vet [9] <- 90;
     vet [10] <- 15;
     escreval("Vetor Original:")
     para i de 1 ate 10 faca
     escreva(vet[i], "")
        fimpara
        escreval("")
        merge_sort(1, 10)
      escreval("Vetor Ordenado pelo Merge Sort:")
      para i de 1 ate 10 faca
      escreva(vet[i], "")
      fimpara
Fimalgoritmo