# Atributos de controle
    self.reproducoes = 0 # int, conta as reproduções iniciadas.
    self.tocando = False # bool, indica se a música está tocando.
    self.favorito = False



        print(f"Favorito: {'Sim' if self.favorito else 'Não'}")
        print(f"Tocando: {'Sim' if self.tocando else 'Não'}")
        print(f"Reproduções: {self.reproducoes}")



    def reproduzir(self):

        # Verifica se a música NÃO está tocando.
        if self.tocando == False:
            self.tocando = True # modifica o atributo.
            self.reproducoes += 1 # incrementa o contador de reproduções.
            print(f"Reproduzindo a música: {self._nome}.")

        else:
            print(f"A música {self._nome} já está sendo reproduzida.") # Se já estiver tocando, não inicia outra reprodução.
    
    
    # Método que pausa a reprodução da música.        
    def pausar(self):
         # Verifica se a música está tocando.
        if self.tocando == True:
            self.tocando = False
            print(f"A reprodução da música {self._nome} foi pausada.")

        else:
            print("Nenhuma música está sendo reproduzida.") # Não altera o estado se a música já estiver parada.


    def favoritar(self):
        if self.favorito == False:
            self.favorito = True
            print(f"A música : {self._nome} foi adicionada aos favoritos!")
        else:
            print(f"A música : {self._nome} já está nos favoritos!")

    def defavoritar(self):
            if self.favorito == True:
                self.favorito = False
                print(f"A música : {self._nome} foi removida dos favoritos!")
            else:
                print(f"A música : {self._nome} não está nos favoritos!")
