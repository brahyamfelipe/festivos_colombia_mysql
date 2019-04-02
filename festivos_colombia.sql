CREATE DEFINER=`root`@`%` FUNCTION `es_festivo`(fechas DATE) RETURNS char(20) CHARSET latin1
BEGIN

DECLARE es_festivo int;
DECLARE anio int;
DECLARE a int;
DECLARE b int;
DECLARE c int;
DECLARE d int;
DECLARE e int;
DECLARE f int;
DECLARE g int;
DECLARE h int;
DECLARE i int;
DECLARE k int;
DECLARE l int;
DECLARE m int;
DECLARE n int;
DECLARE mes int;
DECLARE dia int;
DECLARE anio_nuevo int;
DECLARE dia_trabajo int;
DECLARE inmaculada_concepcion int;
DECLARE grito_independencia int;
DECLARE batalla_boyaca int;
DECLARE dia_raza int;
DECLARE indepedencia_cartagena int;
DECLARE reyes_magos int;
DECLARE san_jose int;
DECLARE san_pedro int;
DECLARE asuncion_virgen int;
DECLARE todos_los_santos int;
DECLARE jueves_santo int;
DECLARE viernes_santo int;
DECLARE pascua int;
DECLARE dia_asencion int;
DECLARE corpus_christi int;
DECLARE sagrado_corazon int;
DECLARE navidad int;

DECLARE dia_reyes_magos CHAR(20);
DECLARE dia_san_jose CHAR(20);
DECLARE dia_san_pedro CHAR(20);
DECLARE dia_asuncion_virgen CHAR(20);
DECLARE dia_todos_los_santos CHAR(20);
DECLARE dia_indepedencia_cartagena CHAR(20);
DECLARE dia_dia_raza CHAR(20);
DECLARE dia_asencion_cal CHAR(20);
DECLARE dia_corpus_cal CHAR(20);
DECLARE dia_sagrado_corazon CHAR(20);
DECLARE fecha_actual_comparar int;

SET anio = YEAR(fechas);

-- DIAS FIJOS
SET anio_nuevo = 11;
SET dia_trabajo = 15;
SET grito_independencia = 207;
SET batalla_boyaca = 78;
SET inmaculada_concepcion = 812;
SET navidad = 1225;


