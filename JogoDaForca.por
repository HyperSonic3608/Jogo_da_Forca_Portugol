//Davi Sollar - 21/06/2023
//Descrição: Jogo da forca
programa
{
	inteiro nletras, i, nletras2, a = 0, vida = 5, acertos = 0, acm = 0, acm_erros = 0, tent = 1
	cadeia p1, p2, dica
	caracter palavra[16], palavra2[16], repete[16] = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, linhas[16] = {'_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_'}, caract

	funcao vidas (caracter y)
	{

		para(inteiro j = 0; j<=15; j++)
		{
			se((y != palavra2[j]) e (y != repete[j]))
			{
				acm_erros++
			}
		}
		
		se(acm_erros==16)
		{
			limpa()
			repete[acm] = y
			acm++
			vida--
			escreva("Letra nõo existente na palavra\nVocê perdeu uma vida!\n")
		}
		
		acm_erros=0
	}
	
	funcao analise(inteiro letras , caracter x)
	{
		para (i=0; i<=letras ; i++)
		{
			se (x==palavra[i])
			{
				limpa()
				escreva("Muito bem! Você acertou uma letra\n")
				a++
				acertos++
				palavra[i]= '_'
				linhas[i] = x
			}
			senao se(palavra[i]=='_')
			{
				limpa()
				escreva("Letra já usada, tente outra\n")
			}
		}
		se (a>0)
		{
			limpa()
			escreva("Muito bem! Você acertou uma letra\n")
		}
		a = 0
	}
	
	funcao inicio()
	{
		escreva("JOGO DA FORCA!\n\n")
		escreva("Feito por: Davi Emanuel Moreira Sollar\n\n")
		escreva("Regras do jogo:\n")
		escreva("» O jogo é composto por 2 players, o primeiro insere uma palavra e o outro tenta adivinhá-la\n")
		escreva("» O primeiro jogador pode inserir palavras de até 16 letras, tendo também um espaço para adicionar uma dica\n")
		escreva("» O segundo jogador terá 5 vidas, ou seja, pode cometer até 5 erros. Atingidos esses 5 erros, o jogo para e o player 2 perde\n")
		escreva("» Para o player 2 ganhar, é necessário acertar todas as letras que compõem a palavra, não importando sua ordem\n\n")
		escreva("Observações:\n")
		escreva("» A palavra escrita pelo player 1 e as letras inseridas pelo player 2 devem estar em LETRA MAIÚSCULA e sem acentos\n")
		escreva("» Somente é considerado erro quando o player 2 insere uma letra não correspondente a palavra. Letras já usadas anteriormente não contarão como erro\n\n")
		escreva("Insira seu nome, player 1:\n")
		leia(p1)

		limpa()
		
		escreva("Quantas letras tem a palavra? (máx 16)\n") 
		leia(nletras)
		
		nletras2=nletras-1

		limpa()
		
		escreva("Escreva cada letra da palavra separadamente:\n")
		
		para(i = 0 ; i<=nletras2; i++)
		{
			leia(palavra[i])
			palavra2[i] = palavra[i]
		}

		limpa()

		escreva("Escreva uma dica para sua palavra:\n")
		leia(dica)

		limpa()

		escreva("Insira seu nome player 2: \n")
		leia(p2)
		
		limpa()
		
		enquanto((vida>0) e (acertos!=nletras))
		{

			escreva("Tentativa ", tent ,"\n\n")

			para(i = 0 ; i<=nletras2; i++)
			{
				escreva(linhas[i], " ")
			}
			
			se(acm>0)
			{
				escreva("\n\nLetras não pertencentes a palavra já inseridas: ")

				para(i = 0 ; i<=4; i++)
				{
					se(repete[i] != ' ')
					{
						escreva(repete[i], " ")
					}
				}
			}
			
			escreva("\n\n", p2,", você tem ",vida," vidas.\n")
			escreva("Dica da palavra: ", dica, "\n\n")
			escreva("Digite uma letra: ")
			leia(caract)

			limpa()

			analise(nletras2,caract)

			vidas(caract)

			escreva("\n")

			tent++
		}

		limpa()

		se (acertos==nletras)
		{
			escreva("Parabéns, ", p2, ", você ganhou!\n\n")
			escreva("Número de tentativas gastas: ", tent--, "\n")
			escreva("Vidas remanescentes: ", vida, "\n")
			escreva("Letras não pertencentes a palavra inseridas: ")
			para(i = 0 ; i<=4; i++)
				{
					se(repete[i] != ' ')
					{
						escreva(repete[i], " ")
					}
				}
			escreva("\n")
		}
		senao
		{
			escreva("Que pena, ", p2, ", você perdeu!")
			escreva("\nA palavra que ", p1, " colocou era ")
			para(i = 0 ; i<=nletras2; i++)
			{
				escreva(palavra2[i])
			}
			escreva("\n\n")
			escreva("Número de tentativas gastas: ", tent--, "\n")
			escreva("Acertos: ", acertos, "\n")
			escreva("Letras não pertencentes a palavra inseridas: ")
			para(i = 0 ; i<=4; i++)
				{
					se(repete[i] != ' ')
					{
						escreva(repete[i], " ")
					}
				}
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1262; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */