# Dicionário dos dados

| Nº | Coluna | Descrição | Tipo de dado |
|---|---|---|---|
| 0 | Date | Data em que o jogo foi realizado | Date |
| 1 | GameID | Identificador único do jogo | Int |
| 2 | Drive | Número da campanha (drive) ofensiva dentro do jogo | Int |
| 3 | qtr | Quarto do jogo em que a jogada ocorreu (1 a 4 e prorrogação) | Categórico (5 tipos) |
| 4 | down | Tentativa (down) da jogada (1 a 4) | Categórico (4 tipos) |
| 5 | time | Tempo restante no quarto, no formato mm:ss | String |
| 6 | TimeUnder | Minutos restantes no quarto/metade do jogo | Int |
| 7 | TimeSecs | Segundos restantes até o fim da metade do jogo | Float |
| 8 | PlayTimeDiff | Tempo decorrido entre a jogada anterior e a atual, em segundos | Float |
| 9 | SideofField | Time em cujo lado do campo a bola está posicionada | Categórico (37 tipos) |
| 10 | yrdln | Jardas até a linha de gol, contadas a partir da linha do campo (1 a 50) | Float |
| 11 | yrdline100 | Distância da bola até a end zone adversária (1 a 99 jardas) | Float |
| 12 | ydstogo | Jardas que faltam para conquistar o first down | Int |
| 13 | ydsnet | Jardas líquidas ganhas pela campanha até o momento | Int |
| 14 | GoalToGo | Indica se a situação é goal to go (jardas restantes até a end zone) | Boolean |
| 15 | FirstDown | Indica se a jogada resultou em first down | Boolean |
| 16 | posteam | Time que está com a posse de bola (ataque) | Categórico (35 tipos) |
| 17 | DefensiveTeam | Time que está na defesa | Categórico (35 tipos) |
| 18 | desc | Descrição textual detalhada da jogada | String |
| 19 | PlayAttempted | Indica se uma jogada foi tentada (sempre 1) | Boolean |
| 20 | Yards.Gained | Jardas ganhas (ou perdidas, se negativo) na jogada | Int |
| 21 | sp | Indica se a jogada foi pontuadora (scoring play) | Boolean |
| 22 | Touchdown | Indica se a jogada resultou em touchdown | Boolean |
| 23 | ExPointResult | Resultado do ponto extra (convertido, perdido, bloqueado, abortado) | Categórico (4 tipos) |
| 24 | TwoPointConv | Resultado da tentativa de conversão de 2 pontos (sucesso ou falha) | Categórico (2 tipos) |
| 25 | DefTwoPoint | Resultado de conversão de 2 pontos pela defesa | Categórico (2 tipos) |
| 26 | Safety | Indica se a jogada resultou em safety | Boolean |
| 27 | Onsidekick | Indica se foi um chute curto (onside kick) | Boolean |
| 28 | PuntResult | Resultado do punt (limpo ou bloqueado) | Categórico (2 tipos) |
| 29 | PlayType | Tipo da jogada (passe, corrida, punt, field goal, kickoff etc.) | Categórico (15 tipos) |
| 30 | Passer | Nome do passador (quarterback) | String |
| 31 | Passer_ID | Identificador do passador | String |
| 32 | PassAttempt | Indica se houve tentativa de passe | Boolean |
| 33 | PassOutcome | Resultado do passe (completo ou incompleto) | Categórico (2 tipos) |
| 34 | PassLength | Tamanho do passe (curto ou longo) | Categórico (3 tipos) |
| 35 | AirYards | Jardas percorridas pela bola no ar | Int |
| 36 | YardsAfterCatch | Jardas ganhas pelo recebedor após a recepção | Int |
| 37 | QBHit | Indica se o quarterback foi atingido na jogada | Boolean |
| 38 | PassLocation | Região do campo para onde o passe foi direcionado (esquerda, meio, direita) | Categórico (3 tipos) |
| 39 | InterceptionThrown | Indica se o passe foi interceptado | Boolean |
| 40 | Interceptor | Nome do jogador que interceptou o passe | String |
| 41 | Rusher | Nome do jogador que correu com a bola | String |
| 42 | Rusher_ID | Identificador do corredor | String |
| 43 | RushAttempt | Indica se houve tentativa de corrida | Boolean |
| 44 | RunLocation | Região do campo em que a corrida ocorreu (esquerda, meio, direita) | Categórico (3 tipos) |
| 45 | RunGap | Espaço da linha ofensiva por onde a corrida passou (end, guard, tackle) | Categórico (3 tipos) |
| 46 | Receiver | Nome do recebedor do passe | String |
| 47 | Receiver_ID | Identificador do recebedor | String |
| 48 | Reception | Indica se houve recepção completa | Boolean |
| 49 | ReturnResult | Resultado do retorno (de punt ou kickoff) | Categórico (3 tipos) |
| 50 | Returner | Nome do jogador que fez o retorno | String |
| 51 | BlockingPlayer | Nome do jogador que bloqueou o chute | String |
| 52 | Tackler1 | Nome do primeiro jogador que realizou o tackle | String |
| 53 | Tackler2 | Nome do segundo jogador que realizou o tackle | String |
| 54 | FieldGoalResult | Resultado do field goal (convertido, errado, bloqueado) | Categórico (3 tipos) |
| 55 | FieldGoalDistance | Distância do field goal em jardas | Float |
| 56 | Fumble | Indica se houve fumble (bola solta) | Boolean |
| 57 | RecFumbTeam | Time que recuperou o fumble | Categórico (34 tipos) |
| 58 | RecFumbPlayer | Jogador que recuperou o fumble | String |
| 59 | Sack | Indica se houve sack no quarterback | Boolean |
| 60 | Challenge.Replay | Indica se houve desafio (challenge) ou revisão por replay | Boolean |
| 61 | ChalReplayResult | Resultado do desafio (mantida ou revertida) | Categórico (2 tipos) |
| 62 | Accepted.Penalty | Indica se uma penalidade foi aceita | Boolean |
| 63 | PenalizedTeam | Time penalizado | Categórico (34 tipos) |
| 64 | PenaltyType | Tipo da penalidade | Categórico (77 tipos) |
| 65 | PenalizedPlayer | Nome do jogador penalizado | String |
| 66 | Penalty.Yards | Jardas da penalidade | Int |
| 67 | PosTeamScore | Pontuação do time com a posse de bola | Int |
| 68 | DefTeamScore | Pontuação do time na defesa | Int |
| 69 | ScoreDiff | Diferença de placar (time com a posse menos time na defesa) | Int |
| 70 | AbsScoreDiff | Diferença absoluta de placar | Int |
| 71 | HomeTeam | Time mandante | Categórico (35 tipos) |
| 72 | AwayTeam | Time visitante | Categórico (35 tipos) |
| 73 | Timeout_Indicator | Indica se houve pedido de tempo (timeout) | Boolean |
| 74 | Timeout_Team | Time que pediu o timeout | Categórico (35 tipos) |
| 75 | posteam_timeouts_pre | Timeouts restantes do time com a posse antes da jogada | Int |
| 76 | HomeTimeouts_Remaining_Pre | Timeouts restantes do mandante antes da jogada | Int |
| 77 | AwayTimeouts_Remaining_Pre | Timeouts restantes do visitante antes da jogada | Int |
| 78 | HomeTimeouts_Remaining_Post | Timeouts restantes do mandante após a jogada | Int |
| 79 | AwayTimeouts_Remaining_Post | Timeouts restantes do visitante após a jogada | Int |
| 80 | No_Score_Prob | Probabilidade de nenhuma pontuação até o fim da campanha | Float |
| 81 | Opp_Field_Goal_Prob | Probabilidade de o adversário fazer um field goal | Float |
| 82 | Opp_Safety_Prob | Probabilidade de o adversário fazer um safety | Float |
| 83 | Opp_Touchdown_Prob | Probabilidade de o adversário fazer um touchdown | Float |
| 84 | Field_Goal_Prob | Probabilidade de o time com a posse fazer um field goal | Float |
| 85 | Safety_Prob | Probabilidade de o time com a posse sofrer um safety | Float |
| 86 | Touchdown_Prob | Probabilidade de o time com a posse fazer um touchdown | Float |
| 87 | ExPoint_Prob | Probabilidade de conversão do ponto extra | Float |
| 88 | TwoPoint_Prob | Probabilidade de conversão de 2 pontos | Float |
| 89 | ExpPts | Pontos esperados (Expected Points) antes da jogada | Float |
| 90 | EPA | Expected Points Added: variação dos pontos esperados causada pela jogada | Float |
| 91 | airEPA | EPA atribuído à parte aérea do passe (jardas no ar) | Float |
| 92 | yacEPA | EPA atribuído às jardas após a recepção | Float |
| 93 | Home_WP_pre | Probabilidade de vitória do mandante antes da jogada | Float |
| 94 | Away_WP_pre | Probabilidade de vitória do visitante antes da jogada | Float |
| 95 | Home_WP_post | Probabilidade de vitória do mandante após a jogada | Float |
| 96 | Away_WP_post | Probabilidade de vitória do visitante após a jogada | Float |
| 97 | Win_Prob | Probabilidade de vitória do time com a posse de bola | Float |
| 98 | WPA | Win Probability Added: variação da probabilidade de vitória causada pela jogada | Float |
| 99 | airWPA | WPA atribuído à parte aérea do passe | Float |
| 100 | yacWPA | WPA atribuído às jardas após a recepção | Float |
| 101 | Season | Temporada (ano) a que o jogo pertence | Int |

