drop database guest;
CREATE DATABASE IF NOT EXISTS guest;
USE guest;

/****************************************************************
                           Table: TIPO
****************************************************************/

DROP TABLE IF EXISTS TIPO;
CREATE TABLE TIPO (
    IdTipo int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NomeTipo varchar(20) NOT NULL
);

INSERT INTO `TIPO` (`IdTipo`,`NomeTipo`) VALUES 
(1,'White'),
(2,'Red'),
(3,'Rosé');



/****************************************************************
                            Table: PRODUTOR
****************************************************************/

DROP TABLE IF EXISTS PRODUTOR;
CREATE TABLE PRODUTOR (
    IdProdutor int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome varchar(255) NOT NULL
);


INSERT INTO `PRODUTOR` (`IdProdutor`, `Nome`) VALUES
	('1', 'Bacalhôa Vinhos de Portugal, S.A.'),
	('2', 'Bodegas Añadas, S.A.'),
	('3', 'Casca Wines'),
	('4', 'Companhia das Lezírias, SA'),
	('5', 'Domaines Rollan de By'),
	('6', 'Dominio Del Plata'),
	('7', 'Donna Fugata'),
	('8', 'Fontanafredda SRL'),
	('9', 'Glen Carlou'),
	('10', 'José Bento dos Santos - Quinta do Monte D`Oiro'),
	('11', 'Justino`s Madeira Wines, S.A.'),
	('12', 'Madeira Wine Company, S.A.'),
	('13', 'Quinta do Barranco Longo'),
	('14', 'Sogrape Vinhos de Portugal, SA');


/****************************************************************
                            Table: REGIAO
****************************************************************/

DROP TABLE IF EXISTS REGIAO;
CREATE TABLE REGIAO (
    IdRegiao int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome varchar(255) NOT NULL
);


INSERT INTO `REGIAO` (`IdRegiao`, `Nome`) VALUES
	('1', 'África do Sul'),
	('2', 'Argentina'),
	('3', 'DOC Dão'),
	('4', 'DOC Douro'),
	('5', 'DOC Madeira'),
	('6', 'Espanha'),
	('7', 'França'),
	('8', 'Itália'),
	('9', 'Regional Alentejo'),
	('10', 'Regional Algarve'),
	('11', 'Regional Beiras'),
	('12', 'Regional Estremadura'),
	('13', 'Regional Lisboa'),
	('14', 'Regional Península de Setúbal'),
	('15', 'Regional Tejo'),
	('16', 'Regional Vinhos Verdes');



/****************************************************************
                            Table: NOMELOJA
****************************************************************/

DROP TABLE IF EXISTS NOMELOJA;
CREATE TABLE NOMELOJA (
    IdCompra int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NomeLoja varchar(255) NOT NULL
);

INSERT INTO `NOMELOJA` (`IdCompra`, `NomeLoja`) VALUES
	('1', 'Pingo Doce'),
	('2', 'Continente'),
	('3', 'Garrafeira Nacional'),
	('4', 'Minipreco'),
	('5', 'Lidl');

/****************************************************************
                            Table: CLASSIFICACAO
****************************************************************/

DROP TABLE IF EXISTS CLASSIFICACAO;
CREATE TABLE CLASSIFICACAO (
    IdClass int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NomeRevisores varchar(255) NOT NULL,
    Classificacao float NOT NULL,
    NotaAdicional varchar(1000) NOT NULL
);

