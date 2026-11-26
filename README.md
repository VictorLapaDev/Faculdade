<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=993399&height=110&section=header"/>

# Inteligência e Análise de Dados — Caderno de Aulas & Notebooks

Repositório destinado ao versionamento de **notebooks, scripts, exercícios práticos e laboratórios** desenvolvidos ao longo da graduação em **Inteligência e Análise de Dados** no SENAI Suíço-Brasileira, organizados cronologicamente por semestres e disciplinas.

> *Nota: Projetos integradores e análises realizadas com bases de dados reais ou sensíveis são mantidos em repositórios privados por questões de confidencialidade e LGPD. Este espaço concentra os estudos técnicos, práticas de aula e provas de conceito.*

---

## Estrutura do Repositório

```text
├── 1-semestre/
│   ├── arquitetura-de-dados/
│   ├── estrutura-de-dados/
│   ├── extensao/
│   ├── logica-de-programacao/
│   └── metodologia-agil/
├── 2-semestre/
│   ├── arquitetura-de-dados/
│   ├── linguagens-aplicadas-banco-de-dados/
│   │   ├── 01-web-scraping-e-apis/
│   │   ├── 02-bancos-relacionais-sql/
│   │   ├── 03-visao-computacional/
│   │   └── 04-nosql-mongodb/
│   ├── logica-programacao-analise-de-dados/
│   │   └── poo_musica/
│   ├── redes/
│   └── seguranca-da-informacao/
└── README.md

```

---

## Conteúdo por Semestre e Disciplina

### 1º Semestre

* **Estrutura de Dados** (`1-semestre/estrutura-de-dados/`)
* Manipulação e organização de dados em memória, coleções (`listas`, `tuplas`, `conjuntos`, `dicionários`), filas, pilhas e análise de eficiência de algoritmos.


* **Lógica de Programação** (`1-semestre/logica-de-programacao/`)
* Fundamentos de algoritmos em Python, estruturas condicionais, laços de repetição, modularização com funções e resolução de problemas lógicos.


* **Arquitetura de Dados** (`1-semestre/arquitetura-de-dados/`)
* Fundamentos de modelagem de dados, estruturação de bases analíticas e conceitos iniciais de armazenamento e fluxo de informações.


* **Metodologia Ágil** (`1-semestre/metodologia-agil/`)
* Práticas e frameworks ágeis aplicados ao desenvolvimento de projetos de dados e software (`Scrum`, `Kanban`, gestão de backlog e entregas iterativas).


* **Extensão** (`1-semestre/extensao/`)
* Atividades práticas, oficinas e projetos de extensão universitária voltados à aplicação social e comunitária de tecnologia e dados.



---

### 2º Semestre

* **Linguagens Aplicadas a Banco de Dados** (`2-semestre/linguagens-aplicadas-banco-de-dados/`)
* `01-web-scraping-e-apis`: Coleta automatizada de dados na web utilizando `BeautifulSoup`, `Selenium` e consumo de APIs REST.
* `02-bancos-relacionais-sql`: Manipulação e integração de dados com `SQLite` e `MySQL`, consultas com `JOIN`, normalização (Formas Normais) e persistência de dados extraídos via scraping.
* `03-visao-computacional`: Processamento, recorte, análise de diferenças e introdução ao reconhecimento de imagens com Python.
* `04-nosql-mongodb`: Estruturação de documentos JSON, operações CRUD, pipelines de agregação, armazenamento de imagens com `GridFS` e construção de aplicações interativas com `Streamlit`.


* **Lógica de Programação Aplicada à Análise de Dados** (`2-semestre/logica-programacao-analise-de-dados/`)
* Fundamentos e prática de Programação Orientada a Objetos (POO) em Python, incluindo o projeto incremental `poo_musica` versionado por etapas de aula para preservação dos logs de execução.


* **Arquitetura de Dados** (`2-semestre/arquitetura-de-dados/`)
* Aprofundamento em engenharia de dados, pipelines ETL/ELT, modelagem analítica e organização de dados em camadas estruturadas.


* **Redes** (`2-semestre/redes/`)
* Arquitetura de redes locais (LAN/WLAN), protocolos TCP/IP, endereçamento IPv4/IPv6, serviços de infraestrutura (DHCP, DNS) e roteamento.


* **Segurança da Informação** (`2-semestre/seguranca-da-informacao/`)
* Princípios de segurança (CID), boas práticas de proteção de dados, gestão de credenciais e controle de acesso em ambientes computacionais.



---

## Tecnologias e Ferramentas

---

## Como Executar os Notebooks Localmente

1. **Clone o repositório:**
```bash
git clone [https://github.com/VictorLapaDev/NOME-DO-REPOSITORIO.git](https://github.com/VictorLapaDev/NOME-DO-REPOSITORIO.git)
cd NOME-DO-REPOSITORIO

```


2. **Crie e ative um ambiente virtual:**
```bash
py -m venv venv
# Windows (Git Bash)
source venv/Scripts/activate

```


3. **Instale as dependências principais:**
```bash
pip install pandas numpy matplotlib seaborn plotly jupyter ipykernel pymongo streamlit beautifulsoup4 selenium requests opencv-python

```



> **Nota sobre segurança:** Arquivos `.env` com credenciais locais ou strings de conexão (como instâncias do MongoDB) são omitidos via `.gitignore`.

---

## Autor

**Victor Lapa de Vasconcelos**

