class Musica:
    def __init__(self, nome, cantor, genero, duracao, ano):   
        #=========================================================================================#
        # Atribuindo valor as variaveis
        self._nome = self._validar_string(nome, 'nome')
        self._cantor = self._validar_string(cantor, 'cantor')
        self._genero = self._validar_string(genero, 'genêro')
        self._duracao = self._validar_int(duracao, 'duração')
        self._ano = self._validar_int(ano, 'ano')
        
    #=========================================================================================#
    # Validação    
    @staticmethod
    def _validar_string(valor, atributo):
        if not isinstance(valor, str) or not valor.strip():
            raise ValueError(f"O atributo {atributo} deve ser um texto não vazio!")
        return valor.strip()
    
    @staticmethod   
    def _validar_int(valor, atributo):
        if type(valor) is not int or valor <= 0:
            raise ValueError(f"O atributo {atributo} deve ser um número inteiro positivo.")
        return valor
    
    #=========================================================================================#
    # Propriedades de leitura (@property)
    @property
    def nome(self):
        return self._nome

    @property
    def cantor(self):
        return self._cantor

    @property
    def genero(self):
        return self._genero

    @property
    def duracao(self):
        return self._duracao
    
    @property
    def ano(self):
        return self._ano
    #=========================================================================================#
    
    #=========================================================================================#
    # Representação textual do objeto (__str__)
    def __str__(self):
        minutos = self.duracao // 60
        segundos = self.duracao % 60
        return (f"{self._nome} - {self._cantor} ({self._genero}) - {minutos:02d}:{segundos:02d}")
    #=========================================================================================#
    
    #=========================================================================================#
    # Métodos de exibição de atributos   
    def mostrar_nome(self):
        print(f"Nome da música: {self._nome}.")    
        
    def mostrar_cantor(self):
        print(f"Cantor(a): {self._cantor}.")
        
    def mostrar_genero(self):
        print(f"Gênero musical: {self._genero}.")
    
    def mostrar_duracao(self):
        print(f"Duração: {self._duracao} segundos.")
    
    def mostrar_ano(self):
        print(f"Ano de lançamento: {self._ano}.")
        
    # Método para mostrar todas as informações
    def mostrar_detalhe(self):
        self.mostrar_nome()
        self.mostrar_cantor()
        self.mostrar_genero()
        self.mostrar_duracao()
        self.mostrar_ano()

    #=========================================================================================#     
    #=========================================================================================# 
   
    #=========================================================================================#
    
    #=========================================================================================#
    # Métodos de Alterações
    
    def alterar_nome(self, novo_nome):
        self._nome = self._validar_string(novo_nome, 'nome')
        print(f"Nome atualizado para: {self._nome}")

    def alterar_cantor(self, novo_cantor):
        self._cantor = self._validar_string(novo_cantor, 'cantor')
        print(f"Cantor(a) atualizado(a) para: {self._cantor}")  

    def alterar_genero(self, novo_genero):
        self._genero = self._validar_string(novo_genero, 'genêro')
        print(f"Gênero atualizado para: {self._genero}")  

    def alterar_duracao(self, nova_duracao):
        self._duracao = self._validar_int(nova_duracao, 'duração')
        print(f"Duração atualizada para: {self._duracao} segundos.")  

    def alterar_ano(self, novo_ano):
        self._ano = self._validar_int(novo_ano, 'ano')
        print(f"Ano de lançamento atualizado para: {self._ano}") 
    #=========================================================================================#       