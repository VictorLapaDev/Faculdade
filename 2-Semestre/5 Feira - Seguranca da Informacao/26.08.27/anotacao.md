# Criptografia Assimétrica

## Conceito Fundamental
A **criptografia assimétrica** (ou criptografia de chave pública) é um modelo de segurança baseado em um **par de chaves matematicamente relacionadas**, em que cada chave possui uma função específica e distinta dentro do sistema.

---

## O Par de Chaves

* **Chave Pública:**
  * Pode ser livremente compartilhada, distribuída e disponibilizada para qualquer pessoa.
  * **Não precisa** ser mantida em segredo.
  * Usada para **cifrar** mensagens direcionadas ao dono do par ou para **verificar** suas assinaturas digitais.

* **Chave Privada:**
  * Deve ser mantida sob **controle absoluto e secreto** do seu proprietário.
  * **Nunca** deve ser compartilhada.
  * Usada para **decifrar** mensagens recebidas ou para **gerar** assinaturas digitais.

> **Importante:** Embora a chave pública seja derivada da chave privada, é matematicamente inviável deduzir a chave privada a partir da chave pública.

---

## Como Funciona na Prática (Mecanismo de Operação)

O funcionamento depende do objetivo da comunicação:

1. **Garantia de Confidencialidade (Cifragem de Mensagem):**
   * **Passo 1:** O remetente obtém a **Chave Pública** do destinatário.
   * **Passo 2:** A mensagem é cifrada utilizando essa chave pública.
   * **Passo 3:** A mensagem viaja de forma ilegível pela rede.
   * **Passo 4:** Apenas a **Chave Privada** do destinatário consegue decifrar a mensagem.

2. **Garantia de Autenticidade (Assinatura Digital):**
   * **Passo 1:** O remetente assina um arquivo ou mensagem usando sua própria **Chave Privada**.
   * **Passo 2:** O destinatário utiliza a **Chave Pública** do remetente para verificar a assinatura.
   * **Passo 3:** Se a verificação for bem-sucedida, confirma-se que a mensagem realmente veio do remetente e não foi alterada (integridade e não-repúdio).

---

## Principais Características

* **Dispensa o compartilhamento prévio de segredos:** Não há necessidade de enviar uma chave secreta antes da comunicação, eliminando o principal risco da criptografia simétrica.
* **Versatilidade de aplicações:** Permite não apenas o sigilo de dados, mas também a autenticação de identidade e o não-repúdio (garantia de autoria).
* **Maior custo computacional:** Exige mais processamento e memória do que a criptografia simétrica, sendo centenas de vezes mais lenta para criptografar grandes volumes de dados.

---

## Sistemas Híbridos (A Solução do Mundo Real)

Na prática (como em conexões **HTTPS** ou **TLS/SSL**), a criptografia assimétrica e a simétrica são combinadas para obter o melhor de dois mundos:

* **Fase 1 (Assimétrica):** É usada para autenticar o servidor e trocar com segurança uma chave simétrica temporária (*Chave de Sessão*).
* **Fase 2 (Simétrica):** A troca contínua de dados da navegação passa a ser feita via criptografia simétrica (como o AES), garantindo máxima velocidade.

---

## Algoritmos Mais Utilizados

* **RSA (*Rivest-Shamir-Adleman*):** Baseado na dificuldade matemática de fatorar números inteiros primos extremamente grandes.
* **ECC (*Elliptic Curve Cryptography* / Criptografia de Curvas Elípticas):** Baseado em propriedades de curvas algébricas. Oferece o mesmo nível de segurança do RSA utilizando chaves significativamente menores (ex: uma chave ECC de 256 bits equivale em segurança a uma chave RSA de 3072 bits).
* **Diffie-Hellman (DH):** Algoritmo específico para troca segura de chaves em canais inseguros.

---

## Principais Desafios e Vulnerabilidades

* **Ataque *Man-in-the-Middle* (MitM):** Se um atacante interceptar e trocar a chave pública antes de ela chegar ao destinatário, ele poderá ler as mensagens. Para evitar isso, utilizam-se **Certificados Digitais** e **Infraestruturas de Chaves Públicas (PKI)**.
* **Ameaça Quântica:** Computadores quânticos viáveis no futuro (usando o *Algoritmo de Shor*) poderão quebrar facilmente os algoritmos RSA e ECC atuais. Por isso, a indústria já desenvolve a **Criptografia Pós-Quântica (PQC)**.


# Criptografia Simétrica vs. Criptografia Assimétrica

| Característica | Criptografia Simétrica | Criptografia Assimétrica |
| :--- | :--- | :--- |
| **Uso de Chaves** | Utiliza **uma única chave** secreta para cifrar e decifrar. | Utiliza **um par de chaves**: uma **pública** (cifrar) e uma **privada** (decifrar). |
| **Velocidade** | **Extremamente rápida** e de baixo processamento. | **Lenta** (requer cálculos matemáticos complexos). |
| **Volume de Dados** | Ideal para **grandes volumes de dados** (arquivos, discos, streams). | Ideal para **pequenos volumes de dados** (troca de chaves, assinaturas). |
| **Distribuição de Chaves** | **Desafio alto**: a chave precisa ser compartilhada em segredo previamente. | **Sem desafio**: a chave pública pode ser distribuída abertamente. |
| **Exemplos de Algoritmos** | AES, DES, 3DES, ChaCha20. | RSA, ECC, Diffie-Hellman, DSA. |

---

## Qual é a melhor?

**A resposta é: depende do problema.** Nenhum dos dois modelos é "melhor" de forma absoluta; ambos atendem a necessidades completamente diferentes.

* **Use Criptografia Simétrica quando:** O foco for a rapidez e o processamento de grandes quantidades de dados onde ambas as partes já possuem ou podem compartilhar a chave em segredo (ex.: criptografia de disco rígido, banco de dados, backups).
* **Use Criptografia Assimétrica quando:** O foco for a comunicação entre partes desconhecidas na rede sem compartilhamento prévio de segredo, ou quando for necessária autenticação e assinatura digital (ex.: e-mail seguro, autenticação SSH, validação de autoria).

> **A Solução Prática:** Na vida real, a maioria das tecnologias modernas não escolhe uma em detrimento da outra, mas utiliza **sistemas híbridos**. A criptografia assimétrica é usada primeiro para autenticar e trocar uma chave temporária com segurança; em seguida, a criptografia simétrica assume para transmitir os dados pesados em alta velocidade.