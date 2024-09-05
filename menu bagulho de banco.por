programa
{
	
	funcao inicio()
	{
 	 	real saldo = 0
  	 	real saque, deposito
  	  	cadeia controle
  	  	inteiro menu = 69
   	 	cadeia extrato = ""

		enquanto(menu != 0)
		{
		escreva("----------------MENU----------------\n\n")
		escreva("| 1. Saque\n")
		escreva("| 2. Depósito\n")
		escreva("| 3. Extrato\n")
		escreva("| 4. Saldo\n")
		escreva("| 0. Sair\n\n")
		escreva("------------------------------------\n")
		leia(menu)
		limpa()
		escolha(menu){
			caso 1:
				escreva("Informe o valor do saque: ")
				leia(saque)
				enquanto(saque <= 0){
					escreva("Valor inválido. Digite novamente: ")
					leia(saque)
				}

				se(saque > saldo){
					escreva("Saldo indisponível. \n")
				}
				senao{
					saldo = saldo - saque
					escreva("Saque realizado com sucesso. ")
				}
			pare
			caso 2:
				escreva("Digite o valor do depósito: ")
				leia(deposito)
				enquanto(deposito <= 0){
					escreva("Valor inválido. Digite novamente: ")
					leia(deposito)
				}
				         
     		   se(saque > saldo){
          		escreva("Não autorizado!\n")
          		escreva("Aperte ENTER para continuar")
          		leia(controle)
          		limpa()
        			}
        			
        			senao{
          		saldo = saldo - saque
          		extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
          		escreva("Saque realizado com sucesso!\n")
          		escreva("Aperte ENTER para continuar")
          		leia(controle)
          		limpa()
        			}
        			
       		 pare
        		caso 3:
        			escreva("Digite o valor para depositar: ")
        			leia(deposito)
        			enquanto(deposito<0){
		          escreva("Valor invalido digite novamente: ")
          		leia(deposito)
        			}
        			saldo = saldo + deposito
        			extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
        			escreva("Deposito realizado com sucesso!\n")
        			escreva("Aperte ENTER para continuar")
          		leia(controle)
          		limpa()
        		pare
        		caso 4:
        			escreva("extrato")
         			escreva("Aperte ENTER para continuar")
          		leia(controle)
          		limpa()
        		pare
      			}
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 123; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */