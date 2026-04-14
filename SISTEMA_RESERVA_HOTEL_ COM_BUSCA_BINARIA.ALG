Algoritmo "sistema_reserva_hotel_ com_busca_binaria"

Var
   id: vetor[1..100] de inteiro
   nome: vetor[1..100] de caractere
   n,i,j: inteiro
   opc,posi: inteiro
   alvo: inteiro
   temp_id: inteiro
   temp_nome: caractere
   in, fim, meio: inteiro
   encontrado: logico
Inicio

   n <- 0
   repita
   escreva("\n===== MENU =====\n")
   escreva("1 - Cadastrar reserva\n")
   escreva("2 - Listar reservas\n")
   escreva("3 - Buscar reserva\n")
   escreva("4 - Cancelar reserva\n")
   escreva("5 - Sair\n")
   escreva("Escolha uma opção: ")
   leia(opc)
   escolha opc

      // 1 - Cadastrar
   caso 1
   n <- n + 1
   escreva("ID da reserva: ")
   leia(id[n])
   escreva("Nome do cliente: ")
   leia(nome[n])

      // Ordenar após inserir
    para i de 1 ate n-1 faca
    para j de 1 ate n-i faca
    se id[j] > id[j+1] entao
    temp_id <- id[j]
    id[j] <- id[j+1]
    id[j+1] <- temp_id
    temp_nome <- nome[j]
    nome[j] <- nome[j+1]
    nome[j+1] <- temp_nome
    fimse
    fimpara
    fimpara

    escreva("Reserva cadastrada com sucesso!\n")

      // 2 - Listar
    caso 2
    se n = 0 entao
    escreva("Nenhuma reserva cadastrada.\n")
    senao
    para i de 1 ate n faca
    escreva("ID: ", id[i], " | Nome: ", nome[i], "\n")
    fimpara
    fimse

      // 3 - Buscar (Busca Binária)
    caso 3
    escreva("Digite o ID da reserva: ")
    leia(alvo)

    in <- 1
    fim <- n
    encontrado <- falso
    enquanto in <= fim faca
    meio <- (in + fim) div 2
    se id[meio] = alvo entao
    escreva("Reserva encontrada!\n")
    escreva("ID: ", id[meio], " | Nome: ", nome[meio], "\n")
    encontrado <- verdadeiro
    in <- fim + 1
    senao
    se id[meio] < alvo entao
    in <- meio + 1
    senao
    fim <- meio - 1
    fimse
    fimse
    fimenquanto
    se nao encontrado entao
    escreva("Reserva não encontrada.\n")
    fimse

      // 4 - Cancelar reserva
    caso 4
    escreva("Digite o ID da reserva a cancelar: ")
    leia(alvo)
    pos <- -1

      // procura posição
    para i de 1 ate n faca
    se id[i] = alvo entao
    pos <- i
    fimse
    fimpara
    se posi = -1 entao
    escreva("Reserva não encontrada.\n")
    senao

      // remove deslocando
    para i de posi ate n-1 faca
    temp_id[i] <- id[i+1]
    temp_nome[i] <- nome[i+1]
    fimpara
    n <- n - 1
    escreva("Reserva cancelada com sucesso!\n")
    fimse
    fimescolha
    ate opc = 5
    escreva("Sistema encerrado.\n")

fimalgoritmo