-- Productos con el nombre de su categoria, ordenados por nombre 
select p.nombre as "Producto", c.nombre
from productos p
inner join categorias c on p.categoria_id = c.id 
order by p.nombre 

-- Productos con menos de 5 unidades en stock
select *
from productos
where stock<5

-- Precio promedio por categoria 
select c.nombre, avg(p.precio) as "Precio Promedio"
from productos p
inner join categorias c on p.categoria_id = c.id
group by c.nombre

-- Pedidos de un cliente con su fecha y estado
select c.nombre as "Cliente", p.fecha, p.estado
from pedidos p
inner join clientes c on p.cliente_id = c.id
where c.id = 1

-- Total en dinero de cada pedido
select p.id, sum(dp.cantidad*dp.precio_unitario) as "Total"
from pedidos p
inner join detalle_pedido dp on dp.pedido_id = p.id
group by p.id
