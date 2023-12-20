-- 1. Selezionare cognome e nome di tutti gli insegnanti, ordinati per cognome e poi per nome in ordine alfabetico'
select surname, name 
from teachers t 
order by surname, name;

-- 2. Selezionare tutti gli insegnamenti (courses) che valgono almeno 12 crediti (cfu) (375)
select *
from courses c 
where cfu >=12;

-- 3. Selezionare tutti gli studenti nati nel 1990 (160)
select *
from students s 
where year(date_of_birth) = 1990;

-- 4. Selezionare tutti i corsi del primo semestre del primoanno di un qualsiasi corso di laurea (286)
select *
from courses c 
where period = 1 and `year` = 1;

-- 5. Da quanti dipartimenti è composta l’università?
select count(*) 
from departments d;

-- 6. Contare tutti gli insegnanti il cui cognome termina con la “E” (8)
select count(*)
from teachers t 
where surname like '%E';

-- 7. Selezionare nome, cognome e codice fiscale di tutti gli studenti iscritti al Corso di Laurea in Economia, in ordine alfabetico
select name, surname, fiscal_code
from students s 
where course_name = 'Economia'
order by surname, name;

-- 8. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT *
FROM degrees d 
WHERE `level`  = 'Magistrale' AND department_id = 'Neuroscienze';



