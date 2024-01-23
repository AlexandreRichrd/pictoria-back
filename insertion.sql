-- Insertion pour la table Club
INSERT INTO Club (nomClub, adresse, numTelephone, nombreAdherents, ville, departement, region)
VALUES
    ('DessinDuMonde', 'Boulevard Jean Janneteau', '0245763598', 10, 'Angers', 'Maine-et-Loire', 'Pays de la Loire'),
    ('QuoicouDessin', '50 Rue du cul', '0123456789', 10, 'Cholet', 'Maine-et-Loire', 'Pays de la Loire'),
    ('Club Nantais', '12 Quai des Machines', '7964153685', 10, 'Nantes', 'Loire-Atlantique', 'Pays de la Loire'),
    ('MathsEtDessin', '7 impasse de Michel', '5876314445', 10, 'Saint-Nazaire', 'Loire-Atlantique', 'Pays de la Loire'),

    -- Île-de-France
    ('Club Parisien', '10 Rue de la Seine', '9876543210', 10, 'Neuilly-sur-Seine', 'Hauts-de-Seine', 'Île-de-France'),
    ('CaDessineOuuuuu?', '5 impasse de Caronde', '5789364520', 10, 'Boulogne-Billancourt', 'Hauts-de-Seine', 'Île-de-France'),
    ('ClubPasDeFoot', '54 Avenue Richard', '2345678901', 10, 'Meaux', 'Seine-et-Marne', 'Île-de-France'),
    ('FCDessin', '17 Rue Salaun', '7894567854', 10, 'Melun', 'Seine-et-Marne', 'Île-de-France'),

    -- Auvergne-Rhône-Alpes
    ('Club Lyonnais', '23 Rue des Bouchons', '1235796190', 10, 'Lyon', 'Rhône', 'Auvergne-Rhône-Alpes'),
    ('YAYAYAYA', '17 lieu dit du Guitet', '1234567890', 10, 'Villeurbanne', 'Rhône', 'Auvergne-Rhône-Alpes'),
    ('Anne-Si !', '8 Rue du proute', '2340002501', 10, 'Annecy', 'Haute-Savoie', 'Auvergne-Rhône-Alpes'),
    ('AnneMasseMoiLeDos', '7 Boulevard Emile-Louis', '2345678901', 10, 'Annemasse', 'Haute-Savoie', 'Auvergne-Rhône-Alpes'),

    -- Provence-Alpes-Côte d'Azur
    ('DROIT AU BUT', '5 Boulevard du Vieux-Port', '5677899934', 10, 'Marseille', 'Bouches-du-Rhône', 'Provence-Alpes-Côte dAzur'),
    ('Dessine en Provence', '4 Rue du Pastis', '5678781234', 10, 'Aix-en-Provence', 'Bouches-du-Rhône', 'Provence-Alpes-Côte dAzur'),
    ('Les Aigles Ont La Chaire De Poule', '21 Promenade des Pissenlits', '7811123456', 10, 'Nice', 'Alpes-Maritimes', 'Provence-Alpes-Côte dAzur'),
    ('CaDefileOuuuu?', '1 Boulevard du tapis rouge', '7890123866', 10, 'Cannes', 'Alpes-Maritimes', 'Provence-Alpes-Côte dAzur');


-- Insertion pour la table Utilisateur
INSERT INTO Utilisateur (nom, prenom, adresse, dateDeNaissance, nationalite, login, motDePasse, numClub)
VALUES
    
