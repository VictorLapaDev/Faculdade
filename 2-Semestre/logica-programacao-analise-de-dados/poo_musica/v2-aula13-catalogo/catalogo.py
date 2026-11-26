from musica import Musica


class Catalogo:
    def __init__(self):
        #==========================================================
        # Atribuindo valores aos atributos
        
        #=========================================================
        # Atributos de controle
        self.musicas = []
        self.reproducoes = {}
        self.favoritos = []
        self.musica_atual = None
    
    #================================================
    # Validação 
    
    #==================================================================
    # Propriedades de leitura
   
    
    
    #========================================================
    # Métodos de exibição
    def listar_musicas(self):
        for n, musica in enumerate(self.musicas, start=1):
            print(f'{n} - {musica}')
        
    
    
    def filtrar_por_nome(self, termo):
        # Padronizando termo
        termo = self._normalizar(termo)
        # Procura dentro da lista de musicas e retorna uma lista com as que estão
        return [musica for musica in self.musicas if termo in self._normalizar(musica.nome)]
        
    
    
    def filtrar_por_cantor(self, termo):
        # Padronizando termo
        termo = self._normalizar(termo)
        # Procura dentro da lista de musicas e retorna uma lista com as que estão
        return [musica for musica in self.musicas if termo in self._normalizar(musica.cantor)]        
    
    
    
    def filtrar_por_genero(self, termo):
        # Padronizando termo
        termo = self._normalizar(termo)
        # Procura dentro da lista de musicas e retorna uma lista com as que estão
        return [musica for musica in self.musicas if termo in self._normalizar(musica.genero)]        
    
    
    
    def filtrar_por_ano(self, ano):
        # Procura dentro da lista de musicas e retorna uma lista com as que estão
        return [musica for musica in self.musicas if ano == musica.ano]
            
            
            
    def filtrar_por_duracao(self, minimo, maximo):
        segundos_min = minimo * 60
        segundos_max = maximo * 60
        # Procura dentro da lista de musicas e retorna uma lista com as que estão
        return [musica for musica in self.musicas if segundos_min <= musica.duracao  <= segundos_max]
    
    
    
    def listar_favoritos(self):
        for musica in self.favoritos:
            print(musica)
    #==========================================================
    # Métodos 
    @staticmethod
    def _normalizar(texto):
        return texto.strip().lower()
        
        
        
    def verificar_duplicidade(self, musica):
        # Valida se é uma música
        if not isinstance(musica, Musica):
            raise TypeError(f"É necessário informar um objeto da classe música.")
        # Verifica se há duplicatas
        for cadastrada in self.musicas:
            if (
                self._normalizar(cadastrada.nome) == self._normalizar(musica.nome) and
                self._normalizar(cadastrada.cantor) == self._normalizar(musica.cantor) and
                self._normalizar(cadastrada.genero) == self._normalizar(musica.genero) and
                cadastrada.duracao == musica.duracao and
                cadastrada.ano == musica.ano
            ):
                return True
        return False
    
    
    
    def adicionar_musica(self, musica):
        # Validação
        if not isinstance(musica, Musica):
            raise TypeError(f"É necessário informar um objeto da classe música.")
        # Verifica duplicidade
        if self.verificar_duplicidade(musica):
            print("Impossível adicionar música, música ja cadastrada")
            return False
        else:
            # Adiciona a musica
            self.musicas.append(musica)
            # Cria o número de reproduções
            self.reproducoes[musica] = 0
            # Print de concluido
            print(f"A música \033[32m{musica.nome}\033[0m foi adicionado ao catálogo!")
        
        
    def remover_musica(self, musica):
        # Verifica se existe no catalogo
        if musica not in self.musicas:
            return False
        # Verifica se a musica é a musica atual
        if self.musica_atual is musica:
            self.musica_atual = None
       # Remover dos favoritos
        #self.favoritos.remove(musica)
        # Remove as reproducoes
        self.reproducoes.pop(musica, None)
        # Remove a musica
        self.musicas.remove(musica)
        return True
   
   
   
    def reproduzir(self, musica):
        if musica not in self.musicas:
            print("Música não cadastrada no catálogo!")
            return False
        
        if self.musica_atual is musica:
            print(f"A música {musica.nome} já esta sendo reproduzida!")
            return False
        
        self.musica_atual = musica
        self.reproducoes[musica] += 1
        print(f"Reproduzindo {musica}")
        return True
        
       
    
    def pausar(self):        
        if self.musica_atual is None:
            print(f"Nenhuma música esta sendo reproduzida!")
            return False
        
        print(f"Repodução pausada: {self.musica_atual.nome}")
        self.musica_atual = None
        return True
    
    
    
    def favoritar(self, musica):
        if musica not in self.musicas:
            print("Música não cadastrada no catálogo!")
            return False       
        
        if musica in self.favoritos:
            print(f"Música {musica.nome} já esta favoritada")
            return False
        
        self.favoritos.append(musica)
        print(f"Música {musica.nome} foi favoritada")
        return True 
    
    
    
    def desfavoritar(self, musica):
        if musica not in self.musicas:
            print("Música não cadastrada no catálogo!")
            return False

        if musica not in self.favoritos:
            print(f"Música {musica.nome} não está favoritada")
            return False

        self.favoritos.remove(musica)
        print(f"Música {musica.nome} foi desfavoritada")
        return True

   #============================================================
   
   
        