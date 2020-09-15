/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     13-07-2020 19:33:34                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AVISO') and o.name = 'FK_AVISO_PUBLICA_USUARIO')
alter table AVISO
   drop constraint FK_AVISO_PUBLICA_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AVISO') and o.name = 'FK_AVISO_PUEDE_SER_TIPO_AVI')
alter table AVISO
   drop constraint FK_AVISO_PUEDE_SER_TIPO_AVI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AVISO') and o.name = 'FK_AVISO_PUEDE_SER_TIPO_PRO')
alter table AVISO
   drop constraint FK_AVISO_PUEDE_SER_TIPO_PRO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('AVISO') and o.name = 'FK_AVISO_TIENE_MARCA')
alter table AVISO
   drop constraint FK_AVISO_TIENE_MARCA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BOLETA') and o.name = 'FK_BOLETA_PUEDE_REA_USUARIO')
alter table BOLETA
   drop constraint FK_BOLETA_PUEDE_REA_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BOLETA') and o.name = 'FK_BOLETA_PUEDE_REA_FORMA_PA')
alter table BOLETA
   drop constraint FK_BOLETA_PUEDE_REA_FORMA_PA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BOLETA') and o.name = 'FK_BOLETA_RELATIONS_AVISO')
alter table BOLETA
   drop constraint FK_BOLETA_RELATIONS_AVISO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTILO_BANDA') and o.name = 'FK_ESTILO_B_PUEDEN_SE_ESTILO_M')
alter table ESTILO_BANDA
   drop constraint FK_ESTILO_B_PUEDEN_SE_ESTILO_M
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTILO_BANDA') and o.name = 'FK_ESTILO_B_TIENEN_MU_PERFIL_B')
alter table ESTILO_BANDA
   drop constraint FK_ESTILO_B_TIENEN_MU_PERFIL_B
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTILO_PERSONAL') and o.name = 'FK_ESTILO_P_PUEDEN_SE_ESTILO_M')
alter table ESTILO_PERSONAL
   drop constraint FK_ESTILO_P_PUEDEN_SE_ESTILO_M
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTILO_PERSONAL') and o.name = 'FK_ESTILO_P_TIENEN_MU_PERFIL_P')
alter table ESTILO_PERSONAL
   drop constraint FK_ESTILO_P_TIENEN_MU_PERFIL_P
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERFIL_BANDA') and o.name = 'FK_PERFIL_B_HEREDA__USUARIO')
alter table PERFIL_BANDA
   drop constraint FK_PERFIL_B_HEREDA__USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERFIL_PERSONAL') and o.name = 'FK_PERFIL_P_HEREDA_USUARIO')
alter table PERFIL_PERSONAL
   drop constraint FK_PERFIL_P_HEREDA_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PERFIL_PERSONAL') and o.name = 'FK_PERFIL_P_PERTENECE_PERFIL_B')
alter table PERFIL_PERSONAL
   drop constraint FK_PERFIL_P_PERTENECE_PERFIL_B
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REPORTE') and o.name = 'FK_REPORTE_PUEDEN_SE_TIPO_REP')
alter table REPORTE
   drop constraint FK_REPORTE_PUEDEN_SE_TIPO_REP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REPORTE') and o.name = 'FK_REPORTE_SERA_AVISO')
alter table REPORTE
   drop constraint FK_REPORTE_SERA_AVISO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USUARIO') and o.name = 'FK_USUARIO_ES_DE_CIUDAD')
alter table USUARIO
   drop constraint FK_USUARIO_ES_DE_CIUDAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USUARIO') and o.name = 'FK_USUARIO_ES_DE__TIPO_CUE')
alter table USUARIO
   drop constraint FK_USUARIO_ES_DE__TIPO_CUE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USUARIO') and o.name = 'FK_USUARIO_PUEDE__SE_ESTADO_C')
