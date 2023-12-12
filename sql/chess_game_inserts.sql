INSERT INTO T_Players (ID,name,email,password) values(1,"Paquito","play1@gmail.com","pato"),(2,"Jugador2","play2@gmail.com","patos"),(3,"Manolito","play3@gmail.com","patoso"),(4,"Juan","jan@gmail.com","torso"),(5,"Repi","repi@gmail.com","pastoso");
INSERT INTO T_Matches (title,white,black,startDate) value("Primero",1,3,"2023-11-30 16:33:33");
delete from T_Matches where ID = 1;
select * from T_Matches;
insert into T_Board_Status (IDGame,board) values((select ID from T_Matches where ID = 1),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,PaW,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"),
((select ID from T_Matches where ID = 2),"RoB,KnB,BiB,X,KiB,X,KnB,RoB,PaB,PaB,X,PaB,X,X,X,PaB,X,X,PaB,X,X,X,X,X,QuB,X,X,X,PaW,X,X,X,X,X,KnW,X,X,X,X,X,RoW,X,X,X,X,X,X,X,X,PaW,PaW,X,PaW,X,PaW,PaW,X,X,BiW,QuW,KiW,BiW,KnW,RoW");

insert into T_Board_Status (IDGame,board) values
((select ID from T_Matches where ID = 1),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,PaW,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"),
((select ID from T_Matches where ID = 1),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,X,PaB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,PaW,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"),
((select ID from T_Matches where ID = 1),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,X,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,PaW,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"),
((select ID from T_Matches where ID = 1),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,X,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,PaW,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"),
((select ID from T_Matches where ID = 1),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,X,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,PaW,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW");

insert into T_Board_Status (IDGame,board) values
((select ID from T_Matches where ID = 2),"RoB,KnB,X,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,PaW,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"),
((select ID from T_Matches where ID = 2),"RoB,KnB,X,QuB,KiB,BiB,KnB,RoB,X,PaB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,X,PaW,PaW,X,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"),
((select ID from T_Matches where ID = 2),"RoB,KnB,X,QuB,KiB,BiB,KnB,RoB,X,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,X,PaW,PaW,X,PaW,PaW,RoW,KnW,BiW,QuW,KiW,X,KnW,RoW"),
((select ID from T_Matches where ID = 2),"X,KnB,X,QuB,KiB,BiB,KnB,RoB,X,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,X,PaW,PaW,X,PaW,PaW,RoW,KnW,BiW,QuW,KiW,X,KnW,RoW"),
((select ID from T_Matches where ID = 2),"X,KnB,X,QuB,KiB,BiB,KnB,RoB,X,PaB,PaB,PaB,PaB,X,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,X,PaW,PaW,X,PaW,PaW,RoW,KnW,BiW,QuW,KiW,X,KnW,RoW");
/* 
"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,
 X,PaB,PaB,PaB,PaB,PaB,PaB,PaB,
 X,X,X,X,X,X,X,X,
 X,X,X,X,X,X,X,X,
 X,PaB,X,X,X,X,X,X,
 X,X,X,X,X,X,X,X,
 PaW,PaW,PaW,PaW,PaW,PaW,PaW,PaW,
 RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"
*/