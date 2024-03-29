
# Evaluación Integradora del Módulo 3 del Bootcamp Fullstack Java 
<img src="assets/images/java.png" alt="logo de Java" width="100">


Al finalizar el Bootcamp Fullstack Java, se debe presentar un proyecto final, el cual consite en el desarrollo de una billetera digital **"Alke Wallet"**.

Como parte de ese proceso, el módulo 3 está enfocado en aprender **base de datos relacionales, SQL y MySQL**, lo cual se debe demostrar a través de la siguiente evaluación integradora.

## Requerimientos
La Alke Wallet deberá cumplir con una serie de características y requerimientos técnicos para garantizar la calidad y funcionalidad de la
misma.

Primero, como requerimiento general tenemos que poder implementar todas las funcionalidades básicas que un usuario necesita para gestionar sus fondos, realizar transacciones y ver el historial de transacciones, las cuales son:

● Diseñar una Bases de Datos que garantice la coherencia y la integridad de los datos.

● Crear una conexión a una Bases de Datos llamada Alke Wallet.

● Crear Entidades.


### Entidades
**1. Usuario:** Representa a cada usuario individual del sistema de monedero virtual.
- *Atributos*:
user_id (clave primaria)
nombre
correo electrónico
contraseña
saldo.

**2. Transacción:** Representa cada transacción financiera realizada por los usuarios.
- *Atributos*:
transaction_id (Primary Key)
sender_user_id (Foreign Key referenciando a User)
receiver_user_id (Foreign Key referenciando a User)
importe
transaction_date.

**3. Moneda:** Representa las diferentes monedas que se pueden utilizar en el monedero virtual.
- *Atributos*:
currency_id (Primary Key)
currency_name
currency_symbol

### Relaciones entre entidades
1. Un usuario puede tener múltiples transacciones, tanto como emisor como receptor.
2. Cada transacción implica un importe específico y está asociada a una fecha de transacción.
3. El monedero virtual admite una divisa y cada transacción debe estar asociada a esa divisa.

### Modelo Conceptual - Diagrama Entidad Relación
![diagrama ER de las entidades](assets/images/DIAGRAMA%20ENTIDAD%20RELACIÓN.png)