alter table USUARIO
   drop constraint FK_USUARIO_PUEDE__SE_ESTADO_C
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AVISO')
            and   name  = 'PUEDE_SER__FK'
            and   indid > 0
            and   indid < 255)
   drop index AVISO.PUEDE_SER__FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AVISO')
            and   name  = 'PUEDE_SER_FK'
            and   indid > 0
            and   indid < 255)
   drop index AVISO.PUEDE_SER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AVISO')
            and   name  = 'TIENE_FK'
            and   indid > 0
            and   indid < 255)
   drop index AVISO.TIENE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('AVISO')
            and   name  = 'PUBLICA_FK'
            and   indid > 0
            and   indid < 255)
   drop index AVISO.PUBLICA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AVISO')
            and   type = 'U')
   drop table AVISO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BOLETA')
            and   name  = 'RELATIONSHIP_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index BOLETA.RELATIONSHIP_15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BOLETA')
            and   name  = 'PUEDE_REALIZAR_FK'
            and   indid > 0
            and   indid < 255)
   drop index BOLETA.PUEDE_REALIZAR_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BOLETA')
            and   name  = 'PUEDE_REALIZARSE_FK'
            and   indid > 0
            and   indid < 255)
   drop index BOLETA.PUEDE_REALIZARSE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BOLETA')
            and   type = 'U')
   drop table BOLETA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CIUDAD')
            and   type = 'U')
   drop table CIUDAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTADO_CUENTA')
            and   type = 'U')
   drop table ESTADO_CUENTA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTILO_BANDA')
            and   name  = 'TIENEN_MUCHOS__FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTILO_BANDA.TIENEN_MUCHOS__FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTILO_BANDA')
            and   name  = 'PUEDEN_SER_FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTILO_BANDA.PUEDEN_SER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTILO_BANDA')
            and   type = 'U')
   drop table ESTILO_BANDA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTILO_MUSICAL')
            and   type = 'U')
   drop table ESTILO_MUSICAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTILO_PERSONAL')
            and   name  = 'TIENEN_MUCHOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTILO_PERSONAL.TIENEN_MUCHOS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTILO_PERSONAL')
            and   name  = 'PUEDEN_SER__FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTILO_PERSONAL.PUEDEN_SER__FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTILO_PERSONAL')
            and   type = 'U')
   drop table ESTILO_PERSONAL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FORMA_PAGO')
            and   type = 'U')
   drop table FORMA_PAGO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MARCA')
            and   type = 'U')
   drop table MARCA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERFIL_BANDA')
            and   name  = 'HEREDA__FK'
            and   indid > 0
            and   indid < 255)
   drop index PERFIL_BANDA.HEREDA__FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERFIL_BANDA')
            and   type = 'U')
   drop table PERFIL_BANDA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERFIL_PERSONAL')
            and   name  = 'HEREDA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERFIL_PERSONAL.HEREDA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERFIL_PERSONAL')
            and   name  = 'PERTENECE_A_FK'
            and   indid > 0
            and   indid < 255)
   drop index PERFIL_PERSONAL.PERTENECE_A_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERFIL_PERSONAL')
            and   type = 'U')
   drop table PERFIL_PERSONAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REPORTE')
            and   name  = 'PUEDEN_SER_DE_FK'
            and   indid > 0
            and   indid < 255)
   drop index REPORTE.PUEDEN_SER_DE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REPORTE')
            and   name  = 'SERA_FK'
            and   indid > 0
            and   indid < 255)
   drop index REPORTE.SERA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REPORTE')
            and   type = 'U')
   drop table REPORTE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_AVISO')
            and   type = 'U')
   drop table TIPO_AVISO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_CUENTA')
            and   type = 'U')
   drop table TIPO_CUENTA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_PRODUCTO')
            and   type = 'U')
   drop table TIPO_PRODUCTO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_REPORTE')
            and   type = 'U')
   drop table TIPO_REPORTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USUARIO')
            and   name  = 'PUEDE__SER_FK'
            and   indid > 0
            and   indid < 255)
   drop index USUARIO.PUEDE__SER_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USUARIO')
            and   name  = 'ES_DE__FK'
            and   indid > 0
            and   indid < 255)
   drop index USUARIO.ES_DE__FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USUARIO')
            and   name  = 'ES_DE_FK'
            and   indid > 0
            and   indid < 255)
   drop index USUARIO.ES_DE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USUARIO')
            and   type = 'U')
   drop table USUARIO
