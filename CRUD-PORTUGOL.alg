algoritmo "CRUD - Rayan Argolo"

var
//Vari�veis Globais
  opcaoMenu: Literal
  clientes: vetor[1..3] de Literal
  i: Inteiro

//Menu de Escolha
procedimento menu()
var
inicio
      Escreval ("CRUD Portugol - Rayan Argolo - Rode com F9")
               para i de 1 ate 30 faca
                      Escreva ("-")
               fimpara
      Escreval ("")
      Escreval ("1 - Cadastrar")
      Escreval ("2 - Pesquisar")
      Escreval ("3 - Excluir")
      Escreval ("4 - Editar")
      Escreval ("5 - Sair")
      leia (opcaoMenu)
fimprocedimento

//Procedimento Cadastro
procedimento cadastrar()
var
inicio
      para i de 1 ate 3 faca]
             limpatela
             Escreval ("Digite o nome do cliente de �ndice: ", i)
             se clientes[i] = "" entao
                  leia (clientes[i])
                  Escreval (" ")
             senao
                  limpatela
                  Escreval ("Lista cheia ou �ndice preenchido!!")
                  Escreval (" ")
                  interrompa
             fimse
      fimpara
fimprocedimento

//Procedimento Pesquisa
procedimento pesquisar()
var
indicePesquisa: Inteiro
indiceSucesso: Literal
inicio
   limpatela
   Escreval ("Digite o �ndice: ")
   leia (indicePesquisa)
   
   para i de 1 ate 3 faca
        se indicePesquisa = clientes[i] entao
             indiceSucesso <- clientes[indicePesquisa]
             interrompa
        fimse
   fimpara

        se indiceSucesso = "" entao
           Escreval ("�ndice inexistente")
           Escreval (" ")
        senao
             Escreval ("Cliente correspondente: ", indiceSucesso)
             Escreval (" ")
        fimse
fimprocedimento

//Procedimento Excluir
procedimento excluir()
var
indiceExcluido: Inteiro
indiceExibeExcluido: Literal
inicio
      limpatela
      Escreval ("Digite o �ndice do cliente a ser exclu�do:")
      leia (indiceExcluido)
      
      para i de 1 ate 3 faca
             se (indiceExcluido > 3) ou (indiceExcluido <  1) entao
                  Escreval ("�ndice sem cliente correspondente!!")
                  Escreval (" ")
             senao
                 indiceExibeExcluido <- clientes[indiceExcluido]
                 clientes[indiceExcluido] <- ""
                 Escreval ("Cliente Excluido: ", indiceExibeExcluido)
                 Escreval (" ")
                 interrompa
             fimse
      fimpara
fimprocedimento

//Procedimento Editar
procedimento editar()
var
indiceEditar: Inteiro
indiceEditado: Literal
indiceSucesso: Inteiro
novoCliente: Literal
inicio
      limpatela
      Escreval ("Digite o �ndice que deseja editar: ")
      leia (indiceEditar)
      
      para i de 1 ate 3 faca
           indiceSucesso <- 0
             se indiceEditar = clientes[i] entao
                  indiceEditado <- clientes[indiceEditar]
                  indiceSucesso <- 1
                  interrompa
             senao
             se (indiceEditar < 1) ou (indiceEditar > 3) entao
                  Escreval ("�ndice inexistente!")
                  Escreval ("")
                  interrompa
             senao

             fimse
             fimse
      fimpara

      se indiceSucesso = 1 entao
         Escreval ("Digite o nome do cliente de �ndice: ", indiceEditar)
         leia (novoCliente)
         
         clientes[indiceEditar] <- novoCliente
         Escreval (" ")
      fimse


fimprocedimento

//Looping de Processamento e Sa�das
inicio
repita
      menu()
      Escolha opcaoMenu
      caso "1"
           cadastrar()
      caso "2"
           pesquisar()
      caso "3"
           excluir()
      caso "4"
           editar()
      fimescolha
ate opcaoMenu = "5"


fimalgoritmo
