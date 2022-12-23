
CREATE TABLE admin ( admin_id BIGINT NOT NULL PRIMARY KEY, password VARCHAR ( 15 ) NOT NULL, username VARCHAR ( 15 ) DEFAULT NULL );
INSERT INTO admin
VALUES
	( 123456, '123456', 'admin' );
CREATE TABLE book_info (
	book_id BIGSERIAL PRIMARY KEY,
	name VARCHAR ( 100 ) NOT NULL,
	author VARCHAR ( 100 ) NOT NULL,
	publish VARCHAR ( 100 ) NOT NULL,
	ISBN VARCHAR ( 15 ) NOT NULL,
	introduction text,
	language VARCHAR ( 20 ) NOT NULL,
	price DECIMAL ( 10, 2 ) NOT NULL,
	pub_date date NOT NULL,
	class_id INT DEFAULT NULL,
	number INT DEFAULT NULL 
);
select setval('book_info_book_id_seq',1,false);
INSERT INTO book_info (name,author,publish,ISBN,introduction,language,price,pub_date,class_id,number)
VALUES
	('Software Engineering', 'Ian Sommerville ', 'Pearson', '133943038', 'Software Engineering introduces readers to the overwhelmingly important subject of software programming and development. In the past few years, computer systems have come to dominate not just our technological growth, but the foundations of our world’s major industries. This text seeks to lay out the fundamental concepts of this huge and continually growing subject area in a clear and comprehensive manner.', 'English', '35.00', '2015-03-01', 9, 1 ),
	('《数学分析简明教程》（上、下）', '邓东皋、尹小玲', '高等教育出版社', '9787040186628', '《数学分析简明教程（上）》是教育部“高等教育面向21世纪教学内容和课程体系改革计划”的研究成果。是面向21世纪课程教材。教程用“连续量的演算体系及其数学理论”的全新观点统率全书，在保留传统数学分析基本内容的前提下，比较好地处理极限与微积分演算及应用的关系，建立了一个既循序渐进、生动直观，又保持了严密性的系统，与传统的教程十分不同。本教程对概念、方法的来源与实质，有许多独到的、精辟的见解。教程分上、下两册，《数学分析简明教程（上）》为上册，主要内容包括实数连续统、函数、极限与函数连续性、微商与微分、微分中值定理及其应用、不定积分、定积分、微积分进一步应用、再论实数系等。《数学分析简明教程（上）》是作者集几十年教学与教改经验之力作，在教学改革实践中取得较好的效果', '中文', '26.80', '2009-01-06', 7, 1 ),
	('中国数字政府建设报告（2021）', '李季、王益民 ', '社会科学文献出版社', '9787520193511', '近年来，我国不断加强数字政府建设，特别是深入推进“放管服”改革，推行“一网通办”“最多跑一次”，行政管理和服务方式不断创新。2020年新冠肺炎疫情突发，极大地考验了我国数字政府和城市治理能力，同时加速推进了数字政府建设进程。结合数字防疫工作，数字政府展现出巨大潜能，政府数字化治理能力与人民群众的满意度和获得感均不断提升。', '中文', '15.00', '2007-04-03', 7, 1 ),
	('云计算：概念、技术与架构', '埃尔等著，龚奕利等译', '机械工业出版社', '9787111461340', '《计算机科学丛书·云计算：概念、技术与架构》涉及云计算领域的各个方面，涵盖了很多基本概念，共包含五个部分，第一部分到第四部分主要涵盖了云计算基础、云计算机制、云计算架构以及云计算使用等内容，以云计算起源为出发点，介绍了云计算领域的基本概念。第五部分即附录给出了案例研究结论，介绍了工业标准组织、云计算机制与特性之间的对应关系、数据中心设施、云计算新兴技术，并给出了云提供合同和云商业案例模板。', '中文', '68.00', '2014-11-01', 11, 1 ),
	('互联网大规模数据挖掘与分布式处理', '(美)莱斯科夫，拉贾拉曼，厄尔曼；译者:王斌，王达侃 ', '人民邮电出版社', '9787115556691', '本书由斯坦福“Web挖掘”课程的内容总结而成，主要关注极大规模数据的挖掘。书中包括分布式文件系统、相似性搜索、搜索引擎技术、频繁项集挖掘、聚类算法、广告管理及推荐系统、社会网络图挖掘和大规模机器学习等主要内容。第3 版新增了决策树、神经网络和深度学习等内容。几乎每节都有对应的习题，以此来巩固所讲解的内容。读者还可以从网上获取相关拓展资料。', '中文', '358.20', '2009-04-06', 11, 1 ),
	('人工智能（第3版）', '贲可荣、张彦铎 ', '清华大学出版社', '9787302511984', '本书内容丰富，观点新颖，理论联系实际。不仅可用作高等学校计算机专业本科生和研究生学习计算机算法设计的教材，而且也适合广大工程技术人员和自学读者学习参考', '英文', '88.00', '2003-08-05', 6, 1 ),
	('信号与系统', 'Alan V. Oppenheim（作者），Alan S. Willsky（作者），S. Hamid Nawab（作者），刘树棠（译者） ', '电子工业出版社', '9787121388378', '本书是美国麻省理工学院（MIT）的经典教材之一，讨论了信号与系统分析的基本理论、基本分析方法及其应用。全书共分11章，主要讲述了线性系统的基本理论、信号与系统的基本概念、线性时不变系统、连续与离散信号的傅里叶表示、傅里叶变换以及时域和频域系统的分析方法等内容。本书作者使用了大量在滤波、采样、通信和反馈系统中的实例，并行讨论了连续系统、离散系统、时域系统和频域系统的分析方法，使读者能透彻地理解各种信号系统的分析方法并比较其异同。', '中文', '99.80', '2017-04-01', 9, 1 ),
	('图论及其应用', '帕切克 ', '机械工业出版社', '9787563555604', '《图论及其应用/普通高等教育“十三五”规划教材》系统地介绍了图论的基本概念、基本理论，着重介绍了图论中的经典算法及算法的实际应用，通过详细地讲解算法的产生思想、算法的详细步骤、算法的复杂性分析、算法的实际应用以及例子来帮助读者理解算法，使用算法（甚至编程实现算法），并利用算法解决实际问题。《图论及其应用/普通高等教育“十三五”规划教材》逻辑严密，简明易懂，适用于具有基本的数学基础和计算机基础的理工科本科生及研究生，力求培养他们独立的科研能力。', '中文', '60.00', '2016-01-01', 9, 0 ),
	( '并行程序设计导论', '东野圭吾 ', '北京十月文艺出版社', '9787111392842', '《并行程序设计导论/计算机科学丛书》编著者Peter S.Pacheco。本书全面涵盖了并行软件和硬件的方方面面，深入浅出地介绍如何使用MPI（分布式内存编程）、Pthreads和OpenMP（共享内存编程）编写高效的并行程序。各章节包含了难易程度不同的编程习题。本书可以用做计算机科学专业低年级本科生的专业课程的教材，也可以作为软件开发人员学习并行程序设计的专业参考书。', '中文', '39.50', '2017-06-01', 9, 1 ),
	( '微分方程数值解法', '李荣华，刘波', '高等教育出版社', '9787040248630', '本书是编者在《微分方程数值解法》（第三版）的基础上修订而成的。本次修订的宗旨是加强方法及其应用，考虑到不同院校的需要，仍然保留常微分方程数值解法这一章。为了更方便教学，采取先介绍有限差分法，后介绍GMerkin有限元法，去掉原来的第七章，将离散方程的有关解法与椭圆方程的差分法和有限元法合并，同时增设了一些数值例子，适当删减部分理论内容，突出应用，降低难度。本书包括六章，章为常微分方程数值解法，第二章至第四章为椭圆、抛物和双曲偏微分方程的有限差分法，第五章、第六章为Galerkin有限元法。', '中文', '35.00', '2017-05-01', 9, 1 )

