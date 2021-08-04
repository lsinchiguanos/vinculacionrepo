CREATE SEQUENCE "public".cita_cita_id_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".depertamento_departamento_id_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".ficha_clinica_ficha_id_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".galeno_galeno_id_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".paciente_paciente_id_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".patologia_patologia_id_seq START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".sesiones_se_id_seq START WITH 1 INCREMENT BY 1;

CREATE  TABLE "public".depertamento ( 
	departamento_id      integer DEFAULT nextval('depertamento_departamento_id_seq'::regclass) NOT NULL ,
	departamento_descripcion varchar(50)  NOT NULL ,
	departamento_estado  varchar(25) DEFAULT 'Activo'::character varying  ,
	created_at           timestamp(0) DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp(0)   ,
	CONSTRAINT pk_depertamento_departamento_id PRIMARY KEY ( departamento_id ),
	CONSTRAINT unq_depertamento UNIQUE ( departamento_descripcion ) 
 );

CREATE  TABLE "public".galeno ( 
	galeno_id            integer DEFAULT nextval('galeno_galeno_id_seq'::regclass) NOT NULL ,
	galeno_tipo_dni      varchar(25) DEFAULT 'Cédula'::character varying NOT NULL ,
	galeno_dni           varchar(15)  NOT NULL ,
	galeno_apellido_paterno varchar(200)  NOT NULL ,
	galeno_primer_nombre varchar(200)  NOT NULL ,
	galeno_telefono      varchar(10) DEFAULT '9999999999'::character varying  ,
	galeno_direccion     varchar(200) DEFAULT ''::character varying  ,
	created_at           timestamp(0) DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp(0)   ,
	galeno_user          varchar(25)  NOT NULL ,
	galeno_pass          varchar(250)  NOT NULL ,
	galeno_apellido_materno varchar(200)  NOT NULL ,
	galeno_segundo_nombre varchar(200) DEFAULT ''::character varying  ,
	galeno_provincia     varchar(150)  NOT NULL ,
	galeno_canton        varchar(150)  NOT NULL ,
	galeno_parroquia     varchar(200) DEFAULT ''::character varying  ,
	galeno_estado        varchar(25) DEFAULT 'Activo'::character varying  ,
	galeno_departamento  integer  NOT NULL ,
	CONSTRAINT unq_galeno UNIQUE ( galeno_dni ) ,
	CONSTRAINT pk_galeno_galeno_id PRIMARY KEY ( galeno_id ),
	CONSTRAINT unq_galeno_usr UNIQUE ( galeno_user ) ,
	CONSTRAINT fk_galeno_depertamento FOREIGN KEY ( galeno_departamento ) REFERENCES "public".depertamento( departamento_id )   
 );

CREATE  TABLE "public".paciente ( 
	paciente_id          integer DEFAULT nextval('paciente_paciente_id_seq'::regclass) NOT NULL ,
	paciente_tipo_dni    varchar(25) DEFAULT 'Cédula'::character varying  ,
	paciente_dni         varchar(15)  NOT NULL ,
	paciente_apellido_paterno varchar(200)  NOT NULL ,
	paciente_primer_nombre varchar(200)  NOT NULL ,
	paciente_fnacimiento varchar(25)  NOT NULL ,
	paciente_direccion   varchar(200) DEFAULT ''::character varying  ,
	paciente_telefono    varchar(10) DEFAULT '9999999999'::character varying  ,
	paciente_genero      varchar(25) DEFAULT ''::character varying  ,
	paciente_grupo       varchar(15) DEFAULT 'Ninguno'::character varying NOT NULL ,
	paciente_ayudasocial bigint DEFAULT 0  ,
	created_at           timestamp(0) DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp(0)   ,
	paciente_apellido_materno varchar(200)  NOT NULL ,
	paciente_segundo_nombre varchar(200) DEFAULT ''::character varying  ,
	paciente_estado      varchar(25) DEFAULT 'Activo'::character varying  ,
	paciente_provincia   varchar(150)  NOT NULL ,
	paciente_canton      varchar(150)  NOT NULL ,
	paciente_parroquia   varchar(200) DEFAULT ''::character varying  ,
	paciente_nacionalidad varchar(150) DEFAULT 'Ecuatoriano'::character varying  ,
	paciente_estado_civil varchar(100) DEFAULT 'Soltero'::character varying  ,
	paciente_convencional varchar(10) DEFAULT '999999999'::character varying  ,
	paciente_tipo_sangre varchar(5) DEFAULT 'O+'::character varying  ,
	CONSTRAINT pk_paciente_paciente_id PRIMARY KEY ( paciente_id ),
	CONSTRAINT unq_paciente UNIQUE ( paciente_dni ) 
 );