INSERT INTO `CLASSIFICACAO` (`IdClass`, `NomeRevisores`, `Classificacao`, `NotaAdicional`) VALUES
	('1', 'David Finlayson', '17.0', 'Apresenta uma cor rubi muito concentrada no centro e uma auréola de brilhante tonalidade avermelhada, no nariz destaca-se os aromas apimentados e especiados envolvidos na fruta madura e um delicado toque vegetal e balsâmico, na boca é um vinho volumoso, encorpado e com taninos redondos, no paladar destaca-se a fruta negra, bem como as notas de diversas especiarias e um certo apimentado, termina longo e prolongado.'),
	('2', 'David Finlayson', '17.5', 'Cor amarela muito bonita e nariz atractivo e perfumado, rico em aromas citrinos, fruta madura, nuances vegetais e alguma especiaria, num fundo mineral e ligeiramente abaunilhado, na boca revela um corpo bem preenchido, uma estrutura imensa e uma bela acidez, os citrinos e a fruta continuam dominantes, acompanhados por um certo amanteigado e fumado, termina complexo, longo, muito mineral e bem persistente.'),
	('3', 'Susana Balbo', '16.5', 'Cor rubi intensa e um nariz rico em aromas de frutos silvestres, principalmente amoras, envolvidos por notas de compota e ameixa preta, além de subtis nuances florais e de chocolate, num fundo dominado pelas especiarias, na boca é um vinho fresco, com uma bela estrutura e taninos redondos, revela um paladar cheio de fruta negra e diversas notas especiadas, além de alguma barrica, o final de boca tem um comprimento acima da média.'),
	('4', 'Susana Balbo', '16.5', 'Cor vermelha bem forte e brilhante, o nariz é dominado pelos frutos vermelhos de uma forma intensa e saborosa, a boca é estruturada, de grande complexidade e frescura, volumoso e cheio, o final é delicioso e de uma persistência incrível.'),
	('5', 'Manuel Vieira', '12.0', 'Cor acastanhada e nariz marcado pelas notas de couro, já bem evoluídas, na boca é um vinho mais resinoso e em clara fase descendente, termina pouco expressivo, quer no comprimento, quer na persistência.'),
	('6', 'Manuel Vieira', '15.0', 'De cor rubi e nariz onde se destaca a fruta vermelha madura e uma ligeira sensação balsâmica, na boca é um vinho equilibrado, onde as especiarias são dominantes e os taninos já se encontram perfeitamente domados, o final é suave e delicado, com um comprimento e persistência medianos.'),
	('7', 'Frederico Gomes e Helder Cunha', '15.0', 'Cor amarelo pálida com uma delicada tonalidade esverdeada, o nariz revela evidentes aromas minerais e cítricos, além de um subtil toque vegetal e fruta tropical, na boca é um vinho fresco, ligeiramente seco e com uma acidez correcta, conta com um paladar muito mineral e frutado, além de citrino e termina com um final de boca de comprimento mediano.'),
	('8', 'Luis Sottomayor', '16.5', 'Cor rubi intensa no centro e com uma forte tonalidade violeta à volta, no nariz dominam os aromas florais e de frutos do bosque aliadas a breves nuances especiadas e vegetais, na boca é um vinho muito equilibrado, com taninos polidos e um volume e estrutura bem interessantes, conta com um paladar cheio de fruta madura e notas tostadas e termina com um final de boca prolongado.'),
	('9', 'Luis Sottomayor', '16.5', 'Cor amarela brilhante e nariz rico em aromas de fruta tropical e delicadas nuances meladas e até florais, num fundo marcado pelas notas citrinas e minerais, na boca é um vinho equilibrado, com bom volume e alguma complexidade, o paladar revela frutos secos e notas de mel misturadas com um subtil toque de fruta, o final de boca termina com um comprimento médio/longo.'),
	('10', 'José Maria Soares Franco', '15.0', 'Cor rubi e aromas levemente florais e frutados, o paladar é simples mas equilibrado, as violetas estão em destaque numa estrutura mediana, final curto mas frutado.'),
	('11', 'José Maria Soares Franco e Luis Sottomayor', '14.5', 'Cor vermelha intensa e aromas óbvios de frutos vermelhos, no paladar é macio e saboroso mas lembrando que talvez melhore evoluindo em garrafa, tem um final de boca médio mas prolongado o suficiente.'),
	('12', 'Dina Luis e Juan Teixeira', '15.5', 'Apresenta uma cor amarela brilhante e um nariz rico em aromas florais e citrinos, acompanhados por uma forte componente frutada, na boca revela frescura e uma acidez agradável, no paladar destacam-se as notas de fruta fresca, acompanhadas por delicadas notas limonadas e salinas, com o final de boca a terminar com um comprmento médio mas saboroso.'),
	('13', 'Francisco Albuquerque', '15.5', 'Cor vermelha pouco intensa e nariz subtilmente frutado e floral, com breves notas salinas a conferirem alguma frescura e vivacidade ao conjunto, na boca é um vinho delicado, com uma acidez correcta e um paladar frutado e levemente floral e até vegetal, o final de boca termina com um comprimento curto/médio e uma persistência delicada.'),
	('14', 'Óscar Martínez', '15.5', 'Cor vermelha intensa e nariz rico em fruta vermelha, principalmente notas de morangos e groselha, além de delicadas nuances florais, na boca é um vinho equilibrado e muito fresco, com uma boa presença e uma envolvência agradável, no paladar são dominantes as sugestões florais e de frutos vermelhos, com o final de boca a terminar com um comprimento e persistência médios.'),
	('15', 'Óscar Martínez', '15.5', 'Cor amarela de intensidade média e nariz agradavelmente floral e ligeiramente marcado por aromas de fruta madura, na boca é um vinho fresco, equilibrado e com uma acidez média, formando um conjunto correcto mas muito agradável, no paladar volta a ser dominante a fruta, em conjunto com delicadas notas citrinas e florais, o final de boca termina com um comprimento e persistência de expressão médias.'),
	('16', 'Philippe Bappel', '14.0', 'Cor amarela de média intensidade, com delicados laivos de tonalidade dourada, o nariz revela fruta bem madura e breves notas de citrinos também bem maduros, na boca está um vinho ligeiramente evoluído, com uma acidez correcta e uma estrutura algo simples, no paladar revela alguma fruta tropical e breves nuances citrinas e até minerais, com o final de boca a terminar curto e seco.'),
	('17', 'Philippe Bappel', '15.5', 'Cor vermelha de tonalidade rosada e nariz agradavelmente preenchido por aromas de fruta vermelha, nomeadamente morangos, misturados com evidentes notas vegetais e florais, na boca é um vinho seco e equilibrado, com uma acidez presente, na boca voltam a sobressair os frutos vermelhos em conjunto com uma componente mais vegetal e até citrina, terminando com um final de boca médio de comprimento e com uma elevada secura.'),
	('18', 'Antonio Rallo, Stefano Valla e Carlo Ferrini', '15.0', 'Apresenta uma cor amarela de delicada tonalidade dourada e esverdeada, o nariz revela alguma maçã verde acompanhada de fruta bem madura e alguns citrinos, na boca é um vinho fácil, mais vegetal e citrino que frutado e onde se nota uma ligeira falta de acidez, termina de forma mediana, em termos de comprimento e persistência.'),
	('19', 'Danilo Drocco', '15.5', 'Apresenta uma cor rubi intensa e concentrada, o nariz revela-se refinado e equilibrado, onde os frutos silvestres e uma leve sensação de baunilha, misturado com notas de ameixa e um certo amentolado, formam um conjunto bem interessante, é um vinho com um paladar estruturado, de mediano volume e taninos bem integrados, e onde a fruta marca uma forte presença, o final de boca é relativamente prolongado.'),
	('20', 'Danilo Drocco', '14.0', 'Cor rubi de média intensidade e laivos de tonalidade granada, o nariz revela notas terrosas, flores secas, delicadas sugestões de frutos silvestres e ainda uma leve sensação de especiarias, na boca é um vinho com estrutura, volume médio e uma acidez interessante, o paladar revela notas de fruta preta e suaves especiarias, termina com um comprimento e persistência médios.'),
	('21', 'Filipa Tomaz da Costa e Vasco Penha Garcia', '13.0', 'Vinho fresco e macio, aromas e paladar frutados mas sem exageros, um tinto simples e indicado para o dia-a-dia, tem um final pouco prolongado.'),
	('22', 'Filipa Tomaz da Costa e Vasco Penha Garcia', '14.0', 'Fruta bem presente nos aromas, no paladar é macio e jovem, taninos ainda um pouco duros, o final de boca tem presença.'),
	('23', 'Helder Cunha', '16.0', 'Apresenta uma cor de forte tonalidade rubi e um nariz bem preenchido por aromas de fruta vermelha madura, diversas notas de especiarias e ainda um breve toque apimentado, na boca é um vinho equilibrado, encorpado e com taninos polidos, o paladar revela fruta preta madura e delicadas notas tostadas, num fundo mais especiado e ligeiramente vegetal, o final de boca termina com um comprimento médio.'),
	('24', 'Luís Euclides', '15.0', 'Cor vermelha bem carregada e nariz rico em frutos vermelhos maduros e uma evidente sensação vegetal e herbácea, na boca conta com uma agradável acidez e frescura, uma estrutura apreicável e uma dose de fruta marcante, o final tem um comprimento médio e uma persistência média/longa.'),
	('25', 'Rui Virgínia e Patrícia Piassab', '16.0', 'Cor amarela brilhante com laivos esverdeados, no nariz destaca-se a fruta fresca misturada com sugestivas notas cítricas e florais, num fundo subtilmente vegetal e onde a madeira revela a sua evidência, na boca é um vinho agradável, com uma boa acidez e uma estrutura interessante, no paladar destaque para a envolvência entre a fruta madura, um ligeiro floral e subtis nuances tostadas, com o final de boca a terminar com um comprimento e persistência acima da média.'),
	('26', 'Miguel Pessanha', '14.5', 'Cor rosada intensa e nariz dominado pelos frutos vermelhos, nomeadamente morangos, acompanhados por um ligeiro toque especiado, na boca é um fresco, suavemente gaseificado e paladar frutado e fresco, o final de boca tem um comprimento e persistência muito suaves.'),
	('27', 'Miguel Pessanha', '14.5', 'Cor vermelha de tonalidade rosada e nariz bem preenchido por aromas florais e de frutos vermelhos, nomeadamente morangos, na boca é um vinho adoçicado, fresco e com uma acidez correcta, revela um paladar frutado e termina com um final de boca curto.'),
	('28', 'José Bento dos Santos e Luís Elias Carvalho', '16.5', 'Apresenta uma cor carregada e uns aromas ricos em frutos pretos bem maduros e leves sugestões florais, tudo muito equilibrado e de uma elegância que impressiona, bem combinados com algum balsâmico e uma fina especiaria, na boca sobressai de imediato o seu volume e a sua acidez, bem como a sua interessante frescura, os taninos estão bem redondos, a fruta aparece bem estruturada em conjunto com algum chocolate, o final é longo e vigoroso.'),
	('29', 'Graça Gonçalves e José Bento dos Santos', '17.0', 'Cor palha e aromas intensamente dominados por notas florais e frutadas muito bem combinadas com elegantes notas tostadas e minerais, na boca mostra delicadeza, conta com uma bela acidez e uma frescura que surpreende, é ligeiramente amanteigado e tem um corpo volumoso, notas de barrica bem integrados num conjunto que tem um final ligeiramente seco mas de uma persistência notável.'),
	('30', 'Francisco Macieira', '15.5', 'Cor rubi de média intensidade no centro e auréola de tonalidade violácea, no nariz sobressaem as notas florais e os frutos silvestres, formando um conjunto muito aromático, na boca é um vinho guloso, com uma estrutura mediana e taninos redondos, revela um paladar frutado e algo vegetal, terminando com um final de boca de expressão média.'),
	('31', 'José Bento dos Santos, Graça Gonçalves e Gregory Viennois', '17.0', 'Apresenta uma cor granada de média intensidade e um nariz bem preenchido por aromas de fruta vermelha muito madura, envolvida por evidentes notas de couro e uma delicada sensação terrosa e especiada, num fundo mais tostado e subtilmente balsâmico, na boca revela-se estruturado, com um volume acima da média e taninos perfeitamente domados, no paladar destaca-se a harmonia existente entre a madeira, a fruta em passa e o couro, com o final de boca a terminar com um comprimento relativamente prolongado.'),
	('32', 'José Bento dos Santos, Graça Gonçalves e Gregory Viennois', '16.0', 'Cor rubi intensa e nariz muito complexo, onde os frutos vermelhos mostram delicadeza devido à imponência das especiarias, nomeadamente as notas de café, a madeira de qualidade e uma leve sensação fumada, na boca é um vinho macio apesar de volumoso, conta com taninos vivos mas não exagerados, muitas especiarias, como as pimentas e as notas de café, que continuam dominantes e conferem ao vinho uma complexidade e estrutura agradável, o final é prolongado e persistente.'),
	('33', 'Filipa Tomaz da Costa e Vasco Penha Garcia', '15.0', 'Apresenta uma cor amarela brilhante e um nariz muito fresco, onde as notas florais e a fruta madura e tropical se misturam com delicadas notas vegetais e citrinas e levemente abaunilhadas, na boca é um vinho equilibrado, com um corpo médio e uma estrutura correcta, revela um paladar frutado e tostado agradavelmente envolvido em suaves sugestões cítricas, o final de boca tem um comprimento médio.'),
	('34', 'Filipa Tomaz da Costa e Vasco Penha Garcia', '16.0', 'Apresenta uma cor amarela com laivos esverdeados, o nariz sugere aromas de pêssego e fruta tropical aliada a breves notas tostadas e até vegetais, na boca é um vinho com estrutura e um volume agradável, revela um paladar muito frutado, com a madeira bem presente e agradavelmente envolvida por notas de citrinos maduros, o final de boca termina relativamente longo.'),
	('35', 'Filipa Tomaz da Costa', '16.0', 'Apresenta uma cor rubi profunda e um nariz complexo, onde os aromas de fruta preta se misturam com breves notas apimentadas e vegetais, bem como algum químico, na boca é um vinho equilibrado, encorpado e com um bom volume, evidencia uns taninos firmes e o paladar revela-se frutado e especiado, além de ligeiramente achocolatado, o final de boca termina com um comprimento médio/alto.'),
	('36', 'Filipa Tomaz da Costa e Vasco Penha Garcia', '14.5', 'Aroma a frutos vermelhos, confirmados na boca em conjunto com notas apimentadas típicas da casta Cabernet Sauvignon, é suave e está evidente a madeira, o final de boca é agradável e saboroso.'),
	('37', 'Bernardo Cabral', '14.5', 'Cor rosa velho com delicados tons de salmão, o nariz revela fruta vermelha madura acompanhada por delicadas notas vegetais e apimentadas, na boca é um vinho ligeiramente evoluído e com uma acidez correcta, no paladar volta a surgir a fruta madura em destaque, apoiada por breves notas vegetais, o final de boca termina curto.'),
	('38', 'Bernardo Cabral', '14.5', 'Cor granada de média intensidade, o nariz revela fruta vermelha fresca envolvida por delicadas notas florias e breves apontamentos abaunilhados e tostados, na boca é um vinho correcto, com taninos redondos e uma complexidade mediana, no paladar destaca-se a fruta madura e breves notas especiadas, terminando com um final de boca curto.'),
	('39', 'Frederico Vilar Gomes e Hélder Cunha', '16.0', 'Cor citrina com delicados apontamentos esverdeados, no nariz os citrinos, muito subtis, combinam com uma certa mineralidade e aromas de fruta, na boca é um vinho com uma agradável estrutura e uma acidez bem presente, revela um paladar frutado e cítrico e termina com um final de boca médo/longo.'),
	('40', 'Hélder Cunha', '15.0', 'De aspecto cistralino e levemente esverdeado, apresenta um nariz citrino e vegetal acompanhado por muito delicados aromas frutados, na boca é um vinho correcto, com uma acidez mediana e um paladar bem preenchido por notas limonadas, de fruta madura e ainda um delicado toque vegetal, o final de boca termina algo curto, em termos de comprimento e persistência.');

