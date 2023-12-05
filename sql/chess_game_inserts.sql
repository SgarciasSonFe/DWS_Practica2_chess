INSERT INTO T_Players (ID,name,email,password) values(1,"Paquito","play1@gmail.com","pato"),(2,"Jugador2","play2@gmail.com","patos"),(3,"Manolito","play3@gmail.com","patoso"),(4,"Juan","jan@gmail.com","torso"),(5,"Repi","repi@gmail.com","pastoso");
INSERT INTO T_Matches (title,white,black,startDate) value("Pruevaasasa",1,3,"2023-11-30 16:33:33");
delete from T_Matches where ID = 1;
select * from T_Matches;