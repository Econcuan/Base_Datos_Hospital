
/*
OPERADORES LOGICOS:
+ Operador de Suma
- Operador de Resta
* Operador de Multiplicación
/ Operador de Divición
% Operador de Modulo
----------x-----------------
> Operador de Mayor que
< Operador de Menor que 
= Operador igual 
<> Operador Distinto que 
*/


Declare @num1 decimal(9,2)=20
	Declare @num2 decimal(9,2)=30
		declare @result decimal(9,2)
	set @result = @num1 + @num2
print @result

print ''
Declare @num3 decimal(9,2)=40
	Declare @num4 decimal(9,2)=30
		declare @resulta decimal(9,2)
	set @resulta = @num3 - @num4
print @resulta 

print' '
Declare @num5 decimal(9,2)=4
	Declare @num6 decimal(9,2)=4
		declare @resultado decimal(9,2)
	set @resultado = @num5 * @num6
print @resultado

print' '
Declare @num7 decimal(9,2)=20
	Declare @num8 decimal(9,2)=5
		declare @resul decimal(9,2)
	set @resul = @num7 / @num8
print @resul

print ''
Declare @num9 decimal(9,2)=30
	Declare @num10 decimal(9,2)=5
		declare @res decimal(9,2)
	set @res = @num9 / @num10
print @res

print ''
Declare @nu3 varchar(20)= 'Hola me llamo'
Declare @nu4 varchar(20)= 'Wilmer'

Declare @re varchar(40)
Set @re = @nu3 + ' ' +  @nu4
print @re

Print ''
Declare @Op1 decimal(9,2)=20
	Declare @Op2 decimal(9,2)=30
		if @Op1 > @Op2
		print'Si'
	ELSE PRINT 'ES MENOR' 
 