/****************************************************************
                           Table: VINHO
****************************************************************/

DROP TABLE IF EXISTS VINHO;
CREATE TABLE VINHO (
    IdVinho int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome varchar(255) NOT NULL,
    Ano int NOT NULL,
    IdTipo int NOT NULL,
    Etiqueta varchar(2000),
    PrecoMin float NOT NULL,
    PrecoMax float NOT NULL,
    PercAlcool float NOT NULL,
    Casta varchar(500) NOT NULL,
    IdRegiao int NOT NULL,
    IdProdutor int NOT NULL,
    IdClass int NOT NULL,
    LinkBlog varchar(500) UNIQUE NOT NULL,
    FOREIGN KEY (`IdTipo`) REFERENCES `TIPO`(`IdTipo`),
    FOREIGN KEY (`IdProdutor`) REFERENCES `PRODUTOR`(`IdProdutor`),
    FOREIGN KEY (`IdRegiao`) REFERENCES `REGIAO`(`IdRegiao`),
    FOREIGN KEY (`IdClass`) REFERENCES `CLASSIFICACAO`(`IdClass`)
);

INSERT INTO `VINHO` (`IdVinho`, `Nome`, `Ano`, `IdTipo`, `Etiqueta`, `PrecoMin`, `PrecoMax`, `PercAlcool`, `Casta`, `IdRegiao`, `IdProdutor`, `IdClass`, `LinkBlog`) VALUES
	
    (1,'Glen Carlou Chardonnay 2009',2009,1,'Created in characteristic Glen Carlou style, this unique Chardonnay has its origins in French oak barriques and was matured for ten months sur lie. The result is a rich, round and complex wine with harmonious balance between fruit and oak, Enjoy now, or within five years from harvest. An ideal accompaniment to fine food dishes requiring a white wine with poise and strucuture.',7.5,10.0,14.0,'Chardonnay',1,6,1,'https://osvinhos.blogspot.pt/2014/05/3152-glen-carlou-gravel-quarry-cabernet.html'),
    (2,'Glen Carlou Quartz Stone Single Vineyard Chardonnay 2008',2008,1,'Wine of origin Paarl. This handcrafted wine derives its name from the unique soils, containing a generous percentage of quartz stone shards, in which the vines are planted. Intensely aromatic and sumptuously fruity, it rewards with a buttery texture and an abundance of concentrated ripe peach and citrus flavours, complemented by a hint of toasted hazelnut.',20.0,25.0,13.5,'Chardonnay',1,9,2,'https://osvinhos.blogspot.pt/2011/04/1712-glen-carlou-quartz-stone-single.html'),
    (3,'Ben Marco Malbec 2009',2009,2,'Many harvests ago, Susana Balbo learned that great wines start in the vineyard. BenMarco wines pay homage to the people who care for these vineyards and the pride and passion they feel. The vineyards are located in Mendoza at 900 metres above sea level. The long warm days and cool nights allow the grapes to mature to develop ripe, concentrated flavours. For BenMarco, all of the decisions in the vineyard, from the level of sun exposure to the harvesting, are made to enhance the purity of the fruit from this unique terroir. Fill a glass with BenMarco and toast to the wonders of Nature.',12.5,15.0,14.0,'Malbec e Bonarda',2,6,3,'https://osvinhos.blogspot.pt/2016/02/3912-ben-marco-malbec-2009-tinto.html'),
    (4,'Crios Rosé of Malbec 2006',2006,3,'Wines under my Crios (offspring) label display ripe fruit flavors, excellent balance, and are meant to be enjoyed in their vibrant youth. This rosé is produced using traditional "saignée" method, a bleeding of the lightly-colored juice from the skins of my fermenting old-vine. Malbec grapes at just the right time to generate a brilliant red color. Old-vine Malbec grapes create a richer, spicier wine that most other rosés from around the world, which gives this wine remarkable flexibility to pair with a wide range of foods. And likes my own crios, this Rosé of Malbec is extremely lovable and fun be around.',10.0,12.5,13.5,'Malbec',2,6,4,'https://osvinhos.blogspot.pt/2009/04/1016-crios-rose-of-malbec-2006-rose.html'),
    (5,'Duque de Viseu 1991',1991,2,'Produzido nas instalações da Quinta dos Carvalhais, fruto de uma apurada selecção de castas nobres da Região do Dão, foi vinificado em longa curtimenta, seguido de envelhecimento de cerca de um ano em pipas de madeira nova de carvalho. De côr rubi com nuances violáceas e aromas a frutos vermelhos, perfeitamente casados com a madeira de carvalho, revela um equilíbiro notável, encorpado, com os taninos presentes mas redondos, com um final muito limpo, persistente e aveludado.',2.0,4.0,12.5,'Touriga Nacional, Tinta Roriz, Alfrocheiro e Jaen',3,14,5,'https://osvinhos.blogspot.pt/2012/03/2127-duque-de-viseu-1991-tinto.html'),
    (6,'Grão Vasco Dão 2006',2006,2,'-',2.0,4.0,13.0,'Jaen, Touriga Nacional e Tinta Roriz',3,14,6,'https://osvinhos.blogspot.pt/2010/11/1539-grao-vasco-dao-2006-tinto.html'),
    (7,'Monte Cascas Colheita Douro 2013',2013,1,'Grape Varieties: Códega de Larinho 50%, Gouveio 35%, Rabigato 15%. Casca Wines is the personal project of two winemakers who have decided to create a Portuguese quality wine brand. A project that only works with the best grapes of each region and tries to renew Portugal''s unique tradition in winemaking. Frederico Gomes & Hélder Cunha, Winemakers. Appearance: Lemon. Nose: Mineral. Fruit: Tropical. Palate: Fresh. Length: Long.',4.0,7.5,12.0,'Códega de Larinho, Gouveio e Rabigato',4,3,7,'https://osvinhos.blogspot.pt/2015/08/3716-monte-cascas-colheita-douro-2013.html'),
    (8,'Callabriga 2014',2014,2,'Elegância e tradição unem-se numa história que se descobre e saboreia em cada vinho da Casa Ferreirinha. Intenso e contemporâneo, Callabriga sabe a frutos silvestres como a amora e framboesa. Revela, também, aromas de especiarias (pimenta e canela) e balsâmicos (cedro e eucalipto) provenientes do envelhecimento em madeira de carvalho. A plena qualidade deste vinho mantém-se durante cerca de 10-15 anos após a colheita desde que conservado na posição horizontal e num local seco e fresco. Servir a 16-18ºC. No sentido de preservar a sua mais alta qualidade, este vinho foi engarrafado sem tratamento pelo frio podendo formar um ligeiro depósito. Deve ser decantado.',15.0,20.0,13.5,'Tinta Roriz, Touriga Nacional e Touriga Franca',4,14,8,'https://osvinhos.blogspot.pt/2017/07/4450-callabriga-2014-tinto.html'),
    (9,'Casa Ferreirinha Colheita Tardia 2011',2011,1,'Mais uma especialidade da Casa Ferreirinha, de edição limitada, ideal para iniciar ou terminar uma refeição com um toque de requinte e encanto. Apresenta uma cor brilhante, revelando aromas de frutos tropicais maduros como maracujá, abacaxi em calda e nuances de melão. Estão evidentes, ainda, aromas característicos das colheitas tardias como laranja confitada e um ligeiro toque de marmelada. Uma vez aberto, e desde que guardad, bem fechado, no frigorífico, o vinho mantém a sua qualidade por 2 a 3 semanas. Deve ser servido a uma temperatura entre os 10-12ºC.',15.0,20.0,11.0,'Arinto e Viosinho',4,14,9,'https://osvinhos.blogspot.pt/2017/07/4459-casa-ferreirinha-colheita-tardia.html'),
    (10,'Esteva 2003',2003,2,'Elegância e tradição unem-se numa história que se descobre e saboreia em cada vinho da Casa Ferreirinha. Em Esteva encontra um intenso sabor a frutos vermelhos muito frescos, como a amora e a framboesa, bem como aromas florais a violeta. Idealizado para um consumo jovem, está pronto a saborear e não necessita de ser decantado. A plena qualidade deste vinho mantém-se durante 3-5 anos após a sua colheita, desde que conservado na posição horizontal e num local seco e fresco. Servir a 17-18ºC.',2.0,4.0,12.5,'Tinta Roriz, Touriga Franca e Tinta Barroca',4,14,10,'https://osvinhos.blogspot.pt/2007/05/502-esteva-2003-tinto.html'),
    (11,'Grão Vasco Douro 2004',2004,2,'Produzido a partir de uma apurada selecção de castas da região do Douro, é um vinho jovem com aromas a frutos vermelhos, notas balsâmicas e especiarias. Touriga Nacional, Touriga Franca, Tinta Roriz e Tinta Barroca. Beber a 14-16ºC. Carnes e queijos.',2.0,4.0,13.0,'Touriga Nacional, Touriga Franca, Tinta Roriz e Tinta Barroca',4,14,11,'https://osvinhos.blogspot.pt/2006/08/235-gro-vasco-douro-2004-tinto.html'),
    (12,'Colombo 2016',2016,1,'Vinho produzido com uvas das castas Verdelho, Arnsburger e Sercial maioritariamente da costa norte da ilha da Madeira, fermentado em cubas de inox, sob rigoroso controlo de temperatura. De cor citrina, fresco com aroma frutado e de fino e delicado paladar, é especialmente recomendado como aperitivo ou para acompanhar pratos leves de peixe, marisco e carnes brancas. Should be served at 10 - 13ºC.',10.0,12.5,13.0,'Verdelho, Arnsburger e Sercial',5,11,12,'https://osvinhos.blogspot.com/2018/06/4788-colombo-2016-branco.html'),
    (13,'Atlantis 2016',2016,3,'Este vinho rosé produzido predominantemente a partir de uvas de casta Tinta Negra, nos vinhedos das zonas mais quentes do sul da Ilha da Madeira, em solos de origem vulcânica. Cristalino, de cor rosada e aroma frutado, sugere morango e cereja. Na boca apresenta-se vibrante e fresco, com final de boca frutado revelando notas de frutos vermelhos. Servir de imediato. A acompanhar pratos de marisco, peixe grelhado e saladas. 9-11ºC.',4.0,7.5,10.5,'Tinta Negra',5,12,13,'https://osvinhos.blogspot.com/2019/05/5130-atlantis-2016-rose.html'),
    (14,'La Sastrería Garnacha 2017',2017,3,'Coléccion Tropical. Alta costura. Este vino ha sido tejido con uvas de Garnacha tinta. Conjuga modernidad y carácter frutal con la elegancia del estillo mediterráneo de esta variedad.',4.0,7.5,13.5,'Garnacha',6,2,14,'https://osvinhos.blogspot.com/2019/04/5104-la-sastreria-garnacha-2017-rose.html'),
    (15,'La Sastrería Garnacha Blanca 2017',2017,1,'Coléccion Estampado. Alta costura. Este vino ha sido tejido con uvas de Garnacha Blanca. Conjuga modernidad y carácter frutal con la elegancia del estillo mediterráneo de esta variedad.',4.0,7.5,13.5,'Garnacha Branca',6,2,15,'https://osvinhos.blogspot.com/2019/04/5111-la-sastreria-garnacha-blanca-2017.html'),
    (16,'Le Bordeaux de By 2016',2016,1,'Jean Guyon est propriétaire des Domaines Rollan de By. Ce savoir-faire, mis au service du terroir exceptionnel que nous offre le vignoble bordelais, nous permet aujourd''hui de réaliser le Bordeuax de By, un vin de caractère élaboré dans la plus pure tradition des vins de Bourdeaux. Le Bordeaux de By est élaboré avec un cépage emblématique du terroir bordelais: Le Sauvignon Blanc. A déguster sur les viandes blanches, les fruits de mer et poissons. Température de service idéale entre 9º et 11ºC.',4.0,7.5,11.5,'Sauvignon Blanc',7,5,16,'https://osvinhos.blogspot.com/2019/09/5263-le-bordeaux-de-by-2016-branco.html'),
    (17,'Le Bordeaux de By 2016',2016,3,'Jean Guyon est propriétaire des Domaines Rollan de By. Ce savoir-faire, mis au service du terroir exceptionnel que nous offre le vignoble bordelais, nous permet aujourd''hui de réaliser le Bordeuax de By, un vin de caractère élaboré dans la plus pure tradition des vins de Bourdeaux. Le Bordeaux de By est élaboré avec un cépage emblématique du terroir bordelais: Le Merlot. A déguster sur des tapas, charcuteries, poissons grillés, viandes blanches et salades. Température de service idéale entre 6º et 8ºC.',4.0,7.5,12.5,'Merlot',7,5,17,'https://osvinhos.blogspot.pt/2017/12/4623-le-bordeaux-de-by-2016-rose.html'),
    (18,'Anthilia 2007',2007,1,'-',4.0,7.5,13.0,'Cataratto e Ansonica',8,7,18,'https://osvinhos.blogspot.pt/2011/11/2017-anthilia-2007-branco.html'),
    (19,'Barbera d''Alba Raimonda 2006',2006,2,'-',10.0,12.5,13.5,'Barbera',8,8,19,'https://osvinhos.blogspot.pt/2011/06/1784-barbera-dalba-raimonda-2006-tinto.html'),
    (20,'Marne Brune Nebbiolo d''Alba 2008',2008,2,'-',10.0,12.5,13.5,'Nebbiolo',8,8,20,'https://osvinhos.blogspot.pt/2013/02/2517-marne-brune-nebbiolo-dalba-2008.html'),
    (21,'Dogma 2005',2005,2,'Produzido a partir das castas Aragonês, Trincadeira e Syrah. Aromas e sabores de frutos encarnados combinados com notas subtis de baunilha.',2.0,4.0,14.0,'Aragonês, Trincadeira e Syrah',9,1,21,'https://osvinhos.blogspot.pt/2006/10/274-dogma-2005-tinto.html'),
    (22,'Monte das Ânforas 2005',2005,2,'Produzido na Herdade das Ânforas, em Arraiolos, com castas Alentejanas. Apresenta uma forte personalidade regional: frutado, encorpado e aveludado.',2.0,4.0,13.5,'Trincadeira, Aragonez, Castelão e Alfrocheiro',9,1,22,'https://osvinhos.blogspot.pt/2006/07/198-monte-das-anforas-2005-tinto.html'),
    (23,'Monte Cascas Reserva Alentejo 2013',2013,2,'Casca Wines é um projecto de Enólogos e Especialistas em Vinhos que decidiram criar uma marca de vinho português de grande qualidade. Um projecto que apenas trabalha com as melhores uvas e que procurar reavivar a cultura única de Portugal na criação de vinhos. Hélder Cunha, Enólogo. Grape Varieties: 60% Alicante, 30% Aragonez & 10% Trincadeira. Aged 12 months in french oak.',7.5,10.0,13.5,'Alicante Bouschet, Aragonez e Trincadeira',9,3,23,'https://osvinhos.blogspot.pt/2017/09/4519-monte-cascas-reserva-alentejo-2013.html'),
    (24,'Barranco Longo 2009',2009,3,'Aragonez e Touriga Nacional. Solos argilo-calcários. Clima mediterrânico com mais de 3000 horas de sol por ano. Fermentação em cubas de inox com temperatura controlada. Cor rosada. Aroma intenso a frutos vermelhos misturados com frutos tropicais. Boa acidez tornando o conjunto fresco e apelativo. Excelente para acompanhar todo o tipo de refeições em época quente e também como aperitivo. 8/10ºC.',4.0,7.5,12.5,'Aragonez e Touriga Nacional',10,13,24,'https://osvinhos.blogspot.pt/2011/05/1766-barranco-longo-2009-rose.html'),
    (25,'Barranco Longo Grande Escolha 2017',2017,1,'Arinto e Chardonnay. Solo argilo-calcário. Clima mediterrânico com mais de 3000 horas de sol por ano. Fermentação em cubas de inox com temperatura controlada, seguida de estágio sobre as borras finas. Cor citrina dourada. Aroma rico e expressivo com notas minerais. Vinho complexo e encorpado, cheio, cremoso, com bom equilíbrio e persistência na boca. Excelente para acompanhar peixe grelhado ou fumado, patés e carnes brancas. 10-12ºC.',7.5,10.0,12.0,'Arinto e Chardonnay',10,13,25,'https://osvinhos.blogspot.com/2019/05/5146-barranco-longo-grande-escolha-2017.html'),
    (26,'Mateus Rosé 2011',2011,3,'Vinho jovem, fresco, frutado e versátil. Aperitivo cozinha asiática e italiana, barbecues, saladas, mariscos.',2.0,4.0,11.0,'Baga, Rufete, Tinta Barroca, Touriga Franca e outras',11,14,26,'https://osvinhos.blogspot.pt/2013/06/2701-mateus-rose-2011-rose.html'),
    (27,'Mateus Rosé Aragonês 2015',2015,3,'Refrescante e fácil de beber, este vinho Rosé tem um aroma frutado com notas florais e tropicais. 8-10ºC.',2.0,4.0,10.5,'Aragonês',11,14,27,'https://osvinhos.blogspot.pt/2017/02/4304-mateus-rose-aragones-2015-rose.html'),
    (28,'Aurius 2002',2002,2,'O talento e o empenho do Homem elevaram a majestosa Touriga Nacional complementando-a criteriosamente com uma combinação única de castas adequadas (Syrah, Tinta Roriz e Petit Verdot), a consagrar a expressão áurea do terroir da Quinta do Monte d''Oiro.',25.0,50.0,14.5,'Touriga Nacional, Syrah, Tinta Roriz e Petit Verdot',12,10,28,'https://osvinhos.blogspot.pt/2010/03/1265-aurius-2002-tinto.html'),
    (29,'Madrigal Viognier 2006',2006,1,'Madrigal, s.m. (it. madrigale). Pequena composição poética, que exprime um pensamento fino, lisonjeiro e terno. (…) Deve ser servido a uma temperatura entre 8 e 10ºC.',15.0,20.0,14.0,'Viognier',12,10,29,'https://osvinhos.blogspot.pt/2009/10/1136-madrigal-viognier-2006-branco.html'),
    (30,'Lisbon''s Mustache 2013',2013,2,'E aqueles que dançavam foram tidos como loucos por aqueles que não conseguiam ouvir a música. Friedrich Nietzsche (Adaptado). Lisbon''s Mustache é um vinho guloso, com aromas silvestres e muito aveludado. Resultado da fusão entre as uvas de Touriga Nacional e de Alicante Bouschet cultivadas de forma sustentável. Complementa pratos de massas variados e carnes simples. Winemaker: Francisco Macieira.',4.0,7.5,14.0,'Touriga Nacional e Alicante Bouschet',13,4,30,'https://osvinhos.blogspot.pt/2015/08/3691-lisbons-mustache-2013-tinto.html'),
    (31,'Aurius 2012',2012,2,'O talento e o empenho do Homem elevaram a majestosa Touriga Nacional, complementado-a criteriosamente com Syrah a consagrar a expressão áurea do terroir onde nasceu.',20.0,25.0,14.0,'Touriga Nacional e Syrah',13,10,31,'https://osvinhos.blogspot.com/2019/10/5284-aurius-2012-tinto.html'),
    (32,'José Bento dos Santos Originals Têmpera Tinta Roriz 2006',2006,2,'É a têmpera que transforma o ferro humildeno nobre aço. E é a têmpera que molda o carácter ao Homem. Eis o "Têmpera", um Tinta Roriz desenhado por José Bento dos Santos. Com têmpera. Com nobreza. Com carácter.',15.0,20.0,13.5,'Tinta Roriz',13,10,32,'https://osvinhos.blogspot.pt/2011/02/1644-jose-bento-dos-santos-originals.html'),
    (33,'Catarina 2011',2011,1,'Este vinho é uma homenagem a D. Catarina de Bragança, Rainha de Inglaterra e Princesa de Portugal e a todas as Catarinas. Nas excelentes condições das vinhas na Península de Setúbal, as castas Portuguesas Fernão Pires e Arinto, combinam-se na perfeição com o Chardonnay, dos solos argilo-calcários. Fermentado parcialmente em barricas novas de carvalho, este vinho apresenta uma madeira subtil e uma boa acidez natural, conferindo-lhe um final fresco e complexo.',4.0,7.5,13.5,'Chardonnay, Fernão Pires e Arinto',14,1,33,'https://osvinhos.blogspot.pt/2014/04/3098-catarina-2011-branco.html'),
    (34,'Cova da Ursa Chardonnay 2015',2015,1,'Produzido com uvas da casta Chardonnay da nossa vinha "Cova da Ursa", situada nas encostas da Serra da Arrábida. O seu solo pedregoso argilo-calcário e o meso-clima da zona da Arrábida, permitem que as uvas desta casta amadureçam lentamente atingindo uma elevada qualidade. Da cuidadosa tecnologia de vinificação realçamos a fermentação e maturação integral em barricas novas de carvalho francês. O vinho apresenta uma cor dourada com reflexos esverdeados, um sabor rico em notas aromáticas e gustativas da casta Chardonnay, combinadas com nuances tostadas e abaunilhadas, provenientes do estágio em madeira.',12.5,15.0,14.0,'Chardonnay',14,1,34,'https://osvinhos.blogspot.pt/2017/02/4319-cova-da-ursa-chardonnay-2015-branco.html'),
    (35,'Má Partilha Merlot 2011',2011,2,'Produzido inteiramente com a casta Merlot, de vinhas localizadas nas encostas de Azeitão, onde encontra um terroir óptimo para o seu plantio com elevada qualidade. A sua fermentação foi finalizada em barricas novas de carvalho francês "Allier", seguido de um estágio nas mesmas, o que contribui para a excelente integração dos aromas e sabores, e que lhe conferem uma estrutura complexa e muito persisstente.Apresenta um óptimo potencial de envelhecimento em garrafa e é o acompanhante ideal de pratos de carne, caça e queijos. Servir à temperatura de 14-16ºC. Este vinho é produzido desde 1986, elaborado a partir de uvas seleccionadas da casta Merlot, do terroir priveligiado das nossas propriedades de Azeitão.',12.5,15.0,13.5,'Merlot',14,1,35,'https://osvinhos.blogspot.pt/2017/04/4381-ma-partilha-merlot-2011-tinto.html'),
    (36,'Meia Pipa 2000',2000,2,'Combinámos o Castelão, a casta mais importante da Península de Setúbal, com a casta mais famosa do mundo o Cabernet Sauvignon. Após vinificação separada e selecção de lote, o vinho estagia durante cerca de 12 meses em meias-pipas de carvalho.',4.0,7.5,13.0,'Castelão e Cabernet Sauvignon',14,1,36,'https://osvinhos.blogspot.pt/2006/10/273-meia-pipa-2000-tinto.html'),
    (37,'Herdade de Catapereiro 2014',2014,3,'Merlot e Syrah. Aroma a frutos vermelhos e groselha. Na boca fresco e elegante.',2.0,4.0,13.0,'Merlot e Syrah',15,4,37,'https://osvinhos.blogspot.com/2018/07/4818-herdade-de-catapereiro-2014-rose.html'),
    (38,'Herdade de Catapereiro Single Vineyard 2016',2016,2,'Syrah, Touriga Nacional, Aragonez, Alicante Bouschet. Aroma a frutos vermelhos e ameixa preta madura numa envolvência abaunilhada. Na boca é um vinho suave e elegante, com final prolongado.',2.0,4.0,13.5,'Syrah, Touriga Nacional, Aragonez e Alicante Bouschet',15,4,38,'https://osvinhos.blogspot.com/2018/06/4799-herdade-de-catapereiro-single.html'),
    (39,'Monte Cascas Reserva Minho 2012',2012,1,'Casca Wines é um projecto de Enólogos que decidiram criar uma marca de vinhos portugueses de grande qualidade. Um projecto que apenas utiliza as melhores uvas cada região e que procurar reavivar as tradições únicas de Portugal. Helder Cunha winemaker. Grape Varieties: 90% Arinto & 10% Alvarinho. Aged 12 months in french oak.',7.5,10.0,11.0,'Arinto e Alvarinho',16,3,39,'https://osvinhos.blogspot.pt/2015/11/3830-monte-cascas-reserva-minho-2012.html'),
    (40,'Monte Cascas Reserva Minho 2015',2015,1,'Casca Wines é um projecto de Enólogos e Especialistas em Vinhos que decidiram criar uma marca de vinho português de grande qualidade. Um projecto que apenas trabalha com as melhores uvas e que procurar reavivar a cultura única de Portugal na criação de vinhos. Hélder Cunha, Enólogo. Grape Varieties: 100% Arinto. Aged 12 months in french oak.',7.5,10.0,11.0,'Arinto',16,3,40,'https://osvinhos.blogspot.pt/2017/09/4526-monte-cascas-reserva-minho-2015.html');

