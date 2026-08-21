# Criptografia

## Algoritmo
Conjunto de regras e instruções matemáticas utilizado para transformar a informação legível (*texto claro*) em um código ilegível (*texto cifrado*), bem como realizar o processo inverso de decodificação.

---

## Chave
Sequência de bits ou caracteres utilizada pelo algoritmo criptográfico para trancar (cifrar) ou destrancar (decifrar) a informação. A segurança dos dados depende diretamente do tamanho e do segredo dessa chave.

---

## Criptografia Simétrica
Modelo criptográfico que utiliza **uma única chave** tanto para cifrar quanto para decifrar os dados.
* **Vantagens:** Alta velocidade de processamento e baixo consumo computacional.
* **Desafio:** A necessidade de compartilhar a chave secreta com o destinatário de forma prévia e segura.
* **Exemplos comuns:** AES, DES, ChaCha20.

---

## Criptografia Assimétrica
Modelo criptográfico que trabalha com um **par de chaves matematicamente conectadas**:
* **Chave Pública:** Compartilhada abertamente com qualquer pessoa, usada para **cifrar** mensagens.
* **Chave Privada:** Mantida em segredo absoluto pelo dono, usada para **decifrar** mensagens cifradas com a sua chave pública correspondente.
* **Vantagens:** Elimina o risco do compartilhamento prévio da chave secreta.
* **Desafio:** Processamento computacional mais lento em comparação à simétrica.
* **Exemplos comuns:** RSA, ECC (Curvas Elípticas), Diffie-Hellman.

---

## Questionário de Estudo do Algoritmo: AES (Advanced Encryption Standard)

1. **O que é o algoritmo pesquisado?**
   * **R:** O AES (*Advanced Encryption Standard*) é um algoritmo de criptografia simétrica amplamente adotado no mundo como o padrão global para proteção de dados eletrônicos em repouso e em trânsito.

2. **Quando ele foi desenvolvido e quem foi responsável por sua criação?**
   * **R:** Foi desenvolvido no final dos anos 1990 pelos criptógrafos belgas Joan Daemen e Vincent Rijmen (originalmente chamado de *Rijndael*) e oficializado pelo NIST (Instituto Nacional de Padrões e Tecnologia dos EUA) no ano de 2001.

3. **Como esse algoritmo protege os dados? Explique seu funcionamento de maneira simples, sem a necessidade de apresentar os cálculos matemáticos envolvidos.**
   * **R:** O AES organiza os dados em blocos organizados em matrizes 4x4 (o Estado). Ele embaralha essas matrizes ao longo de várias rodadas repetitivas por meio de 4 etapas: substituição de bytes (SubBytes), deslocamento de linhas (ShiftRows), mistura de colunas (MixColumns) e adição da chave (AddRoundKey). Ao final, os dados originais se tornam completamente irreconhecíveis sem a chave correspondente.

4. **Quais tamanhos de chave podem ser utilizados pelo algoritmo?**
   * **R:** Suporta três tamanhos de chave: **128 bits** (10 rodadas de embaralhamento), **192 bits** (12 rodadas) e **256 bits** (14 rodadas).

5. **O algoritmo utiliza uma cifra de bloco ou de fluxo? Explique brevemente o que isso significa.**
   * **R:** Utiliza **cifra de bloco**. Isso significa que ele divide os dados em pedaços de tamanho fixo (sempre blocos de 128 bits / 16 bytes) e processa bloco por bloco, diferente de cifras de fluxo que criptografam bit a bit contínuo.

6. **Onde esse algoritmo foi ou ainda é utilizado na prática? Apresente exemplos de aplicações, sistemas ou tecnologias.**
   * **R:** É o padrão em segurança de redes Wi-Fi (WPA2/WPA3), conexões HTTPS via TLS/SSL, criptografia de ponta a ponta no WhatsApp/Signal, compactadores de arquivo (WinRAR/7-Zip) e criptografia de disco completo (BitLocker no Windows e FileVault no macOS).

7. **Esse algoritmo é considerado seguro para utilização em novas aplicações atualmente? Justifique.**
   * **R:** **Sim, extremamente seguro.** Não existem ataques práticos conhecidos capazes de quebrar o AES por força bruta; testar todas as combinações de uma chave AES-128 levaria bilhões de anos com os supercomputadores atuais. Além disso, o AES-256 é amplamente considerado resistente até mesmo a futuros computadores quânticos.

8. **Quais são as principais vantagens e limitações do algoritmo?**
   * **R:**
     * **Vantagens:** Altíssimo nível de segurança, excelente desempenho, suporte nativo por instruções de hardware na maioria dos processadores modernos (Intel/AMD AES-NI, processadores ARM) e baixo consumo de memória.
     * **Limitações:** Por ser simétrico, depende de um canal seguro à parte para trocar a chave entre as partes e exige o uso de modos de operação adequados (como GCM ou CBC com preenchimento) para evitar vulnerabilidades de implementação.