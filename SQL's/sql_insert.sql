------------------------Preenchendo Beneficiário----------------------------
INSERT INTO `beneficiario`(`nm_beneficiario`, `nr_cpf`, `dt_nascimento`, `sn_ativo`, `sexo`, `ds_email`, `tp_logradouro`, `ds_endereco`, `nr_endereco`, `ds_bairro`, `ds_cidade`, `cd_uf`, `nr_cep`) VALUES ("Carlos Alberto Nascimento",71785344781,"2011-11-23","Y","M","carlosalberto@email.com","Rua","Doutor Fernando","22","Campo Grande","Rio de Janeiro","RJ",23068300)

INSERT INTO `beneficiario`(`nm_beneficiario`, `nr_cpf`, `dt_nascimento`, `sn_ativo`, `sexo`, `ds_email`, `tp_logradouro`, `ds_endereco`, `nr_endereco`, `ds_bairro`, `ds_cidade`, `cd_uf`, `nr_cep`) VALUES ("Josildo Almeida",42465787705,"1998-08-15","Y","M","josildo@email.com","Rua","Maricá","22","Campinho","Rio de Janeiro","RJ",21320070)

INSERT INTO `beneficiario`(`nm_beneficiario`, `nr_cpf`, `dt_nascimento`, `sn_ativo`, `sexo`, `ds_email`, `tp_logradouro`, `ds_endereco`, `nr_endereco`, `ds_bairro`, `ds_cidade`, `cd_uf`, `nr_cep`) VALUES ("Adão da Silva","45447863716","2019-11-06","Y","M","adaoprimeirageracao@email.com","Rua","Eden",1,"Jardins","Rio de Janeiro","RJ","23058150")

INSERT INTO `beneficiario`(`nm_beneficiario`, `nr_cpf`, `dt_nascimento`, `sn_ativo`, `sexo`, `ds_email`, `tp_logradouro`, `ds_endereco`, `nr_endereco`, `ds_bairro`, `ds_cidade`, `cd_uf`, `nr_cep`) VALUES ("Eva Soares","39870622747","2019-11-06","Y","F","evamaedetodos@email.com","Rua","Eden",1,"Jardins","Rio de Janeiro","RJ","23058150")

---------------------------Preenchendo Procedimento--------------------------------
INSERT INTO `procedimento`(`ds_procedimento`, `vl_procedimento`) VALUES ("Consulta Cardiologista",150)
INSERT INTO `procedimento`(`ds_procedimento`, `vl_procedimento`) VALUES ("Consulta Dentista",120)
INSERT INTO `procedimento`(`ds_procedimento`, `vl_procedimento`) VALUES ("Consulta Clinico Geral",80)
INSERT INTO `procedimento`(`ds_procedimento`, `vl_procedimento`) VALUES ("Consulta Nutricionista",160)
INSERT INTO `procedimento`(`ds_procedimento`, `vl_procedimento`) VALUES ("Consulta Ginicologista",140)
INSERT INTO `procedimento`(`ds_procedimento`, `vl_procedimento`) VALUES ("Raio-x",350)

----------------------------Preenchendo credenciado/médico-------------------------
INSERT INTO `credenciado`(`ds_credenciado`, `tp_credenciado`, `crm`, `ds_endereco`, `nr_cep`, `nr_cpf_cnpj`, `nr_celular`, `nr_telefone`, `ds_email`, `cd_especialidade`) VALUES ("Wagner da Silva Junior","Médico",1524674,"Rua Dourados",21250500,39920403725,987456123,30564712,"wagnerjunior@email.com",1)
---------------------------Preenchendo especialidades------------------------------
INSERT INTO `especialidade`(`ds_especialidade`) VALUES ("Cardiologista")
INSERT INTO `especialidade`(`ds_especialidade`) VALUES ("Dentista")
INSERT INTO `especialidade`(`ds_especialidade`) VALUES ("Clinico Geral")
INSERT INTO `especialidade`(`ds_especialidade`) VALUES ("Nutricionista")
INSERT INTO `especialidade`(`ds_especialidade`) VALUES ("Ginicologista")
---------------------------Preenchendo Atendimento---------------------------------

INSERT INTO `atendimento`(`cd_agenda`, `dt_atendimento`, `hr_inicio`, `hr_fim`, `sn_realizado`, `cd_credenciado`, `nr_matricula`, `cd_especialidade`, `cd_procedimento`) VALUES (1,"2019-11-12","2019-11-12 10:00","2019-11-12 10:20","Y",1,1,1,1)