go

/*==============================================================*/
/* Table: AVISO                                                 */
/*==============================================================*/
create table AVISO (
   ID_AVISO             int                  not null,
   ID_USUARIO           int                  not null,
   ID_MARCA             int                  not null,
   ID_TIP_AVISO         int                  not null,
   ID_TIPO_PRODUCTO     int                  not null,
   FOTO                 image                null,
   PRECIO               int                  not null,
   UBICACION            varchar(25)          not null,
   FECHA                timestamp            not null,
   PRODUCTO             varchar(20)          not null,
   constraint PK_AVISO primary key (ID_AVISO)
)
go

/*==============================================================*/
/* Index: PUBLICA_FK                                            */
/*==============================================================*/




create nonclustered index PUBLICA_FK on AVISO (ID_USUARIO ASC)
go

/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/




create nonclustered index TIENE_FK on AVISO (ID_MARCA ASC)
go

/*==============================================================*/
/* Index: PUEDE_SER_FK                                          */
/*==============================================================*/




create nonclustered index PUEDE_SER_FK on AVISO (ID_TIP_AVISO ASC)
go

/*==============================================================*/
/* Index: PUEDE_SER__FK                                         */
/*==============================================================*/




create nonclustered index PUEDE_SER__FK on AVISO (ID_TIPO_PRODUCTO ASC)
go

/*==============================================================*/
/* Table: BOLETA                                                */
/*==============================================================*/
create table BOLETA (
   ID_BOLETA            int                  not null,
   ID_FORMA             int                  not null,
   ID_USUARIO           int                  not null,
   ID_AVISO             int                  not null,
   FECHA_TRANS          timestamp            null,
   DETALLE              varchar(120)         null,
   constraint PK_BOLETA primary key (ID_BOLETA)
)
go

/*==============================================================*/
/* Index: PUEDE_REALIZARSE_FK                                   */
/*==============================================================*/




create nonclustered index PUEDE_REALIZARSE_FK on BOLETA (ID_FORMA ASC)
go

/*==============================================================*/
/* Index: PUEDE_REALIZAR_FK                                     */
/*==============================================================*/




create nonclustered index PUEDE_REALIZAR_FK on BOLETA (ID_USUARIO ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_15_FK on BOLETA (ID_AVISO ASC)
go

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   ID_CIUDAD            int                  not null,
   NOM_CIUDAD           varchar(20)          not null,
   constraint PK_CIUDAD primary key (ID_CIUDAD)
)
go

/*==============================================================*/
/* Table: ESTADO_CUENTA                                         */
/*==============================================================*/
create table ESTADO_CUENTA (
   ID_ESTADO            int                  not null,
   NOM_ESTADO           varchar(10)          not null,
   constraint PK_ESTADO_CUENTA primary key (ID_ESTADO)
)
go

/*==============================================================*/
/* Table: ESTILO_BANDA                                          */
/*==============================================================*/
create table ESTILO_BANDA (
   ID_GUS_BAND          int                  not null,
   ID_ESTILO            int                  not null,
   ID_USUARIO           int                  not null,
   ID_PER_BAND          int                  not null,
   constraint PK_ESTILO_BANDA primary key (ID_GUS_BAND)
)
go

/*==============================================================*/
/* Index: PUEDEN_SER_FK                                         */
/*==============================================================*/




