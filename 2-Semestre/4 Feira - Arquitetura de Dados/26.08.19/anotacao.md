# Discussão em Grupo (v2)

**Tema escolhido:** Instagram

## Roteiro da Apresentação

Perguntas principais a serem respondidas durante a apresentação:
* **Quais dados são produzidos?** Texto (legendas, comentários, DMs), mídias (fotos, vídeos, áudios), metadados (geolocalização, horário, dispositivo) e dados de engajamento (curtidas, tempo de tela, cliques).
* **Onde são armazenados?** Em ecossistemas de bancos de dados da Meta, utilizando armazenamento em nuvem distribuído (como o Amazon S3/Haystack para mídias e TAO/RocksDB para dados estruturados).
* **Como chegam até o usuário?** Através de APIs REST/GraphQL transportadas via protocolos HTTPS e entregues por Redes de Distribuição de Conteúdo (CDNs) geograficamente próximas ao usuário.
* **O que precisa acontecer para tudo funcionar?** Um ecossistema de microsserviços integrando servidores de aplicação, algoritmos de recomendação, sistemas de cache (Memcached) e carregamento dinâmico.

---

## Etapas da Atividade

### Etapa 1: Formular perguntas para outros grupos
---

### Etapa 2: Perguntas recebidas de outros grupos

1. **Como o Instagram armazena Stories, Feed e outros conteúdos para suportar milhares de posts?**
   * **R:** Mídias (fotos e vídeos) ficam em armazenamentos de objetos distribuídos (Blob Storage/Haystack), enquanto os metadados (quem postou, legenda, horário) ficam em bancos de dados relacionais e NoSQL particionados (sharding).

2. **Como o Instagram lida com a escalabilidade do número de usuários?**
   * **R:** Através de balanceamento de carga (Load Balancers), arquitetura baseada em microsserviços, *sharding* (divisão de bancos de dados em múltiplos servidores) e uso massivo de *caching* na memória RAM (Memcached).

3. **Como o Instagram armazena os bilhões de dados de cada usuário?**
   * **R:** Utiliza o TAO (um banco de dados em grafo distribuído criado pela Meta) para mapear conexões entre usuários e posts, combinado com bancos chave-valor de alta performance como o RocksDB.

4. **Quais ferramentas e tecnologias são usadas na modelagem do banco de dados?**
   * **R:** Históricamente MySQL altamente customizado para dados relacionais, TAO para o grafo de dados social, RocksDB/Cassandra para chave-valor/séries temporais e Elasticsearch/OpenSearch para buscas.

5. **Como funciona o sistema de controle de conteúdo sensível nos Reels e Stories?**
   * **R:** Modelos de Inteligência Artificial e Visão Computacional analisam quadros de vídeos e imagens no momento do envio (*upload*), aplicando pontuações de risco e filtros automáticos antes do conteúdo ser distribuído.

6. **Como o Instagram guarda as imagens e arquivos a serem postados?**
   * **R:** Ao fazer o *upload*, o arquivo é comprimido, redimensionado em múltiplos formatos e salvo em um sistema de armazenamento de objetos (Blob). URLs únicas são geradas e distribuídas por CDNs.

7. **Como o algoritmo escolhe o que aparece no feed em questão de segundos?**
   * **R:** Sistemas de recomendação baseados em Machine Learning consultam dados em tempo real (histórico de navegação, interesses, interações recentes) e pontuam milhares de posts candidatos, ordenando-os instantaneamente.

8. **Quando abrimos o aplicativo, como o Instagram combina as fotos dos amigos com as recomendações de outras contas?**
   * **R:** O sistema executa duas consultas paralelas: o *Feed de Conexões* (contas que você segue) e a *Injeção de Recomendações* (algoritmo de descoberta). Os resultados são mesclados por regras de negócios e entregues em uma única lista.

9. **Como ficam armazenados os dados de um post arquivado pelo usuário?**
   * **R:** A mídia permanece no mesmo servidor de arquivos, mas a flag de visibilidade no banco de dados muda de `public` para `archived`, removendo a referência do feed público sem apagar o registro.

10. **Como o Instagram consegue armazenar e disponibilizar milhões de comentários em uma única publicação sem sobrecarregar o sistema?**
    * **R:** Usando paginação de dados (carrega apenas 10 ou 20 por vez), uso severo de *cache* para comentários populares e bancos NoSQL otimizados para rápida leitura de grandes volumes de texto.

11. **Como os dados de curtidas, comentários, compartilhamentos e tempo de visualização influenciam o conteúdo exibido no Feed e no Explorar?**
    * **R:** Funcionam como *Sinais de Relevância*. O tempo de visualização e o compartilhamento possuem peso alto, alimentando o modelo preditivo que calcula a probabilidade de você interagir com conteúdos semelhantes.

12. **Como o Instagram utiliza os dados dos usuários para direcionar anúncios personalizados?**
    * **R:** Cruza dados de comportamento interno (páginas seguidas, engajamento) com dados do ecossistema Meta (Facebook, WhatsApp) e pixels de rastreamento externos para criar perfis demográficos e de interesse vendidos a anunciantes.

13. **Comparado a outras redes como o WhatsApp, qual é a diferença na forma como o Instagram armazena mensagens, ou os sistemas são equivalentes?**
    * **R:** O WhatsApp usa criptografia de ponta a ponta e armazena mensagens prioritariamente no próprio dispositivo. O Instagram armazena as mensagens DMs diretamente nos servidores de nuvem da Meta de forma centralizada.

14. **Quando uma pessoa envia um áudio, qual é o tipo de dado gerado e onde ele é armazenado?**
    * **R:** O áudio é um arquivo binário (geralmente codificado em AAC ou OGG). Ele é salvo no sistema de arquivos *Blob* e seu endereço (URL) é registrado no banco de dados de mensagens da DM.

15. **Como o Instagram armazena e utiliza os dados dos usuários? Sendo parte da Meta Platforms, ele realiza integração ou compartilhamento de dados com outros bancos da empresa?**
    * **R:** Sim. A Meta utiliza uma infraestrutura unificada de Data Lake e Data Warehouses, integrando dados do Instagram, Facebook e Threads para perfilamento de anúncios, segurança e treinamento de modelos de IA.

16. **Como a arquitetura de sistemas do Instagram permite processar e armazenar bilhões de mídias e interações diariamente?**
    * **R:** Através de processamento assíncrono (filas de mensagens com RabbitMQ/Kafka), divisão horizontal de bancos de dados (*sharding*) e uma vasta rede global de servidores de borda (Edge Servers).

17. **Como o Instagram consegue armazenar o volume massivo de milhões de vídeos e fotos publicados todos os dias?**
    * **R:** Aplicando algoritmos agressivos de compressão de mídia, utilizando camadas de armazenamento (dados antigos vão para discos mais lentos e baratos) e eliminação de duplicatas na infraestrutura global da Meta.