/****************************************************************
                              Table: VENDIDO
****************************************************************/

DROP TABLE IF EXISTS VENDIDO;
CREATE TABLE VENDIDO (
  IdVinho int NOT NULL,
  IdCompra int NOT NULL,
  PRIMARY KEY(`IdCompra`,`IdVinho`),
  FOREIGN KEY (`IdCompra`) REFERENCES `NOMELOJA`(`IdCompra`),
  FOREIGN KEY (`IdVinho`) REFERENCES `VINHO`(`IdVinho`)
);
INSERT INTO `VENDIDO` (`IdVinho`, `IdCompra`) VALUES
	('1', '1'),
	('1', '3'),
	('2', '4'),
	('2', '2'),
	('3', '3'),
	('4', '1'),
	('5', '5'),
	('6', '3'),
	('7', '3'),
	('7', '2'),
	('8', '1'),
	('8', '2'),
	('9', '5'),
	('9', '2'),
	('10', '1'),
	('11', '3'),
	('11', '2'),
	('12', '4'),
	('12', '2'),
	('13', '1'),
	('13', '2'),
	('14', '3'),
	('14', '2'),
	('15', '1'),
	('15', '5'),
	('15', '2'),
	('16', '3'),
	('16', '2'),
	('17', '1'),
	('17', '5'),
	('17', '2'),
	('18', '1'),
	('18', '2'),
	('19', '4'),
	('19', '2'),
	('20', '5'),
	('21', '4'),
	('21', '2'),
	('22', '1'),
	('23', '1'),
	('23', '2'),
	('24', '1'),
	('25', '1'),
	('25', '2'),
	('26', '3'),
	('26', '2'),
	('27', '2'),
	('28', '4'),
	('28', '2'),
	('29', '4'),
	('29', '2'),
	('30', '4'),
	('30', '2'),
	('31', '1'),
	('31', '5'),
	('31', '2'),
	('32', '1'),
	('32', '2'),
	('33', '3'),
	('33', '2'),
	('34', '3'),
	('34', '2'),
	('35', '1'),
	('36', '4'),
	('36', '2'),
	('37', '4'),
	('38', '4'),
	('38', '2'),
	('39', '1'),
	('39', '2'),
	('40', '4');
