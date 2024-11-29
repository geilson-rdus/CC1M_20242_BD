create schema fortes;
use fortes;

create table if not exists usuarios(
user_cod int primary key,
user_cnpj varchar(14) not null,
user_nome varchar(45) not null,
user_categoria tinyint not null, # 1 = donatário , 0 = funcionário
user_tel varchar(15) not null,
user_email varchar(100) not null,
user_razaoSocial varchar(45) not null
);

create table if not exists editais(
edital_cod int primary key,
edital_prazoInicio date not null,
edital_prazoFim date not null,
edital_descricao longtext not null
);

create table if not exists projetos(
proj_cod int primary key,
proj_nome varchar(45) not null,
proj_respTec varchar(45) not null,
proj_respCool varchar(45) not null,
cod_edital int not null,
constraint fk_edital foreign key (cod_edital) references editais(edital_cod)
);

create table if not exists relatorios(
relat_cod int primary key,
relat_data date not null,
relat_img blob,
relat_text longtext not null,
user_cod int not null,
proj_cod int not null,
CONSTRAINT FK_user_cod_relat FOREIGN KEY (user_cod) REFERENCES usuarios(user_cod),
constraint fk_projeto foreign key (proj_cod) references projetos(proj_cod)
);

create table if not exists propostas_pedidos(
prope_cod int primary key,
prope_valor dec(10,2) not null,
user_cod int not null,
proj_cod int not null,
CONSTRAINT FK_user_cod_prope FOREIGN KEY (user_cod) REFERENCES usuarios(user_cod),
constraint fk_projeto_prop foreign key (proj_cod) references projetos(proj_cod)
);

create table if not exists inscricao(
cod_usuario int not null,
cod_projeto int not null,
primary key (cod_usuario, cod_projeto),
constraint fk_usuario foreign key (cod_usuario) references usuarios(user_cod),
constraint fk_projeto_insc foreign key (cod_projeto) references projetos(proj_cod)
);
