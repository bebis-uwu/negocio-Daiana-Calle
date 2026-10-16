GET: Obtener un recurso
Pide datos al servidor sin modificarlos. Los parámetros viajan en la URL.
Ejemplo: GET https://jsonplaceholder.typicode.com/posts devuelve
[
  {
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  },
  {
    "userId": 1,
    "id": 2,
    "title": "qui est esse",
    "body": "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"
  },
  ...
]

POST: Crear un recurso
Envía datos al servidor para crear un recurso nuevo. Los datos viajan en el body.
Ejemplo: POST https://jsonplaceholder.typicode.com/posts 
{
  "userId": 1,
  "title": "post nuevo",
  "body": "quiero terminar esta práctica de una vez"
}
devuelve
{
  "userId": 1,
  "title": "post nuevo",
  "body": "quiero terminar esta práctica de una vez",
  "id": 101
}

PUT: Reemplazar un recurso
Reemplaza el recurso completo con los datos enviados. Hay que mandar  todos los campos.
Ejemplo: PUT https://jsonplaceholder.typicode.com/posts/1
{
    "userId": 1,
    "id": 1,
    "title": "post actualizado",
    "body": "este es el contenido actualizado"
}
devuelve
{
  "userId": 1,
  "id": 1,
  "title": "post actualizado",
  "body": "este es el contenido actualizado"
}

PATCH: Modificar parcialmente
Actualiza solo los campos enviados y deja el resto del recurso intacto.
Ejemplo: PATCH https://jsonplaceholder.typicode.com/posts/1
{
    "title": "titulo nuevo"
}
devuelve
{
  "userId": 1,
  "id": 1,
  "title": "titulo nuevo",
  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
}

DELETE: Eliminar un recurso
Elimina el recurso indicado en la URL. Repetir la petición no cambia el resultado: el recurso ya no existe.
Ejemplo: DELETE https://jsonplaceholder.typicode.com/posts/1
devuelve
{}