// 1. CRIAÇÃO DE NÓS: USERS
MERGE (:User{nome:'Beatriz',idade:19});
MERGE (:User{nome:'Pedro',idade:23});
MERGE (:User{nome:'Carlos',idade:21});
MERGE (:User{nome:'Aryelle',idade:20});
MERGE (:User{nome:'Felipe',idade:30});
MERGE (:User{nome:'Nathalia',idade:18});
MERGE (:User{nome:'Lucas',idade:28});
MERGE (:User{nome:'Nilton',idade:49});
MERGE (:User{nome:'Larissa',idade:32});
MERGE (:User{nome:'Gustavo',idade:52});

// 2. CRIAÇÃO DE NÓS: MOVIES
MERGE (:Movie{nome:'Sinners',anoLançamento:2025,classificacao:'+16'});
MERGE (:Movie{nome:'M3GAN 2.0',anoLançamento:2025,classificacao:'+16'});
MERGE (:Movie{nome:'Ichi the killer',anoLançamento:2001,classificacao:'+18'});
MERGE (:Movie{nome:'A Cinco Passos de Você',anoLançamento:2019,classificacao:'+12'});
MERGE (:Movie{nome:'Whiplash',anoLançamento:2014,classificacao:'+12'});
MERGE (:Movie{nome:'Black Phone',anoLançamento:2021,classificacao:'+16'});
MERGE (:Movie{nome:'Pantera Negra',anoLançamento:2018,classificacao:'+14'});
MERGE (:Movie{nome:'Oppenheimer',anoLançamento:2023,classificacao:'+16'});
MERGE (:Movie{nome:'Titanic',anoLançamento:1997,classificacao:'+12'});

// 3. CRIAÇÃO DE NÓS: SERIES
MERGE (:Series {nome:'Peaky Blinders', anoLançamento:2013, classificacao:'+16'});
MERGE (:Series {nome:'Tremembé', anoLançamento:2025, classificacao:'+16'}); // CORRIGIDO para Series
MERGE (:Series {nome:'The Umbrella Academy', anoLançamento:2019, classificacao:'+16'});
MERGE (:Series {nome:'WandaVision', anoLançamento:2021, classificacao:'+12'});
MERGE (:Series {nome:'Black Mirror', anoLançamento:2011, classificacao:'+18'});

// 4. CRIAÇÃO DE NÓS: ACTORS
MERGE (:Actor{nome:'Miles Caton'});
MERGE (:Actor{nome:'Michael B. Jordan'});
MERGE (:Actor{nome:'Chadwick Boseman'});
MERGE (:Actor{nome:"Lupita Nyong'o"});
MERGE (:Actor{nome:'Allison Williams'});
MERGE (:Actor{nome:'Violet McGraw'});
MERGE (:Actor{nome:'Amie Donald'});
MERGE (:Actor{nome:'Tadanobu Asano'});
MERGE (:Actor{nome:'Nao Ômori'});
MERGE (:Actor{nome:"Shin'ya Tsukamoto"});
MERGE (:Actor{nome:'Haley Lu Richardson'});
MERGE (:Actor{nome:'Moises Arias'});
MERGE (:Actor{nome:'Cillian Murphy'});
MERGE (:Actor{nome:'Emily Blunt'});
MERGE (:Actor{nome:'Robert Downey Jr.'});
MERGE (:Actor{nome:'Mason Thames'});
MERGE (:Actor{nome:'Madeleine McGraw'});
MERGE (:Actor{nome:'Ethan Hawke'});
MERGE (:Actor{nome:'Bianca Comparato'});
MERGE (:Actor{nome:'Kate Winslet'});
MERGE (:Actor{nome:'Marina Ruy Barbosa'});

// 5. CRIAÇÃO DE NÓS: DIRECTORS
MERGE (:Director {nome:'Ryan Coogler'});
MERGE (:Director {nome:'Gerard Johnstone'});
MERGE (:Director {nome:'Takashi Miike'});
MERGE (:Director {nome:'Justin Baldoni'});
MERGE (:Director {nome:'Christopher Nolan'});
MERGE (:Director {nome:'Scott Derrickson'});
MERGE (:Director {nome:'Daniel Lieff'});
MERGE (:Director {nome:'Jeremy Webb'});
MERGE (:Director {nome:'Matt Shakman'});
MERGE (:Director {nome:'Jodie Foster'});

// 6. CRIAÇÃO DE NÓS: GENRE
MERGE (:Genre {nome: 'Ação'});
MERGE (:Genre {nome: 'Ficção Científica'});
MERGE (:Genre {nome: 'Suspense'});
MERGE (:Genre {nome: 'Drama'});
MERGE (:Genre {nome: 'Romance'});
MERGE (:Genre {nome: 'Terror'});
MERGE (:Genre {nome: 'Comédia'});
MERGE (:Genre {nome: 'História'});