# E o Oscar vai para... ?
Este repositório contém uma base de dados sobre os indicados ao Oscar, e a atividade tem como objetivo a prática de consultas no MySQL Workbench.

## Exercícios

### 1) Quantas vezes Natalie Portman foi indicada ao Oscar?
**Resposta**:  3 vezes

Q:
```sql
SELECT COUNT(*) FROM indicados WHERE "Name" Like "%Natalie Portman%";
```
---

### 2) Quantos Oscars Natalie Portman ganhou?
**Resposta**: Ela já ganhou 1 Oscar.

Q:
```sql
SELECT * FROM indicados_ao_oscar WHERE nome_do_indicado like "%Natalie Portman%" AND vencedor = "true";
```
---

### 3) Amy Adams já ganhou algum Oscar?
**Resposta**: Não, Amy Adams nunca ganhou um Oscar.

Q:
```sql
SELECT * FROM indicados_ao_oscar WHERE nome_do_indicado like "%Amy Adams%";
```
---

### 4) A série de filmes Toy Story ganhou um Oscar em quais anos?
**Resposta**: Toy Story já ganhou o Oscar em 2011 e 2020.

Q:
```sql
SELECT * FROM indicados_ao_oscar WHERE nome_do_filme like "%Toy Story%" AND vencedor = "true";
```
---

### 5) A partir de que ano a categoria "Actress" deixa de existir?
**Resposta**:  

### 6) Quem ganhou o primeiro Oscar de Melhor Atriz? Em que ano?
**Resposta**:  


### 7) No campo "Vencedor", altere todos os valores com "true" para 1 e todos os valores "false" para 0.

### 8) Em qual edição do Oscar o filme *Crash* concorreu?
**Resposta**:  

### 9) O filme *Central do Brasil* aparece no Oscar?
**Resposta**:  

### 10) Inclua no banco 3 filmes que nunca foram nomeados ao Oscar, mas que merecem ser.

### 11) Denzel Washington já ganhou algum Oscar?
**Resposta**:  


### 12) Quais filmes ganharam o Oscar de Melhor Filme?
**Resposta**:  


### Bonus: Quais filmes ganharam o Oscar de Melhor Filme e Melhor Diretor na mesma cerimônia?
**Resposta**:  

### Bonus: Denzel Washington e Jamie Foxx já concorreram ao Oscar no mesmo ano?
**Resposta**:  

## Como Executar
1. Clone este repositório.
2. Importe o arquivo SQL no MySQL Workbench.

## Tecnologias Utilizadas
- MySQL Workbench
- SQL

## Autor
Este projeto foi desenvolvido como parte de uma tarefa para prática de consultas em bases de dados no MySQL Workbench, proposta pelo Professor Gabriel.

---