CREATE TABLE lend_list (
	ser_num BIGSERIAL PRIMARY KEY,
	book_id BIGINT NOT NULL,
	reader_id BIGINT NOT NULL,
	reader_name VARCHAR ( 15 ) NOT NULL,
	reader_type VARCHAR (15) NOT NULL,
	lend_date date DEFAULT NULL,
	back_date date DEFAULT NULL 
);
select setval('lend_list_ser_num_seq',1,false);

INSERT INTO lend_list (book_id,reader_id,reader_name,reader_type,lend_date,back_date)
VALUES
	( 1, 10000, '张华','老师','2017-03-15', '2017-06-16' ),
	( 2, 10001, '王小伟','老师','2017-06-10', '2017-09-02' ),
	( 3, 10003, '张明华','学生','2017-06-12', '2017-09-02' ),
	( 4, 10000, '张华','老师','2017-03-15', '2017-09-03' ),
	( 5, 10002, '王莞尔','老师','2017-06-15', NULL ),
	( 6, 10000, '张华','老师','2017-06-15', NULL ),
	( 1, 10001, '王小伟','老师','2017-09-02', '2017-09-02' );
CREATE TABLE reader_info (
	reader_id BIGSERIAL PRIMARY KEY,
	name VARCHAR ( 50) NOT NULL,
	reader_type VARCHAR(15),
	sex VARCHAR ( 20 ) NOT NULL,
	birth date NOT NULL,
	address VARCHAR ( 50 ) NOT NULL,
	phone VARCHAR ( 15 ) NOT NULL 
);
select setval('reader_info_reader_id_seq',10000,false);
INSERT INTO reader_info (name,reader_type,sex,birth,address,phone)
VALUES
	('张华',  '老师','男','1995-06-10', '天津市', '12345678900' ),
	('王小伟', '老师','男', '1996-02-01', '北京市', '12345678909' ),
	('王莞尔', '老师','女', '1995-04-15', '浙江省杭州市', '12345678908' ),
	('张明华', '学生','男', '1996-08-29', '陕西省西安市', '12345678907' ),
	('李一琛', '学生','男', '1996-01-01', '陕西省西安市', '15123659875' ),
	('李二飞', '学生','男', '1996-05-03', '山东省青岛市', '15369874123' );
CREATE TABLE reader_card (
	reader_id BIGSERIAL PRIMARY KEY ,
	username VARCHAR ( 15 ) NOT NULL,
	reader_type VARCHAR (15) NOT NULL,
	password VARCHAR ( 15 ) NOT NULL
);
select setval('reader_card_reader_id_seq',10000,false);
INSERT INTO reader_card (username,reader_type,password)
VALUES
	('张华', '老师','123456' ),
	('王小伟', '老师','123456' ),
	('王莞尔', '老师','123456' ),
	('张明华','学生', '123456' ),
	('李一琛','学生', '123456' ),
	('李二飞', '学生','123456' );

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO gaussdb;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO gaussdb;