('Sharon','Cruyssen','Niort','1985-05-06','France','cruyssen-sharon3449@icloud.com','KZ735XS',1),
('Kennan','De Witte','Vannes','2001-08-17','France','d.kennan7286@aol.net','HP260RK',1),
('Orlando','Brisbois','Wattrelos','1998-02-25','France','o_brisbois@icloud.couk','KH567EW',1),
('Ryder','Hoedemaker','Le Puy-en-Velay','2004-06-28','France','ryder_hoedemaker674@aol.com','NR372NF',1),
('Samuel','Achthoven','Ajaccio','1993-02-24','France','s.achthoven7070@aol.net','DW353ZO',1),
('Todd','Aarle','Bastia','1995-08-30','France','aarle.todd8298@hotmail.edu','HB446IP',1),
('Neville','Kappel','Saint-Nazaire','2011-11-29','France','neville-kappel568@google.net','AS318JE',1),
('Aline','Bouwmeester','Colmar','2012-06-01','France','b_aline@hotmail.net','KD518RE',1),
('Devin','Spijker','Montreuil','2001-07-29','France','d-spijker@yahoo.edu','BI537FV',1),
('Amos','Haanraads','Pau','1986-09-11','France','a_haanraads8210@icloud.org','OZ262EB',1),
('Lucas','Tailler','Nîmes','1989-09-21','France','l_tailler@google.com','SB255GQ',1),
('Kuame','Chevalier','Strasbourg','1994-03-07','France','k_chevalier4720@aol.net','KQ218HS',1),
('Edward','Plamondon','Saint-Brieuc','1982-03-11','France','edward_plamondon@protonmail.edu','VG645JM',1),
('Alana','Villenueve','Bègles','1985-09-15','France','a.villenueve5410@hotmail.com','PT244OK',1),
('Stacy','Bouwmeester','Dijon','2015-10-20','France','stacybouwmeester@aol.com','BK567VK',1),
('Gemma','Proulx','Aix-en-Provence','1993-07-08','France','g.proulx@yahoo.com','KE845VG',1),
('Alma','Gagneux','Chalons-en-Champagne','2004-03-30','France','g.alma@google.net','KL166XR',1),
('Basia','Brisbois','Vandoeuvre-lès-Nancy','2014-09-18','France','brisbois.basia@hotmail.org','DL824EU',1),
('Burke','Chastain','Saint-Herblain','2004-04-17','France','chastain-burke@aol.com','TW732MF',1),
('Celeste','Neuville','Aurillac','2012-03-29','France','celesteneuville@google.org','JT447SS',1),
('Talon','Holt','Moulins','1990-01-07','France','holt_talon712@icloud.edu','YJ815YP',2),
('Madeline','Borde','Evreux','1989-10-03','France','borde_madeline9121@outlook.edu','DX067WO',2),
('Fulton','Savatier','Tarbes','2005-08-05','France','fulton-savatier@protonmail.com','KP486GR',2),
('Xantha','Dumont','Sète','1995-12-08','France','x-dumont@outlook.couk','EF042VX',2),
('Tanner','Fabre','Bourges','1980-11-29','France','fabre-tanner3146@google.net','LO783NG',2),
('Fritz','Lane','Caen','2004-09-13','France','f_lane4901@aol.ca','RX231AE',2),
('April','Mertens','Caen','2001-06-13','France','mertensapril@yahoo.edu','OS417TR',2),
('Edan','Van Aalsburg','Rodez','1998-12-23','France','vanaalsburg_edan6022@icloud.org','DK403LY',2),
('Darrel','Kloet','Cherbourg-Octeville','1986-06-27','France','k_darrel2246@outlook.net','XX240RS',2),
('Iola','Koopman','Epernay','1996-02-08','France','i_koopman3008@icloud.ca','FB333HF',2),
('Reuben','Holt','Vannes','1986-11-28','France','reuben_holt5008@yahoo.org','YA157LS',2),
('Burton','Cloutier','Bastia','1988-08-13','France','c-burton3921@outlook.com','PI234GX',2),
('Kane','Rademaker','Nancy','2001-04-20','France','rademakerkane@protonmail.org','FK523HJ',2),
('Kane','Tremblay','Pontarlier','1981-07-26','France','k_tremblay@yahoo.ca','NB170TC',2),
('Tiger','Bouwmeester','Brive-la-Gaillarde','1993-04-16','France','t_bouwmeester@google.ca','JR639TT',2),
('Cassady','Chastain','Brive-la-Gaillarde','1999-03-31','France','chastaincassady6511@google.com','SA170FR',2),
('Regina','Vincent','Colmar','2004-09-26','France','r.vincent2427@aol.org','PY538XA',2),
('Ivy','Adrichem','Moulins','2013-05-03','France','i-adrichem6772@icloud.com','MP588KY',2),
('Idola','Villenueve','Paris','2014-07-08','France','i-villenueve9441@protonmail.couk','JA354RQ',2),
('Darryl','Marchand','Auxerre','1987-10-09','France','marchanddarryl@icloud.com','JP406OS',2),
('Wing','Gagneux','Ajaccio','1990-11-01','France','w.gagneux6356@yahoo.edu','OY377AY',3),
('Louis','Jonker','Nancy','1987-05-06','France','jonker.louis@aol.net','ZA799YI',3),
('Violet','Van Alphen','Vitry-sur-Seine','1997-06-23','France','vvanalphen5872@icloud.couk','ER182AW',3),
('Iola','Archambault','Montluçon','2015-05-22','France','iola_archambault2003@protonmail.com','DB802YY',3),
('Patience','Janvier','Le Puy-en-Velay','1998-12-06','France','p-janvier2417@protonmail.org','JY611EY',3),
('Reece','Janssens','Pau','1981-02-18','France','reece-janssens@aol.com','DL734WI',3),
('Sebastian','Cloutier','Bourges','1990-05-19','France','c.sebastian@aol.org','DD037VS',3),
('Ahmed','Fontaine','Ajaccio','1994-10-26','France','fontaine.ahmed@yahoo.ca','ME140SC',3),
('Lucian','Villenueve','Talence','2003-05-08','France','villenueve.lucian@icloud.ca','VG275MF',3),
('Howard','Aakster','Versailles','2003-06-03','France','a-howard5881@aol.com','LH730VQ',3),
('Amela','Lemaire','Montbéliard','2002-11-21','France','alemaire@icloud.edu','RH886PN',3),
('Vladimir','Bunschoten','Rodez','1997-09-25','France','bunschotenvladimir@hotmail.ca','EN344ZS',3),
('Frances','De Witte','Abbeville','2003-12-23','France','frances_dewitte@google.net','TY190TJ',3),
('Shelley','Lemaire','Laval','1994-12-29','France','slemaire@aol.couk','CT527YO',3),
('Cole','Hendrix','Albi','2013-07-24','France','c-hendrix@yahoo.com','PV137SW',3),
('Lunea','Van Alphen','Martigues','2005-12-18','France','luneavanalphen@yahoo.couk','ET189SH',3),
('Orson','Bouwmeester','Talence','2005-06-08','France','o.bouwmeester@aol.com','DY732QB',3),
('Armando','Holt','Aurillac','2004-08-09','France','aholt@protonmail.com','XV205BG',3),
('Amos','Van Assen','Sens','2010-01-01','France','a_vanassen5992@hotmail.org','ZR534QE',3),
('Brian','Adrichem','Toulouse','1996-04-25','France','brian.adrichem@aol.org','EW286CX',3),
('Kasimir','Kappel','Dole','1999-04-12','France','kkappel6279@protonmail.org','JY486LE',4),
('Melinda','Poulin','Vannes','1989-08-25','France','m.poulin@yahoo.edu','MA486MB',4),
('Lance','Ter Avest','Auxerre','1998-12-10','France','teravestlance@hotmail.org','DI338PX',4),
('Rylee','Neuville','Dijon','1992-01-18','France','neuville-rylee5402@outlook.ca','EX371XE',4),
('Jerry','Cousineau','Saint-Maur-des-Fossés','2009-08-05','France','jerry.cousineau4321@google.edu','OX138HD',4),
('Nerea','Lamar','Cannes','1983-02-21','France','lamar-nerea6147@yahoo.ca','IK874OR',4),
('Shelby','Berger','Le Petit-Quevilly','2006-07-10','France','berger_shelby@google.org','BY181CC',4),
('Paloma','Aarle','Saint-Nazaire','1991-12-11','France','a-paloma@protonmail.net','ZB132QO',4),
('Hector','Fabre','Sotteville-lès-Rouen','2000-03-12','France','fabre-hector@google.edu','VW548XO',4),
('Vaughan','Savatier','Montbéliard','2004-06-03','France','savatiervaughan@protonmail.net','FT342MG',4),
('Aimee','Lemaire','Tarbes','2000-01-31','France','a.lemaire@protonmail.net','EP071DH',4),
('Iris','Achterberg','Cherbourg-Octeville','2001-11-06','France','achterberg.iris@google.net','HP651TA',4),
('Nerea','Romeijnders','Lisieux','2002-07-07','France','rnerea@aol.org','VU662UL',4),
('Kiayada','Bellamy','Angers','1997-12-09','France','kbellamy8694@yahoo.ca','KK767QE',4),
('Brian','Chastain','Poitiers','1998-12-05','France','brian_chastain6232@aol.ca','BS383IW',4),
('Dylan','Lamar','Caen','1980-07-27','France','l.dylan1310@icloud.ca','VJ161CQ',4),
('Nichole','Van Der Aart','Cannes','1992-03-23','France','v_nichole@outlook.couk','KB134UL',4),
('Anne','Aarle','Versailles','1987-04-14','France','aarle-anne@yahoo.ca','KH474CQ',4),
('Beau','Jonker','Tarbes','2014-09-05','France','b.jonker7103@aol.org','WR282EI',4),
('Burke','Elzinga','Cagnes-sur-Mer','1996-03-13','France','elzinga_burke3957@google.org','MJ275VS',4),
('Courtney','Haanraads','Aurillac','1982-03-24','France','haanraads-courtney@aol.couk','LS333EX',5),
('Emerson','Borde','Saint-Dié-des-Vosges','1983-06-28','France','b_emerson2371@aol.ca','NQ783TQ',5),
('Cole','Jonker','Sotteville-lès-Rouen','1993-08-03','France','c-jonker@aol.com','EI767OD',5),
('Lesley','Peerenboom','Abbeville','1991-11-29','France','lesley.peerenboom5200@google.com','OS398KZ',5),
('Edward','Monet','Nancy','1993-08-13','France','e-monet@hotmail.edu','NV839IH',5),
('Aquila','Duval','Bourges','1985-03-02','France','aquila.duval8456@google.ca','RM413JU',5),
('Nero','Langlais','Sarreguemines','1992-02-25','France','n-langlais3721@hotmail.com','OG365MH',5),
('Judah','Van Assen','Nantes','2010-12-02','France','judahvanassen@icloud.couk','JB145TQ',5),
('Ulysses','Beaulieu','Dole','2010-02-09','France','beaulieu-ulysses3633@aol.com','OP542NA',5),
('Charissa','Plourde','Brive-la-Gaillarde','2005-05-26','France','plourde.charissa@outlook.edu','IV727EQ',5),
('Duncan','Van Alphen','Hérouville-Saint-Clair','1994-07-11','France','v-duncan@aol.com','KJ623LG',5),
('Germaine','Heeren','Saint-Lô','1985-10-19','France','hgermaine1354@icloud.couk','CT530HI',5),
('Blaze','Savatier','Saint-Dizier','2006-12-05','France','savatier-blaze@outlook.ca','CR730PF',5),
('Jana','Tailler','Vandoeuvre-lès-Nancy','1984-12-10','France','tailler_jana@outlook.ca','OO654FV',5),
('Erin','Peeters','Saumur','2009-07-13','France','erin_peeters7954@aol.couk','JD655NL',5),
('Elvis','Chevalier','Lanester','2013-07-17','France','c.elvis@aol.couk','SU553WC',5),
('Iola','De Witte','Toulouse','1988-11-24','France','dewitte_iola8401@hotmail.com','RT638SD',5),
('Buckminster','Segal','Hérouville-Saint-Clair','1989-07-17','France','s.buckminster8998@hotmail.net','NB522EN',5),
('Clio','Plourde','Illkirch-Graffenstaden','2000-12-06','France','clio_plourde614@protonmail.couk','KE476CC',5),
('Madaline','Kappel','La Roche-sur-Yon','2013-11-12','France','mkappel8512@yahoo.edu','OU760IC',5),
('Berk','Dubois','Versailles','2008-10-31','France','b.dubois1673@outlook.edu','FD688KV',6),
('Hyatt','Monet','Poitiers','2002-02-21','France','m-hyatt@hotmail.net','ZN365WF',6),
('Elaine','Villenueve','Mont-de-Marsan','1987-04-20','France','e_villenueve5484@hotmail.ca','NW174VM',6),
('Orla','Rietveld','Saint-Denis','2013-08-25','France','orlarietveld9812@google.org','MH356VP',6),
('Brynne','Chaput','La Rochelle','2008-10-15','France','c_brynne9730@aol.couk','KG081ZI',6),
('Heather','Tasse','Lisieux','1988-10-10','France','tasse-heather@hotmail.ca','QU661NL',6),
('Kieran','Victor','Nice','1995-12-25','France','v_kieran@icloud.org','PE737KY',6),
('Whoopi','Fontaine','Bergerac','2011-04-08','France','fontaine.whoopi@aol.couk','YC375OF',6),
('Charles','Victor','La Roche-sur-Yon','1983-04-17','France','c_victor@protonmail.edu','MY580HH',6),
('Kelly','Roggeveen','Schiltigheim','2010-01-19','France','k-roggeveen@protonmail.ca','GG779TO',6),
('Samantha','Janssens','Vitrolles','1980-11-20','France','s-janssens3929@google.org','TI824TK',6),
('Oren','Langlais','Lunel','2004-10-02','France','langlais_oren@protonmail.com','GO780QS',6),
('Dylan','Chastain','Montpellier','1997-04-18','France','d.chastain@hotmail.com','OE499HD',6),
('Kevin','Rademaker','Douai','2009-07-30','France','rademaker-kevin5359@yahoo.edu','LX325NY',6),
('McKenzie','Fontaine','Vernon','1996-08-01','France','m-fontaine9313@google.ca','CC755FA',6),
('Wylie','Tasse','Albi','2011-04-10','France','twylie5422@aol.com','KS736TC',6),
('Quinlan','Kuiper','Narbonne','1980-08-05','France','kuiper-quinlan@google.ca','KH097JA',6),
('Constance','Jonker','Bastia','2010-04-09','France','jonker_constance7237@google.couk','NT453ZU',6),
('Basia','Prinsen','Bayonne','2006-09-14','France','prinsen.basia@icloud.com','XG538VW',6),
('Beau','Deforest','Epinal','2005-10-03','France','beau_deforest@outlook.edu','WR867RZ',6),
('Xena','Cruyssen','Laon','1993-02-17','France','cruyssen.xena@hotmail.ca','NQ145PQ',7),
('Ann','Brisbois','Lisieux','2005-12-29','France','ann_brisbois287@google.com','MO362YB',7),
('Russell','Dumont','Saint-Dizier','2013-07-23','France','russell-dumont8596@hotmail.org','DF184KE',7),
('Clark','Dam','Toulon','1985-07-26','France','dclark5111@icloud.edu','UV498EE',7),
('Kyla','Travers','Caen','1997-01-23','France','k-travers@outlook.edu','WJ275MR',7),
('Oprah','Koopman','Beauvais','2001-12-17','France','o_koopman@icloud.com','PD941DW',7),
('Derek','Gagneux','Aurillac','2014-09-09','France','gderek6953@icloud.com','YT756NJ',7),
('Signe','Aarden','Ajaccio','2009-07-03','France','aarden_signe6001@google.org','XM301LJ',7),
('Seth','Cousineau','Montpellier','1982-06-20','France','c.seth357@yahoo.com','UH000QW',7),
('Ryan','Baardwijk','Rouen','1986-07-29','France','bryan@yahoo.ca','ZF345BD',7),
('Debra','Smet','Ajaccio','1986-01-28','France','sdebra622@protonmail.ca','GG228AO',7),
('Geraldine','Dubois','Chalons-en-Champagne','1988-07-07','France','dubois.geraldine1091@protonmail.ca','ED274VS',7),
('Penelope','Leroux','Lisieux','1998-10-08','France','p_leroux@icloud.net','FC596TE',7),
('Stewart','Plamondon','Brive-la-Gaillarde','1995-09-24','France','s_plamondon@outlook.edu','YH777OC',7),
('Flynn','Romeijnders','Brest','1999-07-21','France','r-flynn1957@aol.ca','IL135QY',7),
('Porter','Royer','Vandoeuvre-lès-Nancy','2002-09-21','France','p-royer@protonmail.com','BJ475QU',7),
('Nyssa','Roggeveen','Troyes','2001-06-02','France','n-roggeveen@yahoo.edu','QH155JM',7),
('September','Eikenboom','Montluçon','2014-09-22','France','september.eikenboom2258@google.edu','TG774BL',7),
('Ezra','Beauchene','Joué-lès-Tours','1982-02-06','France','ezra.beauchene5367@hotmail.edu','SO524AN',7),
('Samantha','Tremble','Béziers','2002-04-25','France','samantha_tremble1726@outlook.com','JW202ED',7),
('Alec','Baardwijk','Levallois-Perret','2001-02-18','France','a_baardwijk5782@aol.org','RK768VV',8),
('Holmes','Smet','Mulhouse','1998-08-26','France','holmes-smet@icloud.net','IY712RP',8),
('Clinton','Neuville','Tarbes','1988-12-30','France','c-neuville@aol.couk','YJ284SI',8),
('Zachary','Holt','Istres','1989-06-05','France','z_holt2292@aol.ca','OC215GD',8),
('Luke','Lamar','Troyes','1981-01-10','France','l-lamar@protonmail.edu','KQ386HN',8),
('Holmes','Hagen','Ajaccio','1985-08-21','France','h-hagen@yahoo.net','OF053NO',8),
('Ulric','Lane','Saint-Dié-des-Vosges','1999-04-30','France','lane-ulric9271@google.couk','XI369PZ',8),
('Barclay','Lachapelle','Montluçon','2002-09-12','France','b.lachapelle7477@icloud.net','KE759II',8),
('Sawyer','Elzinga','Carcassonne','1986-06-10','France','elzinga-sawyer@protonmail.edu','XK135HE',8),
('Belle','Poulin','La Roche-sur-Yon','1993-07-03','France','p.belle@icloud.com','BY680OW',8),
('Travis','Royer','Pontarlier','2013-10-30','France','royer.travis5135@hotmail.couk','EG250EG',8),
('Gregory','Bellamy','Courbevoie','1984-04-07','France','b-gregory@google.couk','NY574BE',8),
('Burke','Gagneux','Beauvais','2013-10-02','France','gagneux-burke1434@icloud.couk','PU426MW',8),
('Veda','Hoedemaker','Créteil','2010-08-25','France','v_hoedemaker@outlook.edu','DD723CR',8),
('Mari','Neuville','Chatellerault','1981-03-03','France','neuville-mari2789@outlook.net','QE435YB',8),
('Igor','Holt','Saint-Maur-des-Fossés','1985-06-24','France','iholt@icloud.edu','GL285GL',8),
('Russell','Aarle','Chalons-en-Champagne','1984-09-09','France','aarle.russell@icloud.org','NU646HQ',8),
('Silas','Tremblay','Chatellerault','1987-04-19','France','stremblay@outlook.ca','LJ366YK',8),
('Gil','Elzinga','Bègles','1994-08-19','France','g-elzinga@hotmail.edu','GI404KV',8),
('Myles','Aarle','Besançon','1991-06-12','France','myles.aarle@outlook.org','DA463JL',8),
('Craig','Garcon','Rezé','2008-09-22','France','craiggarcon6137@outlook.com','DP418CJ',9),
('Fuller','Bezuindenhout','Le Mans','2004-03-26','France','b_fuller@google.org','WP387DG',9),
('Aphrodite','Maes','Rezé','1990-07-09','France','a-maes3152@hotmail.ca','RT742OW',9),
('Eleanor','Heeren','Agen','1992-06-11','France','heeren_eleanor@protonmail.net','WU367RJ',9),
('Britanni','Bezuindenhout','Béziers','1996-03-15','France','bbezuindenhout@google.net','JI673BD',9),
('Lionel','Kloet','Saint-Lô','2008-06-04','France','kloet.lionel@hotmail.com','MP442CK',9),
('Paula','Roggeveen','Lille','1982-01-13','France','paula.roggeveen7661@protonmail.org','QP748DM',9),
('Belle','Van Aalsburg','Ajaccio','2008-12-07','France','bvanaalsburg3593@protonmail.org','QI277YY',9),
('Stephen','Langlais','Champigny-sur-Marne','2012-06-07','France','slanglais@hotmail.com','HJ487OM',9),
('Odysseus','Garcon','Moulins','1995-07-01','France','garcon.odysseus4201@protonmail.edu','OM596RC',9),
('Odessa','Beaulieu','Pessac','1985-06-01','France','o_beaulieu@aol.edu','OW018MV',9),
('Jenette','Berg','Dole','1992-02-23','France','berg_jenette@protonmail.ca','DQ867NR',9),
('Camille','Van Alphen','Sens','1990-03-05','France','camille.vanalphen@yahoo.org','OR644TW',9),
('Isadora','Hendrix','Soissons','2013-01-06','France','h_isadora2583@hotmail.edu','NJ010IO',9),
('Tucker','Aarle','Nancy','2001-12-18','France','t-aarle563@outlook.ca','EC247GG',9),
('Bruce','Neuville','Drancy','2007-03-05','France','neuville.bruce@aol.net','TP576GP',9),
('Libby','Bouwmeester','Orléans','1997-11-09','France','libby-bouwmeester1744@google.edu','OV206OR',9),
('Laith','Heeren','Alençon','1982-07-25','France','hlaith@yahoo.couk','KG427RT',9),
('Declan','Aaldenberg','Saint-Médard-en-Jalles','2001-12-20','France','aaldenberg-declan@icloud.ca','BW658OS',9),
('Ashton','Proulx','Douai','2012-07-07','France','ashton.proulx@hotmail.com','DQ416LX',10),
('Anthony','Petit','Beauvais','1981-09-14','France','petit-anthony1743@icloud.net','RE892CY',10),
('Ciaran','Elzinga','Rouen','1983-04-27','France','c_elzinga@outlook.ca','KI724HX',10),
('George','Smet','Chateauroux','1985-05-16','France','g-smet9483@outlook.couk','IT677XH',10),
('Edward','Dumont','Limoges','2003-03-08','France','edward_dumont@outlook.com','SJ524SO',10),
('Oprah','Gagneux','Limoges','2013-11-03','France','o_gagneux4762@google.net','IE275EU',10),
('Rajah','Aaldenberg','Saint-Lô','1986-03-22','France','r_aaldenberg@outlook.org','RC835MB',10),
('Karleigh','Chastain','Mont-de-Marsan','2004-02-13','France','ckarleigh@hotmail.ca','ZH386QF',10),
('Ruby','Van Assen','Charleville-Mézières','2006-04-15','France','v-ruby@aol.org','XE176JW',10),
('Madeson','Royer','Clermont-Ferrand','2007-09-16','France','royer_madeson1660@yahoo.couk','QF751HL',10),
('Evelyn','Villenueve','Montigny-lès-Metz','2000-07-18','France','villenueve-evelyn3880@yahoo.com','FM787NK',10),
('Colorado','Klein','Le Petit-Quevilly','2006-11-09','France','c-klein@hotmail.net','PM421IK',10),
('Quin','Achterberg','Bastia','1981-08-06','France','a_quin@hotmail.net','BN883JN',10),
('Jin','Heeren','Champigny-sur-Marne','1994-01-02','France','jinheeren5602@google.edu','GN483QR',10),
('Emi','Neuville','Blois','1999-07-28','France','neuvilleemi@google.org','UI775IS',10),
('Acton','Aaldenberg','Ajaccio','1985-01-23','France','aaldenbergacton@protonmail.com','YI311CE',10),
('Hedwig','Boivin','Perpignan','1996-07-24','France','h_boivin646@outlook.com','NI303XK',10),
('Samantha','Archambault','Moulins','1996-06-04','France','archambault.samantha@aol.couk','KD078JU',10),
('Oscar','Aaldenberg','Nice','1980-10-11','France','aaldenbergoscar@google.edu','QB608UB',10),
('Lael','Lachapelle','Evreux','1992-10-15','France','l-lachapelle3341@yahoo.couk','AX140TX',10),
('Georgia','Van Aalsburg','Troyes','2010-11-20','France','vanaalsburg.georgia707@hotmail.edu','VK158CK',10),
('Sylvia','Lavigne','Angoulème','2000-04-23','France','sylvia-lavigne@google.org','OU353JK',11),
('Hilel','Rietveld','Aurillac','1980-08-21','France','rietveldhilel@yahoo.com','PM258CG',11),
('Ann','Eikenboom','Forbach','2012-04-03','France','eikenboom.ann@yahoo.net','BP915WB',11),
('Amanda','Maes','Rennes','2015-07-27','France','amanda_maes8092@aol.net','RL667CE',11),
('Garrett','Peeters','Villenave-d''Ornon','1980-05-18','France','g.peeters@google.couk','FK866HP',11),
('Uriel','Van Assen','Rennes','2008-12-05','France','u-vanassen@outlook.couk','UE577XK',11),
('Reagan','Villenueve','Le Petit-Quevilly','1987-05-03','France','villenuevereagan3210@protonmail.ca','XM732MR',11),
('Marah','Klein','Ajaccio','1999-04-18','France','marah_klein@icloud.ca','KU597NI',11),
('Barry','Spijker','Haguenau','1988-08-14','France','barryspijker6116@protonmail.ca','QQ223JG',11),
('Hammett','Berg','Martigues','1990-08-09','France','hammett-berg1935@outlook.edu','SJ094QI',11),
('Vivian','Kloet','Mérignac','2010-04-27','France','vivian-kloet@yahoo.org','LB311LE',11),
('Axel','Aaldenberg','Saumur','2004-11-17','France','a.aaldenberg7126@aol.org','VL283ZY',11),
('Castor','Offermans','Villenave-d''Ornon','2008-06-30','France','c.offermans@yahoo.couk','BD212IN',11),
('Richard','Van Alphen','Macon','1999-05-03','France','v.richard@aol.ca','NN386EL',11),
('Solomon','Villenueve','Aurillac','1980-07-16','France','svillenueve@google.edu','SB757XB',11),
('Catherine','Leroux','Evreux','1999-03-11','France','catherine-leroux8345@yahoo.com','DY096OK',11),
('Thor','Dumont','Belfort','1980-10-05','France','dumont-thor@icloud.com','ME735OC',11),
('Amal','Rietveld','Pessac','1988-08-19','France','amal.rietveld@google.couk','IF567CP',11),
('Emmanuel','Archambault','Troyes','1992-02-05','France','archambault.emmanuel@aol.net','DH612KP',11),
('Brendan','Gagneux','Bergerac','1986-04-16','France','brendan-gagneux6032@protonmail.couk','KH703VP',12),
('Samson','Dubois','Soissons','1994-09-29','France','s_dubois@yahoo.com','WS145XW',12),
('Christian','Haanraads','Cagnes-sur-Mer','2005-01-19','France','c-haanraads@google.couk','KY637DN',12),
('Zenia','Blanc','La Rochelle','1985-12-09','France','z-blanc@yahoo.org','OY854EC',12),
('Anika','Geelen','La Rochelle','1986-06-17','France','geelen_anika6772@hotmail.net','HH014VC',12),
('Keely','Peerenboom','Blois','2004-08-01','France','peerenboom-keely@icloud.couk','XE745QC',12),
('Eve','Chastain','Montigny-lès-Metz','1994-04-09','France','echastain505@aol.ca','IF684EO',12),
('Nina','Boivin','Narbonne','1988-06-06','France','b_nina5693@google.edu','KV488HF',12),
('Roth','Kappel','Saint-Herblain','1980-06-12','France','r_kappel@protonmail.couk','HJ367OM',12),
('Keefe','Blanc','Cholet','1991-06-30','France','k-blanc6287@protonmail.couk','WS871EO',12),
('Leah','Hendrix','Saint-Dizier','1980-06-29','France','hleah8696@hotmail.org','XE929QV',12),
('Kenyon','Eikenboom','Cherbourg-Octeville','1999-05-03','France','ekenyon9596@aol.org','XF748RT',12),
('Magee','Maes','Bordeaux','2009-06-18','France','mmaes4460@icloud.couk','KB383WP',12),
('Raven','Bouwmeester','Clermont-Ferrand','1997-03-14','France','bouwmeester.raven7535@protonmail.com','JU617HG',12),
('Jessamine','De Witte','Saint-Dié-des-Vosges','2015-06-14','France','jessamine_dewitte@yahoo.edu','JQ386RV',12),
('Illana','Spijker','Perpignan','2015-10-14','France','i-spijker@hotmail.net','VZ790NB',12),
('Yen','Bezuindenhout','Saint-Etienne-du-Rouvray','1992-12-15','France','bezuindenhout.yen1194@google.ca','XJ292DJ',12),
('Avram','Romeijnders','La Seyne-sur-Mer','1996-11-03','France','a-romeijnders@outlook.org','HA134VE',12),
('Molly','Langlais','Reims','2008-09-07','France','m.langlais@icloud.net','AO697YG',12),
('Harding','Van Aalsburg','Bastia','1985-01-28','France','vanaalsburg-harding1247@hotmail.ca','PB942JO',12),
('Avram','Jonker','Chartres','2000-09-13','France','a_jonker2569@protonmail.com','ZU154HW',13),
('Duncan','Hendrix','Montluçon','2004-12-25','France','d-hendrix@aol.ca','BN727VG',13),
('Quentin','Dubois','Sarreguemines','2002-03-23','France','q.dubois@protonmail.com','GL777YO',13),
('Rhiannon','Tasse','Angers','2009-07-25','France','tasse-rhiannon7941@aol.edu','WS169VG',13),
('Ruth','Eikenboom','Brive-la-Gaillarde','2006-11-06','France','reikenboom@outlook.couk','RJ254VR',13),
('Indira','Poirier','Pontarlier','2007-04-11','France','poirier.indira14@protonmail.edu','RH198WJ',13),
('Tiger','Cruyssen','Boulogne-Billancourt','2015-02-16','France','cruyssen_tiger@hotmail.edu','VM465OP',13),
('Austin','Travers','Antibes','1989-08-12','France','a_travers1509@outlook.net','BE261JJ',13),
('Rose','Cruyssen','Chatellerault','1991-06-10','France','rcruyssen@hotmail.org','RV884GO',13),
('Anthony','Bouwmeester','Saint-Nazaire','2013-08-28','France','anthonybouwmeester@yahoo.org','RR344IC',13),
('Buckminster','Mertens','Poitiers','1995-05-09','France','mertens_buckminster@protonmail.net','JC152YC',13),
('Berk','Brisbois','Le Puy-en-Velay','2000-06-05','France','b_brisbois8506@google.net','YM653SF',13),
('Joan','Deforest','Mulhouse','2008-04-04','France','j-deforest@hotmail.org','RG789NB',13),
('Merritt','Bezuindenhout','Perpignan','2011-08-08','France','m_bezuindenhout6350@hotmail.ca','PS837RC',13),
('Bree','Maes','Metz','2013-07-21','France','b-maes9855@google.edu','DK647PX',13),
('Cade','Holt','Bègles','1993-04-19','France','c.holt@protonmail.com','KG281TA',13),
('Gannon','Eikenboom','Le Petit-Quevilly','2015-08-03','France','eikenboom.gannon1621@hotmail.ca','BC357SJ',13),
('Malachi','Hagen','Sens','2013-07-22','France','malachihagen@google.edu','GT852CL',13),
('Imani','Offermans','Rodez','1995-11-07','France','ioffermans1440@hotmail.com','UQ612MP',13),
('Cassandra','Rietveld','Maubeuge','1992-02-07','France','c_rietveld@google.ca','BM316JS',13),
('Colette','Cloutier','Nîmes','2010-06-29','France','c.cloutier9814@aol.com','XC013DX',14),
('Martina','Bellamy','Sens','2007-04-28','France','mbellamy4501@google.net','BY143QF',14),
('Danielle','Fontaine','Tours','1982-03-27','France','fontaine-danielle4270@hotmail.com','XI167PG',14),
('Raphael','Van Assen','La Roche-sur-Yon','1999-03-25','France','r-vanassen9523@aol.edu','CJ354PW',14),
('Vaughan','Marchand','Montigny-lès-Metz','1993-02-07','France','marchand-vaughan@icloud.org','KB724HG',14),
('Nell','Holt','Abbeville','1981-09-22','France','n_holt3243@google.couk','TI172KP',14),
('Janna','Lavigne','Brive-la-Gaillarde','1992-11-10','France','jlavigne@hotmail.edu','LS484NF',14),
('Reece','Duval','Bastia','2014-06-10','France','reece.duval@aol.ca','RU328LO',14),
('Sybil','Achterberg','Saint-Dis-des-Vosges','1987-03-20','France','sachterberg@aol.couk','GY198GI',14),
('Rigel','Dumont','Nancy','1986-04-21','France','dumont.rigel@protonmail.com','IL368JI',14),
('Grant','Leroux','Beauvais','1991-05-25','France','g.leroux6873@icloud.org','NV496TQ',14),
('Tucker','Hoedemaker','Saint-Louis','2001-09-04','France','t_hoedemaker@outlook.org','GN187CC',14),
('Winter','Plamondon','Liévin','1988-10-25','France','w.plamondon@outlook.org','CW540PU',14),
('Matthew','Blanc','Rodez','2002-10-21','France','mblanc@hotmail.com','AS108PA',14),
('Cole','Neuville','Laval','1989-07-29','France','neuville.cole@google.com','YB091ER',14),
('Howard','Peeters','Le Puy-en-Velay','1982-12-07','France','howard-peeters@aol.couk','DV310BC',14),
('Ross','Klein','Ajaccio','1985-08-22','France','rklein5073@aol.edu','GW642JD',14),
('Chase','Deforest','Macon','2002-01-08','France','cdeforest@aol.net','KW222HE',14),
('Priscilla','Hendrix','Saint-Malo','2012-03-01','France','h_priscilla@yahoo.couk','KW101GC',14),
('Stuart','Aarden','Laon','1991-10-10','France','aardenstuart2672@protonmail.couk','YO503ZD',14),
('Griffin','Van Der Aart','Blois','1987-07-28','France','vanderaart.griffin@hotmail.edu','SZ726CT',15),
('Rama','Brisbois','Macon','1985-06-05','France','r-brisbois@yahoo.edu','AF166EV',15),
('Shelby','Achthoven','Paris','2000-12-03','France','achthoven_shelby5884@outlook.ca','AO714JX',15),
('Ferris','Poulin','Noisy-le-Grand','1981-11-05','France','f-poulin7705@icloud.couk','IV735DI',15),
('Hannah','Cloutier','Le Puy-en-Velay','1984-04-10','France','h_cloutier@google.net','QX814KK',15),
('Stone','De Witte','La Rochelle','1986-10-04','France','dewittestone3795@google.com','VB155QU',15),
('Destiny','Van Assen','Lanester','2006-02-19','France','vanassen_destiny3169@icloud.ca','GT337VM',15),
('Josiah','Offermans','Cannes','1995-02-09','France','offermansjosiah54@outlook.net','SB827WF',15),
('Adrienne','Lachapelle','Auxerre','1994-07-21','France','lachapelleadrienne@yahoo.org','NH417BS',15),
('Rinah','Haak','Pontarlier','1992-05-17','France','haakrinah3686@google.net','SS231RO',15),
('Aurora','Tremblay','Soissons','2006-02-26','France','taurora1273@protonmail.net','VE781UF',15),
('Hedy','Victor','Macon','1995-09-29','France','victor_hedy@protonmail.ca','UR659VQ',15),
('Harding','Plamondon','Caen','1998-10-24','France','plamondonharding3097@yahoo.com','VO376DX',15),
('Ulysses','Kloet','Lunel','2005-06-11','France','u-kloet253@hotmail.couk','TD151GI',15),
('Nyssa','Adrichem','Aurillac','1991-03-13','France','n-adrichem@yahoo.org','XW481BS',15),
('Lunea','Maes','Evreux','1988-05-03','France','l_maes3746@protonmail.ca','MK023UZ',15),
('Zachary','Ter Avest','Colombes','1984-11-27','France','teravest-zachary8588@icloud.org','EI285QH',15),
('Hamish','Dumont','Auxerre','2011-07-20','France','dumont-hamish@yahoo.ca','YE607XW',15),
('Kieran','Plamondon','Mulhouse','2000-02-05','France','k.plamondon@protonmail.edu','DY195YO',15),
('Darryl','Smet','Nantes','1983-06-16','France','smet-darryl3539@google.net','LS903YW',15),
('Whoopi','Garcon','Evreux','2000-01-03','France','w-garcon@protonmail.net','CO848RL',16),
('August','Holt','Colombes','1993-03-19','France','holt_august2213@icloud.couk','BK603WE',16),
('Darius','Aakster','Perpignan','2010-10-26','France','d_aakster@protonmail.ca','UX784HZ',16),
('Jolie','Berger','Thionville','1983-11-30','France','j-berger7612@hotmail.couk','CE542TN',16),
('Hasad','Proulx','Béziers','2013-12-30','France','h.proulx2649@icloud.ca','LY419TV',16),
('Noelani','Fontaine','Périgueux','1990-12-22','France','n_fontaine@google.com','NG403AI',16),
('Carter','Fabre','Mont-de-Marsan','2012-02-02','France','carterfabre@hotmail.edu','KD872SC',16),
('Kennedy','Janvier','Abbeville','1991-03-29','France','janvier-kennedy9635@aol.ca','EY236YB',16),
('Stacey','Bellamy','Saint-Herblain','2002-06-06','France','s-bellamy@protonmail.couk','MB588FG',16),
('Curran','Kuiper','Argenteuil','1996-10-09','France','kuipercurran8644@icloud.net','CQ932TY',16),
('Neville','Ter Avest','Creil','1996-07-17','France','teravest-neville@hotmail.org','IL721BI',16),
('Ignatius','Bakhuizen','Lanester','2004-07-11','France','b-ignatius@aol.com','SC195WB',16),
('Benedict','Achterberg','Dieppe','2011-05-23','France','a.benedict@protonmail.net','PJ030IB',16),
('Aaron','Savatier','Vandoeuvre-lès-Nancy','1994-11-01','France','aaron-savatier@protonmail.edu','VE797TP',16),
('Jamal','Eikenboom','Nevers','1986-12-15','France','j_eikenboom1994@aol.com','DZ524VX',16),
('Petra','Koopman','Bastia','2006-06-04','France','k.petra41@protonmail.couk','XN184IQ',16),
('Ian','Lamar','Tours','2008-12-14','France','l-ian@hotmail.ca','HV738QJ',16),
('Ivan','Blanc','Carcassonne','1982-12-02','France','i-blanc@aol.net','TH278KN',16),
('Xena','Bellamy','Lunel','1994-03-17','France','xena.bellamy6840@icloud.org','EU178DC',16),
('Abigail','Proulx','Chateauroux','1993-03-07','France','abigailproulx@icloud.net','AV128VB',16),
('Mikayla','Bouwmeester','Chartres','1990-11-25','France','bouwmeester.mikayla@icloud.couk','YL652FT',16);