create nonclustered index PUEDEN_SER_FK on ESTILO_BANDA (ID_ESTILO ASC)
go

/*==============================================================*/
/* Index: TIENEN_MUCHOS__FK                                     */
/*==============================================================*/




create nonclustered index TIENEN_MUCHOS__FK on ESTILO_BANDA (ID_USUARIO ASC,
  ID_PER_BAND ASC)
go

/*==============================================================*/
/* Table: ESTILO_MUSICAL                                        */
/*==============================================================*/
create table ESTILO_MUSICAL (
   ID_ESTILO            int                  not null,
   NOM_ESTILO           varchar(20)          not null,
   constraint PK_ESTILO_MUSICAL primary key (ID_ESTILO)
)
go

/*==============================================================*/
/* Table: ESTILO_PERSONAL                                       */
/*==============================================================*/
create table ESTILO_PERSONAL (
   ID_GUS_PER           int                  not null,
   ID_ESTILO            int                  not null,
   USU_ID_USUARIO       int                  not null,
   ID_US_PER            int                  not null,
   constraint PK_ESTILO_PERSONAL primary key (ID_GUS_PER)
)
go

/*==============================================================*/
/* Index: PUEDEN_SER__FK                                        */
/*==============================================================*/




create nonclustered index PUEDEN_SER__FK on ESTILO_PERSONAL (ID_ESTILO ASC)
go

/*==============================================================*/
/* Index: TIENEN_MUCHOS_FK                                      */
/*==============================================================*/




create nonclustered index TIENEN_MUCHOS_FK on ESTILO_PERSONAL (USU_ID_USUARIO ASC,
  ID_US_PER ASC)
go

/*==============================================================*/
/* Table: FORMA_PAGO                                            */
/*==============================================================*/
create table FORMA_PAGO (
   ID_FORMA             int                  not null,
   NOM_FORMA            varchar(20)             not null,
   constraint PK_FORMA_PAGO primary key (ID_FORMA)
)
go

/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA (
   ID_MARCA             int                  not null,
   NOM_MARCA            varchar(20)          not null,
   constraint PK_MARCA primary key (ID_MARCA)
)
go

/*==============================================================*/
/* Table: PERFIL_BANDA                                          */
/*==============================================================*/
create table PERFIL_BANDA (
   ID_USUARIO           int                  not null,
   ID_PER_BAND          int                  not null,
   ID_CIUDAD            int                  not null,
   ID_TIP_CUENTA        int                  not null,
   NOM_USUARIO          varchar(15)          not null,
   CORREO               varchar(30)          not null,
   CONTRASENA           varchar(15)          not null,
   NOMBRE               varchar(20)          not null,
   APELLIDO             varchar(20)          not null,
   ID_ESTADO            int                  not null,
   NOM_BANDA            varchar(20)          not null,
   INFLUENCIAS          varchar(120)         not null,
   DISPONIBILIDAD       bit                  null,
   DESCRIPCION          varchar(120)         null,
   constraint PK_PERFIL_BANDA primary key (ID_USUARIO, ID_PER_BAND)
)
go

/*==============================================================*/
/* Index: HEREDA__FK                                            */
/*==============================================================*/




create nonclustered index HEREDA__FK on PERFIL_BANDA (ID_USUARIO ASC)
go

/*==============================================================*/
/* Table: PERFIL_PERSONAL                                       */
/*==============================================================*/
create table PERFIL_PERSONAL (
   USU_ID_USUARIO       int                  not null,
   ID_US_PER            int                  not null,
   ID_CIUDAD            int                  not null,
   ID_TIP_CUENTA        int                  not null,
   NOM_USUARIO          varchar(15)          not null,
   CORREO               varchar(30)          not null,
   CONTRASENA           varchar(15)          not null,
   NOMBRE               varchar(20)          not null,
   APELLIDO             varchar(20)          not null,
   ID_ESTADO            int                  not null,
   ID_USUARIO           int                  null,
   ID_PER_BAND          int                  null,
   APODO                varchar(15)          null,
   INFLUENCIAS          varchar(120)         null,
   DESCRIPCION          varchar(120)         null,
   constraint PK_PERFIL_PERSONAL primary key (USU_ID_USUARIO, ID_US_PER)
)
go

