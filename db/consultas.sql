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
