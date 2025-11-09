// 1. RELAÇÃO: FILME GÊNERO (IN_GENRE)
MATCH (m:Movie {nome:'Pantera Negra'}), (g1:Genre {nome:'Ação'}), (g2:Genre {nome:'Ficção Científica'}) 
MERGE (m)-[:IN_GENRE]->(g1) 
MERGE (m)-[:IN_GENRE]->(g2);

MATCH (m:Movie {nome:'Oppenheimer'}), (g1:Genre {nome:'História'}), (g2:Genre {nome:'Drama'}) 
MERGE (m)-[:IN_GENRE]->(g1) 
MERGE (m)-[:IN_GENRE]->(g2);

MATCH (m:Movie {nome:'Black Phone'}), (g1:Genre {nome:'Terror'}), (g2:Genre {nome:'Suspense'}) 
MERGE (m)-[:IN_GENRE]->(g1) 
MERGE (m)-[:IN_GENRE]->(g2);
MATCH (m:Movie {nome:'A Cinco Passos de Você'}), (g1:Genre {nome:'Romance'}), (g2:Genre {nome:'Drama'}) 
MERGE (m)-[:IN_GENRE]->(g1) 
MERGE (m)-[:IN_GENRE]->(g2);
MATCH (m:Movie {nome:'Ichi the killer'}), (g1:Genre {nome:'Terror'}), (g2:Genre {nome:'Ação'}) 
MERGE (m)-[:IN_GENRE]->(g1) 
MERGE (m)-[:IN_GENRE]->(g2);
MATCH (m:Movie {nome:'Titanic'}), (g1:Genre {nome:'Romance'}), (g2:Genre {nome:'Drama'}) 
MERGE (m)-[:IN_GENRE]->(g1) 
MERGE (m)-[:IN_GENRE]->(g2);
MATCH (m:Movie {nome:'M3GAN 2.0'}), (g1:Genre {nome:'Terror'}), (g2:Genre {nome:'Ficção Científica'}) 
MERGE (m)-[:IN_GENRE]->(g1) 
MERGE (m)-[:IN_GENRE]->(g2);
MATCH (m:Movie {nome:'Sinners'}),(g1:Genre {nome:'Terror'}), (g2:Genre {nome:'Suspense'}) 
MERGE (m)-[:IN_GENRE]->(g1) 
MERGE (m)-[:IN_GENRE]->(g2);

// 2. RELAÇÃO: SERIE GÊNERO (IN_GENRE)
MATCH (s:Series {nome:'Black Mirror'}), (g1:Genre {nome:'Ficção Científica'}), (g2:Genre {nome:'Suspense'}) 
MERGE (s)-[:IN_GENRE]->(g1) 
MERGE (s)-[:IN_GENRE]->(g2);
MATCH (s:Series {nome:'The Umbrella Academy'}), (g1:Genre {nome:'Ficção Científica'}), (g2:Genre {nome:'Ação'}) 
MERGE (s)-[:IN_GENRE]->(g1) 
MERGE (s)-[:IN_GENRE]->(g2);
MATCH (s:Series {nome:'WandaVision'}), (g1:Genre {nome:'Ficção Científica'}), (g2:Genre {nome:'Comédia'}) 
MERGE (s)-[:IN_GENRE]->(g1) 
MERGE (s)-[:IN_GENRE]->(g2);
MATCH (s:Series {nome:'Peaky Blinders'}), (g1:Genre {nome:'Drama'}), (g2:Genre {nome:'História'}) 
MERGE (s)-[:IN_GENRE]->(g1) 
MERGE (s)-[:IN_GENRE]->(g2);