CREATE  TABLE "public".patologia ( 
	patologia_id         integer DEFAULT nextval('patologia_patologia_id_seq'::regclass) NOT NULL ,
	patologia_codigo     varchar(25)  NOT NULL ,
	patologia_descripcion varchar(150)  NOT NULL ,
	patologia_estado     varchar(15) DEFAULT 'Activo'::character varying  ,
	created_at           timestamp(0) DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp(0)   ,
	patologia_departamento integer  NOT NULL ,
	CONSTRAINT pk_patologia_patologia_id PRIMARY KEY ( patologia_id ),
	CONSTRAINT unq_patologia_codigo UNIQUE ( patologia_codigo ) ,
	CONSTRAINT unq_patologia UNIQUE ( patologia_descripcion ) ,
	CONSTRAINT fk_patologia_depertamento FOREIGN KEY ( patologia_departamento ) REFERENCES "public".depertamento( departamento_id )   
 );

CREATE  TABLE "public".cita ( 
	cita_id              integer DEFAULT nextval('cita_cita_id_seq'::regclass) NOT NULL ,
	cita_anio            integer  NOT NULL ,
	cita_mes             integer  NOT NULL ,
	cita_dia             integer  NOT NULL ,
	cita_codigo          varchar(50)  NOT NULL ,
	cita_paciente        integer  NOT NULL ,
	cita_galeno          integer  NOT NULL ,
	cita_estado          varchar(25) DEFAULT 'Espera'::character varying  ,
	created_at           timestamp(0) DEFAULT CURRENT_TIMESTAMP  ,
	cita_hora            time   ,
	cita_observacion     varchar(200) DEFAULT ''::character varying  ,
	updated_at           timestamp(0)   ,
	CONSTRAINT unq_cita UNIQUE ( cita_codigo ) ,
	CONSTRAINT pk_cita_cita_id PRIMARY KEY ( cita_id ),
	CONSTRAINT fk_cita_galeno FOREIGN KEY ( cita_galeno ) REFERENCES "public".galeno( galeno_id )   ,
	CONSTRAINT fk_cita_paciente FOREIGN KEY ( cita_paciente ) REFERENCES "public".paciente( paciente_id )   
 );

CREATE  TABLE "public".ficha_clinica ( 
	ficha_id             integer DEFAULT nextval('ficha_clinica_ficha_id_seq'::regclass) NOT NULL ,
	ficha_numeracion     varchar(50)  NOT NULL ,
	ficha_paciente       integer  NOT NULL ,
	ficha_estado         varchar(25) DEFAULT 'Activo'::character varying  ,
	created_at           timestamp(0) DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp(0)   ,
	CONSTRAINT pk_ficha_clinica_ficha_id PRIMARY KEY ( ficha_id ),
	CONSTRAINT unq_ficha_clinica UNIQUE ( ficha_numeracion ) ,
	CONSTRAINT fk_ficha_clinica_paciente FOREIGN KEY ( ficha_paciente ) REFERENCES "public".paciente( paciente_id )   
 );

CREATE  TABLE "public".sesiones ( 
	se_id                integer DEFAULT nextval('sesiones_se_id_seq'::regclass) NOT NULL ,
	se_motivo            varchar(250)  NOT NULL ,
	se_diagnostico       varchar(250) DEFAULT ''::character varying  ,
	se_procedimiento     varchar(250) DEFAULT ''::character varying  ,
	se_prescripcion      varchar(250) DEFAULT ''::character varying  ,
	se_observacion       varchar(200) DEFAULT ''::character varying  ,
	se_cita              integer  NOT NULL ,
	created_at           timestamp(0) DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp(0)   ,
	CONSTRAINT pk_cita_detalle_cd_id PRIMARY KEY ( se_id ),
	CONSTRAINT fk_sesiones_cita FOREIGN KEY ( se_cita ) REFERENCES "public".cita( cita_id )   
 );

