

class Perfil():

    def __init__(self, nome, idade):
        self.__nome = nome
        self.__idade = idade

    def get_nome (self):  # Método getter para retornar o valor do atributo nome: 
        return self.__nome

    def set_nome (self, n):  # Método setter para atribuir um novo valor ao atributo nome
        self.__nome = n

    def get_idade (self):  # Método getter para retornar o valor do atributo idade:
        return self.__idade

    def set_idade (self, id):  # Método setter para atribuir um novo valor ao atributo idade
        self.__idade = id
       
retorno = Perfil ('khadidja', 19)
print ('O seu nome é:', retorno.get_nome())  # Mostrar valor estabelecido para o nome
print ('A sua idade é:', retorno.get_idade())  # Mostrar valor estabelecido para a idade

name = input('O nome que você deseja colocar:')  # Colocando novo valor para nome
retorno.set_nome(name)  

idad = int(input('A idade que você deseja colocar:'))  # Colocando novo valor para idade
retorno.set_idade(idad)

print ('Nome após atualização:', retorno.get_nome())  # Mostrando novo valor para nome
print ('Idade após atualização:', retorno.get_idade()) # Mostrando novo valor para idade