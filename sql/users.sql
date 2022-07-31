-- Install uuid-ossp module

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- CREATE STATEMENT

-- Table: public.users

-- DROP TABLE IF EXISTS public.users;

CREATE TABLE IF NOT EXISTS public.users
(
    uuid uuid NOT NULL DEFAULT uuid_generate_v4(),
    first_name character varying COLLATE pg_catalog."default" NOT NULL,
    last_name character varying COLLATE pg_catalog."default" NOT NULL,
    email character varying COLLATE pg_catalog."default" NOT NULL,
    ip_address character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (uuid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.users
    OWNER to postgres;

-- INSERT STATEMENTS

insert into public.users (first_name, last_name, email, ip_address) values ('Celisse', 'Graddell', 'cgraddell0@tmall.com', '7.218.17.111');
insert into public.users (first_name, last_name, email, ip_address) values ('Raye', 'Lewin', 'rlewin1@github.com', '122.45.210.73');
insert into public.users (first_name, last_name, email, ip_address) values ('Stan', 'Dudney', 'sdudney2@census.gov', '8.86.14.40');
insert into public.users (first_name, last_name, email, ip_address) values ('Haydon', 'Frend', 'hfrend3@yale.edu', '2.83.58.205');
insert into public.users (first_name, last_name, email, ip_address) values ('Stanwood', 'Book', 'sbook4@a8.net', '235.190.156.191');
insert into public.users (first_name, last_name, email, ip_address) values ('Adah', 'Thickett', 'athickett5@goo.gl', '27.183.209.103');
insert into public.users (first_name, last_name, email, ip_address) values ('Wilow', 'Frandsen', 'wfrandsen6@php.net', '50.184.193.14');
insert into public.users (first_name, last_name, email, ip_address) values ('Ardene', 'Smolan', 'asmolan7@arizona.edu', '176.177.105.250');
insert into public.users (first_name, last_name, email, ip_address) values ('Margaux', 'Morstatt', 'mmorstatt8@cbslocal.com', '88.206.47.158');
insert into public.users (first_name, last_name, email, ip_address) values ('Leontyne', 'Ivanchin', 'livanchin9@nyu.edu', '120.192.124.244');
insert into public.users (first_name, last_name, email, ip_address) values ('Nat', 'Boldra', 'nboldraa@newyorker.com', '92.209.131.192');
insert into public.users (first_name, last_name, email, ip_address) values ('Kora', 'Duxbury', 'kduxburyb@mediafire.com', '130.82.225.229');
insert into public.users (first_name, last_name, email, ip_address) values ('Eward', 'Greendale', 'egreendalec@sitemeter.com', '71.250.88.38');
insert into public.users (first_name, last_name, email, ip_address) values ('Gus', 'Piercey', 'gpierceyd@microsoft.com', '212.8.5.139');
insert into public.users (first_name, last_name, email, ip_address) values ('Mala', 'Treen', 'mtreene@bbb.org', '78.197.120.77');
insert into public.users (first_name, last_name, email, ip_address) values ('Scott', 'Baudts', 'sbaudtsf@illinois.edu', '188.136.95.41');
insert into public.users (first_name, last_name, email, ip_address) values ('Emogene', 'Lightwing', 'elightwingg@baidu.com', '47.199.252.118');
insert into public.users (first_name, last_name, email, ip_address) values ('Hilary', 'Tellesson', 'htellessonh@statcounter.com', '246.247.18.67');
insert into public.users (first_name, last_name, email, ip_address) values ('Wren', 'Robert', 'wroberti@reddit.com', '164.114.21.59');
insert into public.users (first_name, last_name, email, ip_address) values ('Rollins', 'Anlay', 'ranlayj@nyu.edu', '58.212.56.217');
insert into public.users (first_name, last_name, email, ip_address) values ('Sallyann', 'Halligan', 'shalligank@tmall.com', '126.228.131.148');
insert into public.users (first_name, last_name, email, ip_address) values ('Noelani', 'Durdy', 'ndurdyl@shinystat.com', '199.209.147.102');
insert into public.users (first_name, last_name, email, ip_address) values ('Pryce', 'Cussins', 'pcussinsm@indiegogo.com', '139.41.159.119');
insert into public.users (first_name, last_name, email, ip_address) values ('Claudianus', 'Kasher', 'ckashern@360.cn', '215.80.231.139');
insert into public.users (first_name, last_name, email, ip_address) values ('Jenine', 'Farrants', 'jfarrantso@unicef.org', '134.23.123.197');
insert into public.users (first_name, last_name, email, ip_address) values ('Frieda', 'Shulem', 'fshulemp@nhs.uk', '170.43.23.112');
insert into public.users (first_name, last_name, email, ip_address) values ('Marianna', 'Sima', 'msimaq@craigslist.org', '166.149.118.96');
insert into public.users (first_name, last_name, email, ip_address) values ('Jessika', 'Crinson', 'jcrinsonr@freewebs.com', '3.18.201.19');
insert into public.users (first_name, last_name, email, ip_address) values ('Martina', 'Bodman', 'mbodmans@upenn.edu', '158.65.249.116');
insert into public.users (first_name, last_name, email, ip_address) values ('Romy', 'O''Heaney', 'roheaneyt@nyu.edu', '188.113.226.233');
insert into public.users (first_name, last_name, email, ip_address) values ('Jase', 'Maruszewski', 'jmaruszewskiu@facebook.com', '29.138.191.19');
insert into public.users (first_name, last_name, email, ip_address) values ('Seka', 'Levens', 'slevensv@canalblog.com', '57.249.252.73');
insert into public.users (first_name, last_name, email, ip_address) values ('Monika', 'Exon', 'mexonw@dagondesign.com', '224.64.42.251');
insert into public.users (first_name, last_name, email, ip_address) values ('Marlee', 'Nesbeth', 'mnesbethx@goodreads.com', '46.155.15.0');
insert into public.users (first_name, last_name, email, ip_address) values ('Shaylynn', 'Dirkin', 'sdirkiny@multiply.com', '42.59.138.80');
insert into public.users (first_name, last_name, email, ip_address) values ('Eddi', 'Tummasutti', 'etummasuttiz@reuters.com', '55.131.164.81');
insert into public.users (first_name, last_name, email, ip_address) values ('Archaimbaud', 'Leakner', 'aleakner10@bing.com', '222.52.74.128');
insert into public.users (first_name, last_name, email, ip_address) values ('Spencer', 'Baxendale', 'sbaxendale11@flavors.me', '101.82.32.108');
insert into public.users (first_name, last_name, email, ip_address) values ('Garnette', 'Grassot', 'ggrassot12@microsoft.com', '56.48.190.170');
insert into public.users (first_name, last_name, email, ip_address) values ('Barnie', 'Pelham', 'bpelham13@intel.com', '44.233.32.252');
insert into public.users (first_name, last_name, email, ip_address) values ('Mariel', 'Batrip', 'mbatrip14@clickbank.net', '183.65.220.131');
insert into public.users (first_name, last_name, email, ip_address) values ('Carolynn', 'Aleshkov', 'caleshkov15@nbcnews.com', '63.32.68.52');
insert into public.users (first_name, last_name, email, ip_address) values ('Garfield', 'Foffano', 'gfoffano16@princeton.edu', '21.190.234.41');
insert into public.users (first_name, last_name, email, ip_address) values ('Michael', 'Bootes', 'mbootes17@goo.gl', '106.89.152.167');
insert into public.users (first_name, last_name, email, ip_address) values ('Sven', 'Balch', 'sbalch18@mozilla.com', '230.57.30.248');
insert into public.users (first_name, last_name, email, ip_address) values ('Bron', 'Sherbrooke', 'bsherbrooke19@bizjournals.com', '254.169.143.234');
insert into public.users (first_name, last_name, email, ip_address) values ('Calvin', 'Godbehere', 'cgodbehere1a@flickr.com', '159.179.127.54');
insert into public.users (first_name, last_name, email, ip_address) values ('Chiquita', 'Malsher', 'cmalsher1b@oracle.com', '162.170.144.47');
insert into public.users (first_name, last_name, email, ip_address) values ('Conroy', 'Tunnow', 'ctunnow1c@quantcast.com', '208.238.253.82');
insert into public.users (first_name, last_name, email, ip_address) values ('Mireille', 'Oolahan', 'moolahan1d@skype.com', '105.196.190.19');
insert into public.users (first_name, last_name, email, ip_address) values ('Jacquelynn', 'Lindro', 'jlindro1e@columbia.edu', '174.112.231.249');
insert into public.users (first_name, last_name, email, ip_address) values ('Roscoe', 'Trueman', 'rtrueman1f@amazonaws.com', '231.40.106.99');
insert into public.users (first_name, last_name, email, ip_address) values ('Berta', 'Enser', 'benser1g@example.com', '211.141.137.112');
insert into public.users (first_name, last_name, email, ip_address) values ('Nathaniel', 'Busson', 'nbusson1h@craigslist.org', '230.111.37.152');
insert into public.users (first_name, last_name, email, ip_address) values ('Sholom', 'Culbert', 'sculbert1i@mac.com', '103.156.48.191');
insert into public.users (first_name, last_name, email, ip_address) values ('Patti', 'Ezzy', 'pezzy1j@ifeng.com', '249.70.109.205');
insert into public.users (first_name, last_name, email, ip_address) values ('Dot', 'Innocenti', 'dinnocenti1k@umich.edu', '33.184.231.61');
insert into public.users (first_name, last_name, email, ip_address) values ('Merle', 'Hummerston', 'mhummerston1l@disqus.com', '119.93.139.154');
insert into public.users (first_name, last_name, email, ip_address) values ('Antonia', 'Hutchence', 'ahutchence1m@chicagotribune.com', '174.154.242.80');
insert into public.users (first_name, last_name, email, ip_address) values ('Rickie', 'MacCracken', 'rmaccracken1n@4shared.com', '114.96.69.30');
insert into public.users (first_name, last_name, email, ip_address) values ('Barty', 'Borrowman', 'bborrowman1o@webnode.com', '209.216.126.24');
insert into public.users (first_name, last_name, email, ip_address) values ('Engracia', 'MacCaughey', 'emaccaughey1p@privacy.gov.au', '54.225.200.75');
insert into public.users (first_name, last_name, email, ip_address) values ('Timothy', 'Tutt', 'ttutt1q@homestead.com', '118.32.223.213');
insert into public.users (first_name, last_name, email, ip_address) values ('Ford', 'Dury', 'fdury1r@ocn.ne.jp', '40.122.102.53');
insert into public.users (first_name, last_name, email, ip_address) values ('Egor', 'Ourry', 'eourry1s@123-reg.co.uk', '21.41.41.63');
insert into public.users (first_name, last_name, email, ip_address) values ('Meade', 'Sywell', 'msywell1t@multiply.com', '212.178.29.187');
insert into public.users (first_name, last_name, email, ip_address) values ('Mattheus', 'Rouge', 'mrouge1u@vkontakte.ru', '204.140.184.206');
insert into public.users (first_name, last_name, email, ip_address) values ('Mil', 'Camis', 'mcamis1v@yandex.ru', '120.11.107.135');
insert into public.users (first_name, last_name, email, ip_address) values ('Gizela', 'Fiander', 'gfiander1w@meetup.com', '231.30.235.66');
insert into public.users (first_name, last_name, email, ip_address) values ('Carena', 'Charrisson', 'ccharrisson1x@dmoz.org', '134.206.192.197');
insert into public.users (first_name, last_name, email, ip_address) values ('Malissia', 'Allicock', 'mallicock1y@imdb.com', '63.137.21.90');
insert into public.users (first_name, last_name, email, ip_address) values ('Thorny', 'Ferenc', 'tferenc1z@constantcontact.com', '83.155.75.65');
insert into public.users (first_name, last_name, email, ip_address) values ('Cathi', 'Farden', 'cfarden20@ameblo.jp', '250.207.198.33');
insert into public.users (first_name, last_name, email, ip_address) values ('Vernice', 'Summerlie', 'vsummerlie21@symantec.com', '191.251.0.108');
insert into public.users (first_name, last_name, email, ip_address) values ('Theadora', 'Archer', 'tarcher22@state.tx.us', '157.227.126.167');
insert into public.users (first_name, last_name, email, ip_address) values ('Lovell', 'Maggs', 'lmaggs23@mediafire.com', '10.114.132.4');
insert into public.users (first_name, last_name, email, ip_address) values ('Ericha', 'Estrella', 'eestrella24@wordpress.com', '125.24.131.53');
insert into public.users (first_name, last_name, email, ip_address) values ('Linnea', 'Freeman', 'lfreeman25@imgur.com', '202.219.87.146');
insert into public.users (first_name, last_name, email, ip_address) values ('Casie', 'Stych', 'cstych26@mac.com', '188.238.229.134');
insert into public.users (first_name, last_name, email, ip_address) values ('Hamil', 'Nesbitt', 'hnesbitt27@disqus.com', '139.162.24.139');
insert into public.users (first_name, last_name, email, ip_address) values ('Mitchael', 'Naylor', 'mnaylor28@oakley.com', '122.82.182.7');
insert into public.users (first_name, last_name, email, ip_address) values ('Burk', 'Trynor', 'btrynor29@fc2.com', '117.151.149.166');
insert into public.users (first_name, last_name, email, ip_address) values ('Hetty', 'Jesse', 'hjesse2a@sogou.com', '11.234.101.62');
insert into public.users (first_name, last_name, email, ip_address) values ('Chrissie', 'Groneway', 'cgroneway2b@kickstarter.com', '89.252.68.209');
insert into public.users (first_name, last_name, email, ip_address) values ('Sherill', 'Pilling', 'spilling2c@indiegogo.com', '69.154.104.236');
insert into public.users (first_name, last_name, email, ip_address) values ('Oliy', 'Bibey', 'obibey2d@businessinsider.com', '24.217.96.155');
insert into public.users (first_name, last_name, email, ip_address) values ('Janka', 'Sagerson', 'jsagerson2e@vk.com', '17.1.225.168');
insert into public.users (first_name, last_name, email, ip_address) values ('Gilemette', 'Pletts', 'gpletts2f@uol.com.br', '211.231.19.202');
insert into public.users (first_name, last_name, email, ip_address) values ('Barnett', 'Escolme', 'bescolme2g@mit.edu', '229.57.252.69');
insert into public.users (first_name, last_name, email, ip_address) values ('Sheri', 'Matteuzzi', 'smatteuzzi2h@tiny.cc', '132.64.51.106');
insert into public.users (first_name, last_name, email, ip_address) values ('Nester', 'Lebourn', 'nlebourn2i@rediff.com', '161.153.113.8');
insert into public.users (first_name, last_name, email, ip_address) values ('Sandy', 'Smetoun', 'ssmetoun2j@google.pl', '32.87.3.125');
insert into public.users (first_name, last_name, email, ip_address) values ('Dalis', 'Jerdan', 'djerdan2k@360.cn', '235.112.196.222');
insert into public.users (first_name, last_name, email, ip_address) values ('Riki', 'McElory', 'rmcelory2l@discovery.com', '36.143.202.69');
insert into public.users (first_name, last_name, email, ip_address) values ('Weider', 'Balling', 'wballing2m@answers.com', '216.216.56.54');
insert into public.users (first_name, last_name, email, ip_address) values ('Renie', 'Kinig', 'rkinig2n@arizona.edu', '221.101.255.102');
insert into public.users (first_name, last_name, email, ip_address) values ('Keefe', 'Joselevitz', 'kjoselevitz2o@reuters.com', '132.17.218.20');
insert into public.users (first_name, last_name, email, ip_address) values ('Savina', 'Noonan', 'snoonan2p@people.com.cn', '121.106.149.243');
insert into public.users (first_name, last_name, email, ip_address) values ('Marlena', 'Limpkin', 'mlimpkin2q@foxnews.com', '104.28.22.178');
insert into public.users (first_name, last_name, email, ip_address) values ('Annabela', 'Maud', 'amaud2r@reference.com', '41.149.171.44');    