/*==============================================================*/
/* Index: PERTENECE_A_FK                                        */
/*==============================================================*/




create nonclustered index PERTENECE_A_FK on PERFIL_PERSONAL (ID_USUARIO ASC,
  ID_PER_BAND ASC)
go

/*==============================================================*/
/* Index: HEREDA_FK                                             */
/*==============================================================*/




create nonclustered index HEREDA_FK on PERFIL_PERSONAL (USU_ID_USUARIO ASC)
go

/*==============================================================*/
/* Table: REPORTE                                               */
/*==============================================================*/
create table REPORTE (
   ID_REPORTE           int                  not null,
   ID_AVISO             int                  not null,
   ID_TIP_REP           int                  not null,
   DESCRIPCION          varchar(120)         not null,
   constraint PK_REPORTE primary key (ID_REPORTE)
)
go

/*==============================================================*/
/* Index: SERA_FK                                               */
/*==============================================================*/




create nonclustered index SERA_FK on REPORTE (ID_AVISO ASC)
go

/*==============================================================*/
/* Index: PUEDEN_SER_DE_FK                                      */
/*==============================================================*/




create nonclustered index PUEDEN_SER_DE_FK on REPORTE (ID_TIP_REP ASC)
go

/*==============================================================*/
/* Table: TIPO_AVISO                                            */
/*==============================================================*/
create table TIPO_AVISO (
   ID_TIP_AVISO         int                  not null,
   NOM_TIP_AVISO        varchar(15)          null,
   constraint PK_TIPO_AVISO primary key (ID_TIP_AVISO)
)
go

/*==============================================================*/
/* Table: TIPO_CUENTA                                           */
/*==============================================================*/
create table TIPO_CUENTA (
   ID_TIP_CUENTA        int                  not null,
   NOM_TIP_CUENTA       varchar(20)          not null,
   constraint PK_TIPO_CUENTA primary key (ID_TIP_CUENTA)
)
go

/*==============================================================*/
/* Table: TIPO_PRODUCTO                                         */
/*==============================================================*/
create table TIPO_PRODUCTO (
   ID_TIPO_PRODUCTO     int                  not null,
   NOM_TIPO_PROD        varchar(20)          not null,
   constraint PK_TIPO_PRODUCTO primary key (ID_TIPO_PRODUCTO)
)
go

/*==============================================================*/
/* Table: TIPO_REPORTE                                          */
/*==============================================================*/
create table TIPO_REPORTE (
   ID_TIP_REP           int                  not null,
   NOM_TIP_REP          varchar(20)          not null,
   constraint PK_TIPO_REPORTE primary key (ID_TIP_REP)
)
go

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USUARIO           int                  not null,
   ID_CIUDAD            int                  not null,
   ID_TIP_CUENTA        int                  not null,
   ID_ESTADO            int                  not null,
   NOM_USUARIO          varchar(15)          not null,
   CORREO               varchar(30)          not null,
   CONTRASENA           varchar(15)          not null,
   NOMBRE               varchar(20)          not null,
   APELLIDO             varchar(20)          not null,
   constraint PK_USUARIO primary key (ID_USUARIO)
)
go

/*==============================================================*/
/* Index: ES_DE_FK                                              */
/*==============================================================*/




create nonclustered index ES_DE_FK on USUARIO (ID_CIUDAD ASC)
go

/*==============================================================*/
/* Index: ES_DE__FK                                             */
/*==============================================================*/




create nonclustered index ES_DE__FK on USUARIO (ID_TIP_CUENTA ASC)
go

