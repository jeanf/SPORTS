if not exists(select 1 from T_TDC)
begin
	insert into T_TDC(tdc_code, tdc_label)
	values ('XX', 'Pas de type de constante'),
	('GE', 'Genre humain')
end
if not exists(select 1 from T_CONST)
begin
	insert into T_CONST (tdc_id, const_code, const_label, const_ordre)
	values (0, 'XXXXX', 'Pas de constante', 1),
	(1, 'GEFEM', 'Femme', 1),
	(1, 'GEHOM', 'Homme', 2),
	(1, 'GEMIX', 'Mixte', 3)
end
