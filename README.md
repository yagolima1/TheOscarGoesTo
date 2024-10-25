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
**Resposta**: Ela deixa de existir a partir de 1977.

Q:
```sql
SELECT * FROM indicados_ao_oscar WHERE categoria = "ACTRESS" ORDER BY ano_cerimonia DESC;
```
---

### 6) Quem ganhou o primeiro Oscar de Melhor Atriz? Em que ano?
**Resposta**: A primeira mulher a ganhar o Oscar de "Melhor Atriz" foi a Janet Gaynor, no ano de 1928.

Q:
```sql
SELECT * FROM indicados_ao_oscar WHERE vencedor = "true" AND categoria = "ACTRESS";
```
---

### 7) No campo "Vencedor", altere todos os valores com "true" para 1 e todos os valores "false" para 0.

Q:
```sql
UPDATE indicados_ao_oscar SET vencedor = "1" WHERE vencedor = "true";
UPDATE indicados_ao_oscar SET vencedor = "0" WHERE vencedor = "false";
```
---

### 8) Em qual edição do Oscar o filme *Crash* concorreu?
**Resposta**: A 78° Edição

Q:
```sql
SELECT nome_do_filme, cerimonia FROM indicados_ao_oscar WHERE nome_do_filme like "%Crash";
```
---

### 9) O filme *Central do Brasil* aparece no Oscar?
**Resposta**: Sim, ele aparece no ano de 1999.

Q:
```sql
 SELECT * FROM indicados_ao_oscar WHERE nome_do_filme like "Central%";
```
---

### 10) Inclua no banco 3 filmes que nunca foram nomeados ao Oscar, mas que merecem ser.

Q:
```sql
 INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,cerimonia,categoria,nome_do_indicado,nome_do_filme,vencedor) VALUES (2004,2005,3,'Melhor Filme de Animação','Stephen Hillenburg','Bob Esponja: O Filme','true');
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,cerimonia,categoria,nome_do_indicado,nome_do_filme,vencedor) VALUES (2015,2016,3,'Melhor Filme de Animação','Stephen Hillenburg','Bob Esponja: Um Herói Fora d. Água','true');
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,cerimonia,categoria,nome_do_indicado,nome_do_filme,vencedor) VALUES (2019,2020,3,'Melhor Filme de Animação','Maurício de Sousa Produções','Turma da Mônica: O Filme','true');
```
---

### 11) Denzel Washington já ganhou algum Oscar?
**Resposta**: Sim! Ele já ganhou 2 vezes, um em 1990 e outro em 2002.

Q:
```sql
SELECT * FROM indicados_ao_oscar WHERE nome_do_indicado like "%Denzel Washington%" AND vencedor = "1";
```
---

### 12) Quais filmes ganharam o Oscar de Melhor Filme?
**Resposta**: Lawrence of Arabia
Tom Jones | My Fair Lady | The Sound of Music | A Man for All Seasons | In the Heat of the Night | Oliver! | Midnight Cowboy | Patton | The French Connection | The Godfather | The Sting | The Godfather Part II | One Flew over the Cuckoo's Nest | Rocky | Annie Hall | The Deer Hunter | Kramer vs. Kramer | Ordinary People | Chariots of Fire | Gandhi | Terms of Endearment | Amadeus | Out of Africa | Platoon | The Last Emperor | Rain Man | Driving Miss Daisy | Dances With Wolves | The Silence of the Lambs | Unforgiven | Schindler's List | Forrest Gump | Braveheart | The English Patient | Titanic | Shakespeare in Love | American Beauty | Gladiator | A Beautiful Mind | Chicago | The Lord of the Rings: The Return of the King | Million Dollar Baby | Crash | The Departed | No Country for Old Men | Slumdog Millionaire | The Hurt Locker | The King's Speech | The Artist | Argo | 12 Years a Slave | Birdman or (The Unexpected Virtue of Ignorance) | Spotlight | Moonlight | The Shape of Water | Green Book | Parasite | Nomadland | CODA | Everything Everywhere All at Once | Oppenheimer


```sql
SELECT * FROM indicados_ao_oscar WHERE categoria = "BEST PICTURE" AND vencedor = "1";
```
---

### Bonus: Quais filmes ganharam o Oscar de Melhor Filme e Melhor Diretor na mesma cerimônia?
**Resposta**: Nenhum filme venceu essas 2 categorias juntas.

```sql
SELECT * FROM indicados_ao_oscar WHERE vencedor = "1" AND categoria = "BEST PICTURE" AND categoria = "DIRECTING";
```
---

### Bonus: Denzel Washington e Jamie Foxx já concorreram ao Oscar no mesmo ano?
**Resposta**: Não, eles nunca concorreram ao Oscar no mesmo ano.

```sql
SELECT nome_do_indicado, ano_cerimonia FROM indicados_ao_oscar WHERE nome_do_indicado like "%Denzel Washington%" AND nome_do_indicado like "%Jamie Foxx%";
```
---

## Como Executar
1. Clone este repositório.
2. Importe o arquivo SQL no MySQL Workbench.

## Tecnologias Utilizadas
- MySQL Workbench
- SQL

## Autor
Este projeto foi desenvolvido como parte de uma tarefa para prática de consultas em bases de dados no MySQL Workbench, proposta pelo Professor Gabriel.

---