// 3. RELAÇÃO: ATOR FILME
MATCH (a:Actor {nome: 'Michael B. Jordan'}), (b:Actor {nome: 'Chadwick Boseman'}), (c:Actor {nome: "Lupita Nyong'o"}), (m:Movie {nome: 'Pantera Negra'}) 
MERGE (a)-[:ACTED_IN]->(m) 
MERGE (b)-[:ACTED_IN]->(m) 
MERGE (c)-[:ACTED_IN]->(m);
MATCH (a:Actor {nome: 'Cillian Murphy'}), (b:Actor {nome: 'Emily Blunt'}), (c:Actor {nome: 'Robert Downey Jr.'}), (m:Movie {nome: 'Oppenheimer'}) 
MERGE (a)-[:ACTED_IN]->(m) 
MERGE (b)-[:ACTED_IN]->(m) 
MERGE (c)-[:ACTED_IN]->(m);
MATCH (a:Actor {nome: 'Mason Thames'}), (b:Actor {nome: 'Madeleine McGraw'}), (c:Actor {nome: 'Ethan Hawke'}), (m:Movie {nome: 'Black Phone'}) 
MERGE (a)-[:ACTED_IN]->(m) 
MERGE (b)-[:ACTED_IN]->(m) 
MERGE (c)-[:ACTED_IN]->(m);
MATCH (a:Actor {nome: 'Haley Lu Richardson'}), (b:Actor {nome: 'Moises Arias'}), (m:Movie {nome: 'A Cinco Passos de Você'}) 
MERGE (a)-[:ACTED_IN]->(m) 
MERGE (b)-[:ACTED_IN]->(m);
MATCH (a:Actor {nome: 'Tadanobu Asano'}), (b:Actor {nome: 'Nao Ômori'}), (c:Actor {nome: 'Shin\'ya Tsukamoto'}), (m:Movie {nome: 'Ichi the killer'}) 
MERGE (a)-[:ACTED_IN]->(m) 
MERGE (b)-[:ACTED_IN]->(m) 
MERGE (c)-[:ACTED_IN]->(m);
MATCH (a:Actor {nome: 'Kate Winslet'}), (m:Movie {nome: 'Titanic'}) 
MERGE (a)-[:ACTED_IN]->(m);
MATCH (a:Actor {nome: 'Miles Caton'}), (m:Movie {nome: 'Sinners'}) 
MERGE (a)-[:ACTED_IN]->(m);
MATCH (a:Actor {nome: 'Allison Williams'}), (b:Actor {nome: 'Violet McGraw'}), (c:Actor {nome: 'Amie Donald'}), (m:Movie {nome: 'M3GAN 2.0'}) 
MERGE (a)-[:ACTED_IN]->(m) 
MERGE (b)-[:ACTED_IN]->(m) 
MERGE (c)-[:ACTED_IN]->(m);

// 4. RELAÇÃO: ATOR SERIE
MATCH (d:Director {nome:'Christopher Nolan'}), (s:Series {nome:'Peaky Blinders'}) 
MERGE (d)-[:DIRECTED]->(s);
MATCH (d:Director {nome:'Daniel Lieff'}), (s:Series {nome:'Tremembé'}) 
MERGE (d)-[:DIRECTED]->(s);
MATCH (d:Director {nome:'Jeremy Webb'}), (s:Series {nome:'The Umbrella Academy'}) 
MERGE (d)-[:DIRECTED]->(s);
MATCH (d:Director {nome:'Matt Shakman'}), (s:Series {nome:'WandaVision'}) 
MERGE (d)-[:DIRECTED]->(s);
MATCH (d:Director {nome:'Jodie Foster'}), (s:Series {nome:'Black Mirror'}) 
MERGE (d)-[:DIRECTED]->(s);