/*==============================================================*/
/* Index: PUEDE__SER_FK                                         */
/*==============================================================*/




create nonclustered index PUEDE__SER_FK on USUARIO (ID_ESTADO ASC)
go

alter table AVISO
   add constraint FK_AVISO_PUBLICA_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
go

alter table AVISO
   add constraint FK_AVISO_PUEDE_SER_TIPO_AVI foreign key (ID_TIP_AVISO)
      references TIPO_AVISO (ID_TIP_AVISO)
go

alter table AVISO
   add constraint FK_AVISO_PUEDE_SER_TIPO_PRO foreign key (ID_TIPO_PRODUCTO)
      references TIPO_PRODUCTO (ID_TIPO_PRODUCTO)
go

alter table AVISO
   add constraint FK_AVISO_TIENE_MARCA foreign key (ID_MARCA)
      references MARCA (ID_MARCA)
go

alter table BOLETA
   add constraint FK_BOLETA_PUEDE_REA_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
go

alter table BOLETA
   add constraint FK_BOLETA_PUEDE_REA_FORMA_PA foreign key (ID_FORMA)
      references FORMA_PAGO (ID_FORMA)
go

alter table BOLETA
   add constraint FK_BOLETA_RELATIONS_AVISO foreign key (ID_AVISO)
      references AVISO (ID_AVISO)
go

alter table ESTILO_BANDA
   add constraint FK_ESTILO_B_PUEDEN_SE_ESTILO_M foreign key (ID_ESTILO)
      references ESTILO_MUSICAL (ID_ESTILO)
go

alter table ESTILO_BANDA
   add constraint FK_ESTILO_B_TIENEN_MU_PERFIL_B foreign key (ID_USUARIO, ID_PER_BAND)
      references PERFIL_BANDA (ID_USUARIO, ID_PER_BAND)
go

alter table ESTILO_PERSONAL
   add constraint FK_ESTILO_P_PUEDEN_SE_ESTILO_M foreign key (ID_ESTILO)
      references ESTILO_MUSICAL (ID_ESTILO)
go

alter table ESTILO_PERSONAL
   add constraint FK_ESTILO_P_TIENEN_MU_PERFIL_P foreign key (USU_ID_USUARIO, ID_US_PER)
      references PERFIL_PERSONAL (USU_ID_USUARIO, ID_US_PER)
go

alter table PERFIL_BANDA
   add constraint FK_PERFIL_B_HEREDA__USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
go

alter table PERFIL_PERSONAL
   add constraint FK_PERFIL_P_HEREDA_USUARIO foreign key (USU_ID_USUARIO)
      references USUARIO (ID_USUARIO)
go

alter table PERFIL_PERSONAL
   add constraint FK_PERFIL_P_PERTENECE_PERFIL_B foreign key (ID_USUARIO, ID_PER_BAND)
      references PERFIL_BANDA (ID_USUARIO, ID_PER_BAND)
go

alter table REPORTE
   add constraint FK_REPORTE_PUEDEN_SE_TIPO_REP foreign key (ID_TIP_REP)
      references TIPO_REPORTE (ID_TIP_REP)
go

alter table REPORTE
   add constraint FK_REPORTE_SERA_AVISO foreign key (ID_AVISO)
      references AVISO (ID_AVISO)
go

alter table USUARIO
   add constraint FK_USUARIO_ES_DE_CIUDAD foreign key (ID_CIUDAD)
      references CIUDAD (ID_CIUDAD)
go

alter table USUARIO
   add constraint FK_USUARIO_ES_DE__TIPO_CUE foreign key (ID_TIP_CUENTA)
      references TIPO_CUENTA (ID_TIP_CUENTA)
go

alter table USUARIO
   add constraint FK_USUARIO_PUEDE__SE_ESTADO_C foreign key (ID_ESTADO)
      references ESTADO_CUENTA (ID_ESTADO)
go

