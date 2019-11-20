create table `especialidade` (
`cd_especialidade` int not null auto_increment,
`ds_especialidade` varchar(50) not null,
primary key (`cd_especialidade`));

create table `funcionario`(
`cd_usuario` int not null auto_increment,
`nm_usuario` varchar(50) not null,
`nr_cpf` int(11) not null,
`ds_setor` varchar(50) not null,
`ds_cargo` varchar(50) not null,
primary key(`cd_usuario`));

create table `procedimento` (
`cd_procedimento` int not null auto_increment,
`ds_procedimento` varchar(50) not null,
`vl_procedimento` float not null,
primary key(`cd_procedimento`));

create table `credenciado` (
`cd_credenciado` int not null auto_increment,
`ds_credenciado` varchar(50) not null,
`tp_credenciado` varchar(20) not null,
`crm` int,
`ds_endereco` varchar(30) not null,
`nr_cep` int not null,
`nr_cpf_cnpj` varchar(18) not null,
`nr_celular` int(11) not null,
`nr_telefone` int,
`ds_email` varchar(80) not null,
`cd_especialidade` int,
primary key (`cd_credenciado`),
foreign key (`cd_especialidade`) references `especialidade`(`cd_especialidade`));

create table `beneficiario`(
`nr_matricula` int not null auto_increment,
`nm_beneficiario` varchar(50) not null,
`nr_cpf` int(11) not null,
`dt_nascimento` date not null,
`sn_ativo` char not null,
`sexo` char not null,
`ds_email` varchar(80) not null,
`tp_logradouro` varchar(10) not null,
`ds_endereco` varchar(70) not null,
`nr_endereco` int not null,
`ds_bairro` varchar(50) not null,
`ds_cidade` varchar(30) not null,
`cd_uf` varchar(2) not null,
`nr_cep` int not null,
primary key (`nr_matricula`));

create table `agendamento`(
`cd_agenda` int not null auto_increment,
`dt_agenda` date not null,
`hr_inicio` datetime not null,
`hr_fim` datetime not null,
`vl_push_notificacao` char not null,
`cd_credenciado` int not null,
`nr_matricula` int,
`cd_especialidade` int,
primary key (`cd_agenda`),
foreign key (`cd_credenciado`) references `credenciado`(`cd_credenciado`),
foreign key (`nr_matricula`) references `beneficiario`(`nr_matricula`),
foreign key (`cd_especialidade`) references `especialidade`(`cd_especialidade`));

create table `atendimento` (
`cd_atendimento` int not null auto_increment,
`cd_agenda` int,
`dt_atendimento` datetime not null,
`hr_inicio` datetime,
`hr_fim` datetime,
`sn_realizado` char not null,
`cd_credenciado` int,
`nr_matricula` int,
`cd_especialidade` int,
`cd_procedimento` int not null,
primary key (`cd_atendimento`),
foreign key (`cd_agenda`) references `agendamento`(`cd_agenda`),
foreign key (`cd_credenciado`) references `credenciado`(`cd_credenciado`),
foreign key (`nr_matricula`) references `beneficiario`(`nr_matricula`),
foreign key (`cd_especialidade`) references `especialidade`(`cd_especialidade`),
foreign key(`cd_procedimento`) references `procedimento`(`cd_procedimento`));