-- Insertion pour la table Concours
INSERT INTO Concours (theme, dateDebut, dateFin, dateCreation, etat, recompenses)
VALUES
    -- Concours 2022
    ('Futurisme', '2022-01-01', '2023-03-01', '2022-01-01', 'evalue', 'Voyage au Maldives'),
    ('Nature abstraite', '2022-04-01', '2023-06-01', '2022-01-01', 'evalue', 'Crayon'),
    ('Voyages imaginaires', '2022-07-01', '2023-09-01', '2022-01-01', 'evalue', 'Lambo'),
    ('Portraits expressifs', '2022-10-01', '2023-12-01', '2022-01-01', 'evalue', 'Villa'),
    -- Concours 2023
    ('Juxtaposition de cultures', '2023-01-01', '2023-03-01', '2023-01-01', 'evalue', '100 euros'),
    ('Faune fantastique', '2023-04-01', '2023-06-01', 'evalue', '2023-01-01', '200 euros'),
    ('Rêves et cauchemars', '2023-07-01', '2023-09-01', 'evalue', '2023-01-01', '300 euros'),
    ('Abstraction géométrique', '2022-10-01', '2023-12-01', '2023-01-01', 'evalue', '400 euros'),
    -- Concours 2024
    ('Art Nouveau', '2024-01-01', '2024-03-01', '2024-01-01', 'en cours', 'Voyage aux Caraïbes'),
    ('Pop Art', '2024-04-01', '2024-06-01', '2024-01-01', 'pas commencé', 'Merco'),
    ('Minimalisme', '2024-07-01', '2024-09-01', '2024-01-01', 'pas commencé', '1 euro'),
    ('Steampunk', '2024-10-01', '2024-12-01', '2024-01-01', 'pas commencé', '20 centimes');


