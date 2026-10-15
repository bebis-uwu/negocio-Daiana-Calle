create table categorias(
	id int primary key auto_increment,
	nombre varchar(50) not null unique
)

create table productos(
	id int primary key auto_increment,
	nombre varchar(50) not null,
	categoria_id int,
	foreign key (categoria_id) references categorias(id) on delete cascade,
	precio decimal(10,2) not null,
	stock int not null
)

create table clientes(
	id int primary key auto_increment,
	nombre varchar(50) not null,
	telefono varchar(15),
	email varchar(100) unique
)

create table pedidos(
	id int primary key auto_increment,
	cliente_id int,
	foreign key (cliente_id) references clientes(id) on delete cascade,
	fecha date not null,
	estado varchar(20)
)

create table detalle_pedido(
	id int primary key auto_increment,
	pedido_id int,
	foreign key (pedido_id) references pedidos(id) on delete cascade,
	producto_id int,
	foreign key (producto_id) references productos(id) on delete cascade,
	cantidad int,
	precio_unitario decimal(10,2)
)