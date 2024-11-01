USE oscar_database;

-- SELECT COUNT(*) FROM indicados WHERE "Name" Like "%Natalie Portman%";

-- SELECT * FROM indicados_ao_oscar WHERE nome_do_indicado like "%Natalie Portman%" AND vencedor = "true";

-- SELECT * FROM indicados_ao_oscar WHERE nome_do_indicado like "%Amy Adams%";

-- SELECT * FROM indicados_ao_oscar WHERE nome_do_filme like "%Toy Story%" AND vencedor = "true";

-- SELECT * FROM indicados_ao_oscar WHERE categoria = "ACTRESS" ORDER BY ano_cerimonia DESC;

-- SELECT * FROM indicados_ao_oscar WHERE vencedor = "true" AND categoria = "ACTRESS";

-- UPDATE indicados_ao_oscar SET vencedor = "1" WHERE vencedor = "true";
-- UPDATE indicados_ao_oscar SET vencedor = "0" WHERE vencedor = "false";

-- SELECT nome_do_filme, cerimonia FROM indicados_ao_oscar WHERE nome_do_filme like "%Crash";

-- SELECT * FROM indicados_ao_oscar WHERE nome_do_filme like "Central%";

-- SELECT * FROM indicados_ao_oscar WHERE nome_do_indicado like "%Denzel Washington%" AND vencedor = "1";

-- SELECT * FROM indicados_ao_oscar WHERE categoria = "BEST PICTURE" AND vencedor = "1";

-- SELECT DISTINCT nome_do_filme
-- FROM indicados_ao_oscar
-- WHERE vencedor = 1 
-- AND categoria = 'BEST PICTURE'
-- AND nome_do_filme IN (
-- SELECT nome_do_filme
-- FROM indicados_ao_oscar
-- WHERE categoria = 'DIRECTING' 
-- AND vencedor = 1 );

-- SELECT nome_do_indicado, ano_cerimonia FROM indicados_ao_oscar WHERE nome_do_indicado like "%Denzel Washington%" AND nome_do_indicado like "%Jamie Foxx%";
