
use Ordus

update Computer set ÄrAdmin = 1 where name = 'LENOPEHO'


 update FTGSystem set Värde = 'C:\Temp\'
 where Beteckning in
(
	'PDF Bibliotek',
	'PDF bibliotek fakturaunderlag',
	'PDF bibliotek beställningar',
	'PDF bibliotek orderbekräftelse',
	'PDF bibliotek följesedel',
	'PDF bibliotek orderbekräftelse epost',
	'PDF bibliotek offerter',
	'Ordus  QRP (Rapport) filer',
	'PDF biblkitek samlingsfakturor'
)
