import enum

class Candidatos(enum.Enum):
    candidatoX = 889
    candidatoY = 847
    candidatoZ = 515
    branco = 0
    
def Eleicao():
    Title = True
    candidatoX = 0
    candidatoY = 0
    candidatoZ = 0
    nulo = 0
    branco = 0
    
    while Title == True:
        try:           
            voto = int(input('Digite o número do seu candidato. 889- Candidato 1, 847- Candidato 2, 515 - Candidato 3, 0- Branco\n'))
            if (voto != Candidatos.candidatoX.value) and (voto != Candidatos.candidatoY.value) and (voto != Candidatos.candidatoZ):
                nulo = nulo +1                
            elif (voto == Candidatos.candidatoX.value):
                candidatoX = candidatoX +1               
            elif (voto == Candidatos.candidatoY.value):
                candidatoY = candidatoY +1                
            elif (voto == Candidatos.candidatoZ.value):
                candidatoZ = candidatoZ +1
            elif (voto == Candidatos.branco.value):
                branco = branco +1               
                    
            sair = int(input('Deseja finalizar a votação? Escolha a opção:\n 1- Sim\n 2- Não\n'))
            if (sair == 1):
                break
            elif (sair == 2):
                continue
            else:
                print('Você digitou algum valor incorrespondente.')
                break
        except Exception as err:
            print('Algo deu errado!\n')
            print(err)

    if (candidatoX > candidatoY) and (candidatoX > candidatoZ):
        print('Candidato 1 é o vencedor! Com um total:',candidatoX,'\nCandidato 2 obteve:',candidatoY,'\nCandidato 3 obteve:',candidatoZ,'\nVotos brancos:',branco,'\nVotos nulos:',nulo)        
    elif (candidatoY > candidatoX) and (candidatoY > candidatoZ):
        print('Candidato 2 é o vencendor! Com um total de:',candidatoY,'\nCandidato 1 obteve:',candidatoX,'\nCandidato 3 obteve:',candidatoZ,'\nVotos brancos:',branco,'\nVotos nulos:',nulo)
    elif (candidatoZ > candidatoX) and (candidatoZ > candidatoY):
        print('Candidato 3 é o vencedor! Com um total de:',candidatoZ,'\nCandidato 1 obteve:',candidatoX,'\nCandidato 2 obteve:',candidatoY,'\nVotos brancos:',branco,'\nVotos nulos:',nulo)
    else:
        print('\nTeremos segundo turno, pois a quantidade de votos é a mesma!','\n','\nCandidato 1 obteve:',candidatoX,'\nCandidato 2 obteve:',candidatoY,'\nCandidato 3 obteve:',candidatoZ,'\nVotos brancos:',branco,'\nVotos nulos:',nulo)                    

Eleicao()