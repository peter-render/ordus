select * from blad1


delete from artikel
select  * from artikel
insert into artikel
(Artikelnummer,Beteckning)


select distinct f2,fyrkantrör from import
where f2 is not null

insert into artikel
(Artikelnummer,Beteckning)
select distinct Artikelnummer ,bet= (Select max(dbo.proppercase(Beteckning)) from blad1 where artikelnummer= i.artikelnummer)
 from blad1 i
where Artikelnummer is not null
order by artikelnummer

insert into Kund (kundnamn) select 'Intersystem'

insert into orderhuvud (Kundid,OrderNummer,0rderdatum) select 1,'0','1950-01-01'


dbcc checkident (orderrad,reseed,0)


INSERT INTO Orderrad(OrderID,OrderInfo,ArtikelID, Antal, PrisPerEnhet, Datum, YtbehandlingID)

select 1,ordernr,
artikelid = (select artikelid from artikel where artikelnummer = blad1.Artikelnummer)  
,antal,pris,datum


,yta =(select case rtrim(yta) 
	when 'RF' then 'R'
	when 'G' then 'G'
	when 'F' then NULL
	when 'R' then 'R'
	when 'S' then 'O'
	when 'FZB' then 'Z'
end)
 from blad1  where artikelnummer is not null


delete from orderrad

--select * from blad1

select Artikelnummer,Beteckning,Prisperenhet,datum from orderrad r
join artikel a on a.artikelid = r.artikelid
order by artikelnummer,datum

select Artikelnummer,beteckning, 
lp = (select min(prisperenhet) from orderrad where artikelid = a.artikelid)
,hp = (select max(prisperenhet) from orderrad where artikelid = a.artikelid)
,antal = (select sum(antal) from orderrad where artikelid = a.artikelid)
 from artikel a
order by artikelnummer