// 5. RELAÇÃO: DIRETOR E ATOR
MATCH (d:Director {nome:'Ryan Coogler'}), (a1:Actor {nome: 'Miles Caton'}), (a2:Actor {nome: 'Michael B. Jordan'}), (a3:Actor {nome: 'Chadwick Boseman'}), (a4:Actor {nome: "Lupita Nyong'o"})
MERGE (d)-[:DIRECTS]->(a1) 
MERGE (d)-[:DIRECTS]->(a2) 
MERGE (d)-[:DIRECTS]->(a3) 
MERGE (d)-[:DIRECTS]->(a4);
MATCH (d:Director {nome:'Gerard Johnstone'}), (a1:Actor {nome: 'Allison Williams'}), (a2:Actor {nome: 'Violet McGraw'}), (a3:Actor {nome: 'Amie Donald'})
MERGE (d)-[:DIRECTS]->(a1) 
MERGE (d)-[:DIRECTS]->(a2) 
MERGE (d)-[:DIRECTS]->(a3);
MATCH (d:Director {nome:'Takashi Miike'}), (a1:Actor {nome: 'Tadanobu Asano'}), (a2:Actor {nome: 'Nao Ômori'}), (a3:Actor {nome: "Shin'ya Tsukamoto"})
MERGE (d)-[:DIRECTS]->(a1) 
MERGE (d)-[:DIRECTS]->(a2) 
MERGE (d)-[:DIRECTS]->(a3);
MATCH (d:Director {nome:'Justin Baldoni'}), (a1:Actor {nome: 'Haley Lu Richardson'}), (a2:Actor {nome: 'Moises Arias'})
MERGE (d)-[:DIRECTS]->(a1) 
MERGE (d)-[:DIRECTS]->(a2);
MATCH (d:Director {nome:'Christopher Nolan'}), (a1:Actor {nome: 'Cillian Murphy'}), (a2:Actor {nome: 'Emily Blunt'}), (a3:Actor {nome: 'Robert Downey Jr.'})
MERGE (d)-[:DIRECTS]->(a1) 
MERGE (d)-[:DIRECTS]->(a2) 
MERGE (d)-[:DIRECTS]->(a3);
MATCH (d:Director {nome:'Scott Derrickson'}), (a1:Actor {nome: 'Mason Thames'}), (a2:Actor {nome: 'Madeleine McGraw'}), (a3:Actor {nome: 'Ethan Hawke'})
MERGE (d)-[:DIRECTS]->(a1) 
MERGE (d)-[:DIRECTS]->(a2) 
MERGE (d)-[:DIRECTS]->(a3);
MATCH (d:Director {nome:'Daniel Lieff'}), (a1:Actor {nome: 'Bianca Comparato'}), (a2:Actor {nome: 'Marina Ruy Barbosa'})
MERGE (d)-[:DIRECTS]->(a1) 
MERGE (d)-[:DIRECTS]->(a2);
MATCH (d:Director {nome:'Jeremy Webb'}), (a1:Actor {nome: 'Robert Downey Jr.'}), (a2:Actor {nome: 'Allison Williams'})
MERGE (d)-[:DIRECTS]->(a1) 
MERGE (d)-[:DIRECTS]->(a2);
MATCH (d:Director {nome:'Matt Shakman'}), (a:Actor {nome: 'Emily Blunt'}) 
MERGE (d)-[:DIRECTS]->(a);
MATCH (d:Director {nome:'Jodie Foster'}), (a1:Actor {nome: 'Cillian Murphy'}), (a2:Actor {nome: 'Ethan Hawke'})
MERGE (d)-[:DIRECTS]->(a1) 
MERGE (d)-[:DIRECTS]->(a2);

