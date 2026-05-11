Algoritmo  "busca_binaria_recursiva" "
Const TAM = 10
Var
   v: Vetor[1..TAM] de Inteiro
   i, valor, pos: Inteiro

funcao busca_recursiva(vet: Vetor[1..TAM] de Inteiro; ini, fim, val: Inteiro): Inteiro
Var
meio: Inteiro
Inicio
// Leitura
 Se (ini > fim) Entao
 retorne -1
 FimSe
 meio <- (ini + fim) \ 2
 Se (vet[meio] = val)
 Entao
 retorne meio
 Senao
 Se (val < vet[meio])
 Entao
 retorne busca_recursiva(vet, ini, meio - 1, val)
 Senao
 retorne busca_recursiva(vet, meio + 1, fim, val)

   FimSe FimFuncao

Inicio
// Vetor ordenado
Para i <- 1 Ate TAM faca
v[i] <- i * 3 // 3, 6, 9, ..., 30
FimPara
Escreva("Digite o valor a buscar: ")
Leia(valor)
pos <- busca_recursiva(v, 1, TAM, valor)
Se (pos <> -1)
Entao
Escreval("Valor encontrado na posição ", pos)
Senao
Escreval("Valor não encontrado")
FimSe

Fimalgoritmo