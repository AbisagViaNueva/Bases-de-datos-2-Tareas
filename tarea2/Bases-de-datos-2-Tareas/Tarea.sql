--Tarea 1
--Base de datos seccion 0800
--Abisag Inez Via Nueva Vargas 20181900710

CREATE DATABASE tarea1;
USE  tarea1;

--Relacion de muchos a muchos
CREATE TABLE hotel(
codigo_hotel varchar(10) NOT NULL,
nombre_hotel varchar(70) NOT NULL,
direccion_hotel varchar(150) NOT NULL,
PRIMARY KEY (codigo_hotel)

);



CREATE TABLE cliente(
dni_cliente varchar(10) NOT NULL,
nombre_cliente varchar(70) NOT NULL,
direccion_cliente varchar(70) NOT NULL,
PRIMARY KEY(dni_cliente),

);



 CREATE TABLE reserva(
codigo_hotel varchar(10) NOT NULL,
dni_cliente varchar(10) NOT NULL,
fecha_in DATE NOT NULL,
fecha_out DATE NOT NULL,
cantidad_personas varchar (10)

);




--default para reserva
ALTER TABLE reserva ADD CONSTRAINT df_cantidadpersonas
DEFAULT 0 FOR cantidad_personas;

ALTER TABLE reserva ADD CONSTRAINT  pk_hotel_cliente
PRIMARY KEY (codigo_hotel,dni_cliente)

ALTER TABLE reserva ADD CONSTRAINT fk_hotel_cliente_hotel
foreign key (codigo_hotel) references hotel(codigo_hotel)

ALTER TABLE reserva ADD CONSTRAINT fk_hotel_cliente_cliente
foreign key (dni_cliente) references cliente(dni_cliente)
 



 --relacion de uno a muchos
 --relacion N:1
 CREATE TABLE aerolinea(
codigo_aerolinea  varchar(5) NOT NULL,
descuento_aerolinea varchar(5)  NOT NULL,
CHECK (descuento_aerolinea>=10),
PRIMARY KEY(codigo_aerolinea)
);



 CREATE TABLE boleto(
codigo_boleto  varchar(5) NOT NULL,
n_vuelo varchar(5) NOT NULL,
fecha_boleto DATE NOT NULL,
destino_boleto varchar(70) NOT NULL,
CONSTRAINT CHK_destino CHECK (destino_boleto='Mexico' OR destino_boleto='Guatemala' OR destino_boleto='Panama'),
PRIMARY KEY(codigo_boleto),
dni_cliente varchar(10) NOT NULL,
codigo_aerolinea  varchar(5) NOT NULL
);



ALTER TABLE boleto ADD CONSTRAINT fk_cliente_boleto
foreign key (dni_cliente) references cliente(dni_cliente)

ALTER TABLE boleto ADD CONSTRAINT fk_boleto_aerolinea
foreign key (codigo_aerolinea) references aerolinea(codigo_aerolinea)


insert into hotel (codigo_hotel,nombre_hotel,direccion_hotel) values (1,'Clarion','Comayagua')
insert into hotel (codigo_hotel,nombre_hotel,direccion_hotel) values (2,'Cruz','San Pedro')

insert into cliente(dni_cliente, nombre_cliente, direccion_cliente) values (0301199852, 'Enrique Medina Lagos', 'La Ceiba, Atlantida')
insert into cliente(dni_cliente, nombre_cliente, direccion_cliente) values (0301199853, 'Sandra Medina Lagos', 'La Ceiba, Atlantida')


insert into reserva(codigo_hotel, dni_cliente, fecha_in, fecha_out) values (1, 0301199852, '2022-09-1','2022-09-30' )
insert into reserva(codigo_hotel, dni_cliente, fecha_in, fecha_out) values (2, 0301199853, '2022-09-1','2022-09-30' )

INSERT INTO aerolinea(codigo_aerolinea, descuento_aerolinea) values (1,18)
INSERT INTO aerolinea(codigo_aerolinea, descuento_aerolinea) values (2,12)

INSERT INTO boleto(codigo_boleto, n_vuelo, fecha_boleto, destino_boleto, dni_cliente, codigo_aerolinea) values (1, 32, '2022-09-1', 'Mexico', 0301199852, 1 )
INSERT INTO boleto(codigo_boleto, n_vuelo, fecha_boleto, destino_boleto, dni_cliente, codigo_aerolinea) values (2, 56, '2022-09-1', 'Panama', 0301199853, 2 )





