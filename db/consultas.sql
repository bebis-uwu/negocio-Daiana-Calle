-- Productos con el nombre de su categoria, ordenados por nombre 
select p.nombre as "Producto", c.nombre
from productos p
inner join categorias c on p.categoria_id = c.id 
order by p.nombre 
