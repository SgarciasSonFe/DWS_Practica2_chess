INSERT INTO T_Players (ID,name,email,password) values(1,"Paquito","play1@gmail.com","pato"),(2,"Jugador2","play2@gmail.com","patos"),(3,"Manolito","play3@gmail.com","patoso"),(4,"Juan","jan@gmail.com","torso"),(5,"Repi","repi@gmail.com","pastoso");
INSERT INTO T_Matches (title,white,black,startDate) values("Prueba 1",1,3,"2023-11-30 16:33:33"),("Prueba 2",3,2,"2023-12-12 15:33:30"),("Partida oficial",5,3,"2023-12-12 20:12:33");

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

insert into T_Board_Status (IDGame,board) values
((select ID from T_Matches where ID = 3),"RoB,KnB,X,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,PaW,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"),
((select ID from T_Matches where ID = 3),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,X,PaW,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"),
((select ID from T_Matches where ID = 3),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,PaB,X,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,X,X,PaW,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,KnW,RoW"),
((select ID from T_Matches where ID = 3),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,PaB,X,PaB,PaB,PaB,X,X,X,X,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,X,X,PaW,X,X,X,X,X,X,X,X,KnW,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,X,RoW"),
((select ID from T_Matches where ID = 3),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,X,X,PaB,PaB,PaB,X,X,X,PaB,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,X,X,PaW,X,X,X,X,X,X,X,X,KnW,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,BiW,X,RoW"),
((select ID from T_Matches where ID = 3),"RoB,KnB,BiB,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,X,X,PaB,PaB,PaB,X,X,X,PaB,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,BiW,X,PaW,X,X,X,X,X,X,X,X,KnW,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,X,X,RoW"),
((select ID from T_Matches where ID = 3),"RoB,X,BiB,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,X,X,PaB,PaB,PaB,X,X,KnB,PaB,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,BiW,X,PaW,X,X,X,X,X,X,X,X,KnW,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,KnW,BiW,QuW,KiW,X,X,RoW"),
((select ID from T_Matches where ID = 3),"RoB,X,BiB,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,X,X,PaB,PaB,PaB,X,X,KnB,PaB,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,BiW,X,PaW,X,X,X,X,X,KnW,X,X,KnW,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,X,BiW,QuW,KiW,X,X,RoW"),
((select ID from T_Matches where ID = 3),"RoB,X,X,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,X,X,PaB,PaB,PaB,X,X,KnB,PaB,X,X,X,X,X,X,X,X,PaB,X,X,X,X,X,BiW,X,PaW,X,BiB,X,X,X,KnW,X,X,KnW,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,X,BiW,QuW,KiW,X,X,RoW"),
((select ID from T_Matches where ID = 3),"RoB,X,X,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,X,X,PaB,PaB,PaB,X,X,KnB,PaB,X,X,X,X,X,X,X,X,KnW,X,X,X,X,X,BiW,X,PaW,X,BiB,X,X,X,KnW,X,X,X,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,X,BiW,QuW,KiW,X,X,RoW"),
((select ID from T_Matches where ID = 3),"RoB,X,X,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,X,X,PaB,PaB,PaB,X,X,KnB,PaB,X,X,X,X,X,X,X,X,KnW,X,X,X,X,X,BiW,X,PaW,X,X,X,X,X,KnW,X,X,X,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,X,BiW,BiB,KiW,X,X,RoW"),
((select ID from T_Matches where ID = 3),"RoB,X,X,QuB,KiB,BiB,KnB,RoB,PaB,PaB,PaB,X,X,BiW,PaB,PaB,X,X,KnB,PaB,X,X,X,X,X,X,X,X,KnW,X,X,X,X,X,X,X,PaW,X,X,X,X,X,KnW,X,X,X,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,X,BiW,BiB,KiW,X,X,RoW"),
((select ID from T_Matches where ID = 3),"RoB,X,X,QuB,X,BiB,KnB,RoB,PaB,PaB,PaB,X,KiB,BiW,PaB,PaB,X,X,KnB,PaB,X,X,X,X,X,X,X,X,KnW,X,X,X,X,X,X,X,PaW,X,X,X,X,X,KnW,X,X,X,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,X,BiW,BiB,KiW,X,X,RoW"),
((select ID from T_Matches where ID = 3),"RoB,X,X,QuB,X,BiB,KnB,RoB,PaB,PaB,PaB,X,KiB,BiW,PaB,PaB,X,X,KnB,PaB,X,X,X,X,X,X,X,KnW,KnW,X,X,X,X,X,X,X,PaW,X,X,X,X,X,X,X,X,X,X,X,PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,RoW,X,BiW,BiB,KiW,X,X,RoW");

/* 
RoB,X,X,QuB,X,BiB,KnB,RoB,
PaB,PaB,PaB,X,KiB,BiW,PaB,PaB,
X,X,KnB,PaB,X,X,X,X,
X,X,X,KnW,KnW,X,X,X,
X,X,X,X,PaW,X,X,X,
X,X,X,X,X,X,X,X,
PaW,PaW,PaW,PaW,X,PaW,PaW,PaW,
RoW,X,BiW,BiB,KiW,X,X,RoW"
*/