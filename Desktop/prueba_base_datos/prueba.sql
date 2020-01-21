CREATE DATABASE prueba;
CREATE DATABASE
ivanalejandro=# \c prueba
You are now connected to database "prueba" as user "ivanalejandro".

CREATE TABLE categorias(
id INT PRIMARY KEY,
nombre_categoria VARCHAR(50),
descripcion VARCHAR(200));

CREATE TABLE productos(
id INT PRIMARY KEY,
nombre VARCHAR(50),
descripcion VARCHAR(50),
valor_unitario INT,
id_categoria INT REFERENCES categorias(id));

CREATE TABLE compras(
id INT PRIMARY KEY,
id_producto INT REFERENCES productos(id),
cantidad INT);


CREATE TABLE facturas(
numero_factura INT PRIMARY KEY,
fecha_factura DATE,
iva INT,
precio_total INT);

ADD COLUMN facturas_id INT REFERENCES facturas(numero_factura);

CREATE TABLE clientes (
id INT PRIMARY KEY,
nombre VARCHAR(50),
rut VARCHAR(15),
direccion VARCHAR(50));

ALTER TABLE facturas
ADD COLUMN id_cliente INT REFERENCES clientes (id);


INSERTANDO VALORES EN LAS TABLAS

5 CLIENTES

INSERT INTO clientes (id, nombre, rut, direccion) VALUES ('1', 'jose fuentes', '2345678', 'calle heroes');

INSERT INTO clientes (id, nombre, rut, direccion) 
VALUES ('2', 'Alejandra guzman', '29782436', 'calle gonzalez');

INSERT INTO clientes (id, nombre, rut, direccion) VALUES ('3', 'anastasio perez', '39873654', 'calle pajaritos');

INSERT INTO clientes (id, nombre, rut, direccion) VALUES ('4', 'fabian peres', '1987654', 'calle lagunas');

INSERT INTO clientes (id, nombre, rut, direccion) VALUES ('5', 'pedro fuentes', '4987345', 'calle fuego');

8 PRODUCTOS CON CATEGORIAS

INSERT INTO categorias (id, nombre_categoria, descripcion) VALUES (100,'manzanas', 'area de manzanas');

INSERT INTO productos (id, nombre, descripcion,valor_unitario,id_categoria) VALUES (1,'manzana roja','manzana de peru', 890,100);

INSERT INTO categorias (id, nombre_categoria, descripcion) VALUES (200,'peras', 'area de peras');

INSERT INTO productos (id, nombre, descripcion,valor_unitario,id_categoria) VALUES (2,'pera verde','peras de mexico', 390,200);

INSERT INTO categorias (id, nombre_categoria, descripcion) VALUES (300,'papaya', 'area de papayas');

INSERT INTO productos (id, nombre, descripcion,valor_unitario,id_categoria) VALUES (3,'papaya madura','papayas de colombia', 290,300);

INSERT INTO categorias (id, nombre_categoria, descripcion) VALUES (400,'guayaba', 'area de guayabas');

INSERT INTO productos (id, nombre, descripcion,valor_unitario,id_categoria) VALUES (4,'guayaba dulce','guayaba de USA', 540,400);

INSERT INTO categorias (id, nombre_categoria, descripcion) VALUES (500,'cereza', 'area de cerezas');

INSERT INTO productos (id, nombre, descripcion,valor_unitario,id_categoria) VALUES (5,'cerezas rojas','cerezas de Chile', 878,500);

INSERT INTO categorias (id, nombre_categoria, descripcion) VALUES (600,'melon', 'area de melones');

INSERT INTO productos (id, nombre, descripcion,valor_unitario,id_categoria) VALUES (6,'melon dulce','melones chinos', 238,600);

INSERT INTO categorias (id, nombre_categoria, descripcion) VALUES (700,'fresas', 'area de fresas');

INSERT INTO productos (id, nombre, descripcion,valor_unitario,id_categoria) VALUES (7,'fresas rojas','fresas de guadalajara', 908,700);

INSERT INTO categorias (id, nombre_categoria, descripcion) VALUES (800,'pomelos', 'area de pomelos');

INSERT INTO productos (id, nombre, descripcion,valor_unitario,id_categoria) VALUES (8,'pomelos acidos','pomelos de merida', 1290,800);


10 FACTURAS

CLIENTE 1

INSERT INTO facturas (numero_factura,fecha_factura,iva,precio_total,id_cliente) VALUES (001,'2020-01-01',10, 890,1);
INSERT INTO facturas (numero_factura,fecha_factura,iva,precio_total,id_cliente) VALUES (002,'2020-01-01',10, 1570,1);

CLIENTE 2

INSERT INTO facturas (numero_factura,fecha_factura,iva,precio_total,id_cliente) VALUES (003,'2020-01-01',10, 2500,2);
INSERT INTO facturas (numero_factura,fecha_factura,iva,precio_cliente) VALUES (004,'2020-01-01',10, 1500,2);
INSERT INTO facturas (numero_factura,fecha_factura,iva,precio_total,id_cliente) VALUES (005,'2020-01-01',10, 2600,2);

CLIENTE 3
INSERT INTO facturas (numero_factura,fecha_factura,iva,precio_total,id_cliente) VALUES (006,'2020-01-02',10, 878,3);


CLIENTE 4
INSERT INTO facturas (numero_factura,fecha_factura,iva,precio_total,id_cliente) VALUES (007,'2020-01-03',10, 778,4);
INSERT INTO facturas (numero_factura,fecha_factura,iva,precio_total,id_cliente) VALUES (008,'2020-01-03',10,2024,4);
INSERT INTO facturas (numero_factura,fecha_factura,iva,precio_total,id_cliente) VALUES (009,'2020-01-03',10,2414,4);
INSERT INTO facturas (numero_factura,fecha_factura,iva,precio_total,id_cliente) VALUES (010,'2020-01-03',10,238,4);