-- DIA DE REYES (6 DE ENERO)
SET dia_reyes_magos = concat(anio,'-01-06');
SELECT CASE WHEN DAYOFWEEK(dia_reyes_magos) = 2 THEN DATE_FORMAT(dia_reyes_magos,'%m%D') 
			WHEN DAYOFWEEK(dia_reyes_magos) = 3 THEN DATE_FORMAT(DATE_ADD(dia_reyes_magos,INTERVAL 6 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_reyes_magos) = 4 THEN DATE_FORMAT(DATE_ADD(dia_reyes_magos,INTERVAL 5 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_reyes_magos) = 5 THEN DATE_FORMAT(DATE_ADD(dia_reyes_magos,INTERVAL 4 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_reyes_magos) = 6 THEN DATE_FORMAT(DATE_ADD(dia_reyes_magos,INTERVAL 3 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_reyes_magos) = 7 THEN DATE_FORMAT(DATE_ADD(dia_reyes_magos,INTERVAL 2 DAY),'%m%D')
            WHEN DAYOFWEEK(dia_reyes_magos) = 1 THEN DATE_FORMAT(DATE_ADD(dia_reyes_magos,INTERVAL 1 DAY),'%m%D') END INTO reyes_magos;


-- DIA DE SAN JOSE (19 DE MARZO)
SET dia_san_jose = concat(anio,'-03-19');
SELECT CASE WHEN DAYOFWEEK(dia_san_jose) = 2 THEN DATE_FORMAT(dia_san_jose,'%m%D') 
			WHEN DAYOFWEEK(dia_san_jose) = 3 THEN DATE_FORMAT(DATE_ADD(dia_san_jose,INTERVAL 6 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_san_jose) = 4 THEN DATE_FORMAT(DATE_ADD(dia_san_jose,INTERVAL 5 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_san_jose) = 5 THEN DATE_FORMAT(DATE_ADD(dia_san_jose,INTERVAL 4 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_san_jose) = 6 THEN DATE_FORMAT(DATE_ADD(dia_san_jose,INTERVAL 3 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_san_jose) = 7 THEN DATE_FORMAT(DATE_ADD(dia_san_jose,INTERVAL 2 DAY),'%m%D')
            WHEN DAYOFWEEK(dia_san_jose) = 1 THEN DATE_FORMAT(DATE_ADD(dia_san_jose,INTERVAL 1 DAY),'%m%D') END INTO san_jose;


-- DIA DE SAN PEDRO (29 DE JUNIO)
SET dia_san_pedro = concat(anio,'-06-29');
SELECT CASE WHEN DAYOFWEEK(dia_san_pedro) = 2 THEN DATE_FORMAT(dia_san_pedro,'%m%D') 
			WHEN DAYOFWEEK(dia_san_pedro) = 3 THEN DATE_FORMAT(DATE_ADD(dia_san_pedro,INTERVAL 6 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_san_pedro) = 4 THEN DATE_FORMAT(DATE_ADD(dia_san_pedro,INTERVAL 5 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_san_pedro) = 5 THEN DATE_FORMAT(DATE_ADD(dia_san_pedro,INTERVAL 4 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_san_pedro) = 6 THEN DATE_FORMAT(DATE_ADD(dia_san_pedro,INTERVAL 3 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_san_pedro) = 7 THEN DATE_FORMAT(DATE_ADD(dia_san_pedro,INTERVAL 2 DAY),'%m%D')
            WHEN DAYOFWEEK(dia_san_pedro) = 1 THEN DATE_FORMAT(DATE_ADD(dia_san_pedro,INTERVAL 1 DAY),'%m%D') END INTO san_pedro;


-- DIA ASUNCION VIRGEN MARIA (15 DE AGOSTO)
SET dia_asuncion_virgen = concat(anio,'-08-15');
SELECT CASE WHEN DAYOFWEEK(dia_asuncion_virgen) = 2 THEN DATE_FORMAT(dia_asuncion_virgen,'%m%D') 
			WHEN DAYOFWEEK(dia_asuncion_virgen) = 3 THEN DATE_FORMAT(DATE_ADD(dia_asuncion_virgen,INTERVAL 6 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_asuncion_virgen) = 4 THEN DATE_FORMAT(DATE_ADD(dia_asuncion_virgen,INTERVAL 5 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_asuncion_virgen) = 5 THEN DATE_FORMAT(DATE_ADD(dia_asuncion_virgen,INTERVAL 4 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_asuncion_virgen) = 6 THEN DATE_FORMAT(DATE_ADD(dia_asuncion_virgen,INTERVAL 3 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_asuncion_virgen) = 7 THEN DATE_FORMAT(DATE_ADD(dia_asuncion_virgen,INTERVAL 2 DAY),'%m%D')
            WHEN DAYOFWEEK(dia_asuncion_virgen) = 1 THEN DATE_FORMAT(DATE_ADD(dia_asuncion_virgen,INTERVAL 1 DAY),'%m%D') END INTO asuncion_virgen;


-- DIA DE LA RAZA (12 DE OCTUBRE)
SET dia_dia_raza = concat(anio,'-10-12');
SELECT CASE WHEN DAYOFWEEK(dia_dia_raza) = 2 THEN DATE_FORMAT(dia_dia_raza,'%m%D') 
			WHEN DAYOFWEEK(dia_dia_raza) = 3 THEN DATE_FORMAT(DATE_ADD(dia_dia_raza,INTERVAL 6 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_dia_raza) = 4 THEN DATE_FORMAT(DATE_ADD(dia_dia_raza,INTERVAL 5 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_dia_raza) = 5 THEN DATE_FORMAT(DATE_ADD(dia_dia_raza,INTERVAL 4 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_dia_raza) = 6 THEN DATE_FORMAT(DATE_ADD(dia_dia_raza,INTERVAL 3 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_dia_raza) = 7 THEN DATE_FORMAT(DATE_ADD(dia_dia_raza,INTERVAL 2 DAY),'%m%D')
            WHEN DAYOFWEEK(dia_dia_raza) = 1 THEN DATE_FORMAT(DATE_ADD(dia_dia_raza,INTERVAL 1 DAY),'%m%D') END INTO dia_raza;



-- DIA DE TODOS LOS SANTOS (1 DE NOVIEMBRE)
SET dia_todos_los_santos = concat(anio,'-11-01');
SELECT CASE WHEN DAYOFWEEK(dia_todos_los_santos) = 2 THEN DATE_FORMAT(dia_todos_los_santos,'%m%D') 
			WHEN DAYOFWEEK(dia_todos_los_santos) = 3 THEN DATE_FORMAT(DATE_ADD(dia_todos_los_santos,INTERVAL 6 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_todos_los_santos) = 4 THEN DATE_FORMAT(DATE_ADD(dia_todos_los_santos,INTERVAL 5 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_todos_los_santos) = 5 THEN DATE_FORMAT(DATE_ADD(dia_todos_los_santos,INTERVAL 4 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_todos_los_santos) = 6 THEN DATE_FORMAT(DATE_ADD(dia_todos_los_santos,INTERVAL 3 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_todos_los_santos) = 7 THEN DATE_FORMAT(DATE_ADD(dia_todos_los_santos,INTERVAL 2 DAY),'%m%D')
            WHEN DAYOFWEEK(dia_todos_los_santos) = 1 THEN DATE_FORMAT(DATE_ADD(dia_todos_los_santos,INTERVAL 1 DAY),'%m%D') END INTO todos_los_santos;


-- DIA DE INDEPENDENCIA DE CARTAGENA (11 DE NOVIEMBRE)
SET dia_indepedencia_cartagena = concat(anio,'-11-11');
SELECT CASE WHEN DAYOFWEEK(dia_indepedencia_cartagena) = 2 THEN DATE_FORMAT(dia_indepedencia_cartagena,'%m%D') 
			WHEN DAYOFWEEK(dia_indepedencia_cartagena) = 3 THEN DATE_FORMAT(DATE_ADD(dia_indepedencia_cartagena,INTERVAL 6 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_indepedencia_cartagena) = 4 THEN DATE_FORMAT(DATE_ADD(dia_indepedencia_cartagena,INTERVAL 5 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_indepedencia_cartagena) = 5 THEN DATE_FORMAT(DATE_ADD(dia_indepedencia_cartagena,INTERVAL 4 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_indepedencia_cartagena) = 6 THEN DATE_FORMAT(DATE_ADD(dia_indepedencia_cartagena,INTERVAL 3 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_indepedencia_cartagena) = 7 THEN DATE_FORMAT(DATE_ADD(dia_indepedencia_cartagena,INTERVAL 2 DAY),'%m%D')
            WHEN DAYOFWEEK(dia_indepedencia_cartagena) = 1 THEN DATE_FORMAT(DATE_ADD(dia_indepedencia_cartagena,INTERVAL 1 DAY),'%m%D') END INTO indepedencia_cartagena;


SET a = mod(anio,19);
SET b = TRUNCATE(anio/100,0);
SET c = mod(anio,100);
SET d = TRUNCATE(b/4,0);
SET e = mod(b,4);
SET f = TRUNCATE((b+8)/25,0);
SET g = TRUNCATE((b-f+1)/3,0);
SET h = mod(((19*a)+b-d-g+15),30);
SET i = TRUNCATE(c/4,0);
SET k = mod(c,4);
SET l = mod((32+(2*e)+(2*i)-h-k),7);
SET m = TRUNCATE((a+(11*h)+(22*l))/451,0);
SET n = h+l-(7*m)+114;
SET mes = TRUNCATE(n/31,0);
SET dia = 1+mod(n,31);

SET pascua = concat(mes,dia);
SET jueves_santo = DATE_FORMAT(DATE_SUB(concat(anio,'-',mes,'-',dia),INTERVAL 3 DAY),'%m%D');
SET viernes_santo = DATE_FORMAT(DATE_SUB(concat(anio,'-',mes,'-',dia),INTERVAL 2 DAY),'%m%D');

-- DIA DE ASENCION
SET dia_asencion_cal = DATE_ADD(concat(anio,'-',mes,'-',dia),INTERVAL 40 DAY);
SELECT CASE WHEN DAYOFWEEK(dia_asencion_cal) = 2 THEN DATE_FORMAT(dia_asencion_cal,'%m%D') 
			WHEN DAYOFWEEK(dia_asencion_cal) = 3 THEN DATE_FORMAT(DATE_ADD(dia_asencion_cal,INTERVAL 6 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_asencion_cal) = 4 THEN DATE_FORMAT(DATE_ADD(dia_asencion_cal,INTERVAL 5 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_asencion_cal) = 5 THEN DATE_FORMAT(DATE_ADD(dia_asencion_cal,INTERVAL 4 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_asencion_cal) = 6 THEN DATE_FORMAT(DATE_ADD(dia_asencion_cal,INTERVAL 3 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_asencion_cal) = 7 THEN DATE_FORMAT(DATE_ADD(dia_asencion_cal,INTERVAL 2 DAY),'%m%D')
            WHEN DAYOFWEEK(dia_asencion_cal) = 1 THEN DATE_FORMAT(DATE_ADD(dia_asencion_cal,INTERVAL 1 DAY),'%m%D') END INTO dia_asencion;

-- DIA DE CORPUS CRISTI
SET dia_corpus_cal = DATE_ADD(concat(anio,'-',mes,'-',dia),INTERVAL 60 DAY);
SELECT CASE WHEN DAYOFWEEK(dia_corpus_cal) = 2 THEN DATE_FORMAT(dia_corpus_cal,'%m%D') 
			WHEN DAYOFWEEK(dia_corpus_cal) = 3 THEN DATE_FORMAT(DATE_ADD(dia_corpus_cal,INTERVAL 6 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_corpus_cal) = 4 THEN DATE_FORMAT(DATE_ADD(dia_corpus_cal,INTERVAL 5 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_corpus_cal) = 5 THEN DATE_FORMAT(DATE_ADD(dia_corpus_cal,INTERVAL 4 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_corpus_cal) = 6 THEN DATE_FORMAT(DATE_ADD(dia_corpus_cal,INTERVAL 3 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_corpus_cal) = 7 THEN DATE_FORMAT(DATE_ADD(dia_corpus_cal,INTERVAL 2 DAY),'%m%D')
            WHEN DAYOFWEEK(dia_corpus_cal) = 1 THEN DATE_FORMAT(DATE_ADD(dia_corpus_cal,INTERVAL 1 DAY),'%m%D') END INTO corpus_christi;

-- DIA DE SAGRADO CORAZON
SET dia_sagrado_corazon = DATE_ADD(concat(anio,'-',mes,'-',dia),INTERVAL 71 DAY);
SELECT CASE WHEN DAYOFWEEK(dia_sagrado_corazon) = 2 THEN DATE_FORMAT(dia_sagrado_corazon,'%m%D') 
			WHEN DAYOFWEEK(dia_sagrado_corazon) = 3 THEN DATE_FORMAT(DATE_ADD(dia_sagrado_corazon,INTERVAL 6 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_sagrado_corazon) = 4 THEN DATE_FORMAT(DATE_ADD(dia_sagrado_corazon,INTERVAL 5 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_sagrado_corazon) = 5 THEN DATE_FORMAT(DATE_ADD(dia_sagrado_corazon,INTERVAL 4 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_sagrado_corazon) = 6 THEN DATE_FORMAT(DATE_ADD(dia_sagrado_corazon,INTERVAL 3 DAY),'%m%D')
			WHEN DAYOFWEEK(dia_sagrado_corazon) = 7 THEN DATE_FORMAT(DATE_ADD(dia_sagrado_corazon,INTERVAL 2 DAY),'%m%D')
            WHEN DAYOFWEEK(dia_sagrado_corazon) = 1 THEN DATE_FORMAT(DATE_ADD(dia_sagrado_corazon,INTERVAL 1 DAY),'%m%D') END INTO sagrado_corazon;


SET fecha_actual_comparar = DATE_FORMAT(fechas,'%m%D');

SELECT CASE WHEN fecha_actual_comparar = anio_nuevo THEN 1
			WHEN fecha_actual_comparar = dia_trabajo THEN 1
			WHEN fecha_actual_comparar = inmaculada_concepcion THEN 1
			WHEN fecha_actual_comparar = grito_independencia THEN 1
			WHEN fecha_actual_comparar = batalla_boyaca THEN 1
			WHEN fecha_actual_comparar = dia_raza THEN 1
			WHEN fecha_actual_comparar = indepedencia_cartagena THEN 1
			WHEN fecha_actual_comparar = reyes_magos THEN 1
			WHEN fecha_actual_comparar = san_jose THEN 1
			WHEN fecha_actual_comparar = san_pedro THEN 1
			WHEN fecha_actual_comparar = asuncion_virgen THEN 1
			WHEN fecha_actual_comparar = todos_los_santos THEN 1
			WHEN fecha_actual_comparar = jueves_santo THEN 1
			WHEN fecha_actual_comparar = viernes_santo THEN 1
			WHEN fecha_actual_comparar = pascua THEN 1
			WHEN fecha_actual_comparar = dia_asencion THEN 1
			WHEN fecha_actual_comparar = corpus_christi THEN 1
			WHEN fecha_actual_comparar = sagrado_corazon THEN 1
			WHEN fecha_actual_comparar = navidad THEN 1
		ELSE 0 END INTO es_festivo;


RETURN es_festivo;

END
