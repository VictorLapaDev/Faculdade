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

        
    
    #==========================================================
    # Métodos 
    def adicionar_musica(self, musica):
        # Validação
        if not isinstance(musica, Musica):
            raise TypeError(f"É necessário informar um objeto da classe música.")
        self.verificar_duplicidade(musica)
        self.musicas.append(musica)
        self.reproducoes[musica] = 0
        print(f"A música \033[32m{musica.nome}\033[0m foi adicionado ao catálogo!")
        
    def verificar_duplicidade(self, musica):
        for m in self.musicas:
            if m.nome.lower() == musica.nome.lower() and m.cantor.lower() == musica.cantor.lower():
                raise SyntaxError(f"A música \033[32m{musica.nome}\033[0m já foi adicionada no catálogo.")
       
   
   #============================================================
   
   
        