// 6. RELAÇÃO: USER E FILME
MATCH (u:User{nome:'Beatriz'}),(m1:Movie{nome:'Sinners'}),(m2:Movie{nome:'Ichi the killer'}),(m3:Movie{nome:'Pantera Negra'})
CREATE (u)-[:WATCHED]->(m1), (u)-[:WATCHED]->(m2), (u)-[:WATCHED]->(m3);
MATCH (u:User{nome:'Pedro'}),(m1:Movie{nome:'Sinners'}),(m2:Movie{nome:'M3GAN 2.0'}),(m3:Movie{nome:'Ichi the killer'}),(m4:Movie{nome:'A Cinco Passos de Você'}),(m5:Movie{nome:'Black Phone'}),(m6:Movie{nome:'Pantera Negra'})
CREATE (u)-[:WATCHED]->(m1), (u)-[:WATCHED]->(m2), (u)-[:WATCHED]->(m3), (u)-[:WATCHED]->(m4), (u)-[:WATCHED]->(m5), (u)-[:WATCHED]->(m6);
MATCH (u:User{nome:'Carlos'}),(m1:Movie{nome:'Sinners'}),(m2:Movie{nome:'A Cinco Passos de Você'}),(m3:Movie{nome:'Pantera Negra'}),(m4:Movie{nome:'Whiplash'}),(m5:Movie{nome:'Oppenheimer'})
CREATE (u)-[:WATCHED]->(m1), (u)-[:WATCHED]->(m2), (u)-[:WATCHED]->(m3), (u)-[:WATCHED]->(m4), (u)-[:WATCHED]->(m5);
MATCH (u:User{nome:'Aryelle'}),(m1:Movie{nome:'Ichi the killer'}),(m2:Movie{nome:'Black Phone'})
CREATE (u)-[:WATCHED]->(m1), (u)-[:WATCHED]->(m2);
MATCH (u:User{nome:'Felipe'}),(m1:Movie{nome:'Whiplash'}),(m2:Movie{nome:'Titanic'})
CREATE (u)-[:WATCHED]->(m1), (u)-[:WATCHED]->(m2);
MATCH (u:User{nome:'Nathalia'}),(m1:Movie{nome:'A Cinco Passos de Você'}),(m2:Movie{nome:'Oppenheimer'})
CREATE (u)-[:WATCHED]->(m1), (u)-[:WATCHED]->(m2);
MATCH (u:User{nome:'Lucas'}),(m:Movie{nome:'Oppenheimer'})
CREATE (u)-[:WATCHED]->(m);
MATCH (u:User{nome:'Nilton'}),(m1:Movie{nome:'M3GAN 2.0'}),(m2:Movie{nome:'Titanic'})
CREATE (u)-[:WATCHED]->(m1), (u)-[:WATCHED]->(m2);
MATCH (u:User{nome:'Larissa'}),(m1:Movie{nome:'Pantera Negra'}),(s:Series{nome:'Tremembé'})
CREATE (u)-[:WATCHED]->(m1), (u)-[:WATCHED]->(s);
MATCH (u:User{nome:'Gustavo'}),(m1:Movie{nome:'Pantera Negra'}),(s:Series{nome:'Tremembé'})
CREATE (u)-[:WATCHED]->(m1), (u)-[:WATCHED]->(s);

// RELAÇÃO: USER E SERIE
MATCH (u:User {nome:'Beatriz'}),(s1:Series {nome:'The Umbrella Academy'}),(s2:Series {nome:'WandaVision'})
MERGE (u)-[:WATCHED]->(s1) 
MERGE (u)-[:WATCHED]->(s2);
MATCH (u:User {nome:'Pedro'}),(s1:Series {nome:'Black Mirror'}),(s2:Series {nome:'The Umbrella Academy'})
MERGE (u)-[:WATCHED]->(s1) 
MERGE (u)-[:WATCHED]->(s2);
MATCH (u:User {nome:'Carlos'}),(s1:Series {nome:'Tremembé'}),(s2:Series {nome:'Peaky Blinders'})
MERGE (u)-[:WATCHED]->(s1) 
MERGE (u)-[:WATCHED]->(s2);
MATCH (u:User {nome:'Aryelle'}),(s:Series {nome:'Black Mirror'})
MERGE (u)-[:WATCHED]->(s);
MATCH (u:User {nome:'Felipe'}),(s1:Series {nome:'Peaky Blinders'}),(s2:Series {nome:'Black Mirror'})
MERGE (u)-[:WATCHED]->(s1) 
MERGE (u)-[:WATCHED]->(s2);
MATCH (u1:User {nome:'Nathalia'}), (u2:User {nome:'Lucas'}),(s:Series {nome:'Tremembé'})
MERGE (u1)-[:WATCHED]->(s) 
MERGE (u2)-[:WATCHED]->(s);
MATCH (u1:User {nome:'Nilton'}), (u2:User {nome:'Larissa'}), (u3:User {nome:'Gustavo'}),(s:Series {nome:'Peaky Blinders'})
MERGE (u1)-[:WATCHED]->(s) 
MERGE (u2)-[:WATCHED]->(s) 
MERGE (u3)-[:WATCHED]->(s);