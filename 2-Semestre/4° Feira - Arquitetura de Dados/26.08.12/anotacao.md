Conceito - É a organização dos componentes responsaveis pela coleta, armazenamento, integração, processamento, governança e disponibilização dos dados necessários para suportar operações e análises.

# Instagram

## Banco de Dados Utilizados:

O Instagram usa principalmente o **PostgreSQL para dados relacionais (como contas e relações de amizade)**

 **Cassandra para dados em grande escala e alta velocidade não relacional**.

 A plataforma também integrou ferramentas do ecossistema da Meta, como o Apache Hive e servidores próprios em nuvem. 

## Infraestrutura Utilizada

**O Instagram não utiliza a Amazon Web Services (AWS) para sua infraestrutura principal**. Após ser comprado pelo Facebook (atual Meta) em 2012, o aplicativo migrou gradualmente seus servidores e dados para os datacenters próprios da empresa.**Arquitetura e Hospedagem do InstagramDatacenters próprios:** A infraestrutura é gerenciada diretamente pela Meta em suas próprias instalações de servidores ao redor do mundo.**Legado na AWS:** Nos primeiros anos de vida, antes da aquisição, o Instagram operava inteiramente sob a nuvem da Amazon Web Services.**Migração:** A transição buscou otimizar custos, integração de sistemas e escala junto à tecnologia proprietária do grupo Meta.

## Dados Produzidos

Nome das pessoas, email, fotos, videos, localização, horários,