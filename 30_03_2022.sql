SELECT * FROM mercadinho.funcionario;

INSERT INTO mercadinho.funcionario (nome_func, rua, cidade) VALUES ('coyote', 'toon', 'hollyqood');
INSERT INTO mercadinho.funcionario (nome_func, rua, cidade) VALUES ('rabbit', 'tunnel', 'carrotville');
INSERT INTO mercadinho.funcionario (nome_func, rua, cidade) VALUES ('smith', 'revolver', 'death valley');
INSERT INTO mercadinho.funcionario (nome_func, rua, cidade) VALUES ('willians', 'seaview', 'seatle');

SELECT * FROM mercadinho.funcionario_pi;

INSERT INTO mercadinho.funcionario_pi (nome_agencia, nome_func, salario) VALUES ('mesa', 'coyote', '1500');
INSERT INTO mercadinho.funcionario_pi (nome_agencia, nome_func, salario) VALUES ('mesa', 'rabbit', '1300');
INSERT INTO mercadinho.funcionario_pi (nome_agencia, nome_func, salario) VALUES ('redmond', 'willians', '5300');
INSERT INTO mercadinho.funcionario_pi (nome_agencia, nome_func, salario) VALUES ('redmond', 'gates', '1500');
INSERT INTO mercadinho.funcionario_pi VALUES (5, 'redmond', 'bill', '1600');

CREATE VIEW f AS
SELECT * FROM mercadinho.funcionario;

CREATE VIEW fp AS
SELECT * FROM mercadinho.funcionario_pi;


select * from f
	join
	fp
    on
    f.nome_func = fp.nome_func;
    
select * from f
	left join
	fp
	on
	f.nome_func = fp.nome_func;
    
select * from f
	right join
	fp
	on
	f.nome_func = fp.nome_func;

select * from mercadinho.funcionario as fun
	join
	mercadinho.funcionario_pi as func_pi
    on
    fun.nome_func = func_pi.nome_func;
    
select * from f
	join
	fp
	on
	f.nome_func = fp.nome_func;
    
    
select sum(fp.salario) from f 
	join fp
    on f.nome_func = fp.nome_func;
    
select * from f 
	join fp
    on f.nome_func = fp.nome_func
    where fp.salario >= 1500;
    
select *  from f join fp
    on f.nome_func = fp.nome_func;
    
select f.nome_func from f 
	join fp
    on f.nome_func = fp.nome_func
    where fp.salario = (select max(fp.salario) from f join fp
    on f.nome_func = fp.nome_func);

SELECT * FROM mercadinho.funcionario_pi;

select f.nome_func from f 
	join fp
    on f.nome_func = fp.nome_func
    where fp.salario in (1300, 5300);
    
    
select f.nome_func from f 
	join fp
    on f.nome_func = fp.nome_func
    where fp.salario <> 1300 and fp.salario <> 5300;
    
select f.nome_func from f 
	join fp
    on f.nome_func = fp.nome_func
    where fp.salario not in (1300, 5300);