-- Insertion pour la table Président
INSERT INTO President (numPresident, prime)
VALUES
    (1, 5000),
    (2, 4000),


-- Insertion pour la table Administrateur
INSERT INTO Administrateur (numAdministrateur, dateDebut)
VALUES
    (1, '2024-01-01'),
    (2, '2024-02-01'),


-- Insertion pour la table Directeur
INSERT INTO Directeur (numDirecteur, dateDebut)
VALUES
    (1, '2024-01-01'),
    (2, '2024-02-01');


-- Insertion pour la table Competiteur
INSERT INTO Competiteur (numCompetiteur, datePremiereParticipation, specialite)
VALUES
    (1, '2023-05-15', 'Dessin'),
    (2, '2023-07-20', 'Peinture');


-- Insertion pour la table Dessin
INSERT INTO Dessin (numCompetiteur, commentaire, classement, dateRemise, leDessin)
VALUES
    (1, 'Commentaire1', 1, '2024-02-05', 'Chemin/vers/leDessin1.png'),
    (2, 'Commentaire2', 2, '2024-02-10', 'Chemin/vers/leDessin2.png');


-- Insertion pour la table Evaluation
INSERT INTO Evaluation (numDessin, numEvaluateur, dateEvaluation, note, commentaire)
VALUES
    (1, 1, '2024-02-07', 90, 'Belle réalisation'),
    (2, 2, '2024-02-12', 85, 'Travail original');


-- Insertion pour la table Evaluateur
INSERT INTO Evaluateur (numEvaluateur, specialite)
VALUES
    (1, 'Dessin'),
    (2, 'Peinture');


-- Insertion pour la table ParticipeCompetiteur
INSERT INTO ParticipeCompetiteur (numCompetiteur, numConcours)
VALUES
    (1, 1),
    (2, 2);


-- Insertion pour la table ParticipeClub
INSERT INTO ParticipeClub (numClub, numConcours)
VALUES
    (1, 1),
    (2, 2);


-- Insertion pour la table Jury
INSERT INTO Jury (numEvaluateur, numConcours)
VALUES
    (1, 1),
    (2, 2);


-- Insertion pour la table Dirige
INSERT INTO Dirige (numClub, numDirecteur)
VALUES
    (1, 1),
    (2, 2);

	
