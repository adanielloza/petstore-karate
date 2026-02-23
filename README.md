# 🐾 PetStore API Automation - Karate Framework

## 📌 Descripción

Este proyecto automatiza el flujo E2E de la API pública **PetStore Swagger** utilizando **Karate Framework** como herramienta principal para pruebas de servicios REST.

La automatización cubre la creación, consulta, actualización y validación de una mascota dentro del sistema.

API utilizada:
https://petstore.swagger.io/

---

## 🎯 Objetivo del Ejercicio

Automatizar los siguientes escenarios:

1. Añadir una mascota a la tienda.
2. Consultar la mascota por ID.
3. Actualizar el nombre y el estatus a "sold".
4. Consultar la mascota modificada por estatus.

---

## 🛠 Tecnologías Utilizadas

- Java 17 (para ejecución de pruebas)
- Maven 3.x
- Karate Framework 1.4.1
- JUnit 5 (incluido por Karate)

> Nota: Aunque el sistema puede tener Java 21 instalado, las pruebas se ejecutan con Java 17 para compatibilidad con Karate.

---

## 📂 Estructura del Proyecto
<img width="171" height="270" alt="image" src="https://github.com/user-attachments/assets/2c6d0310-78ca-4e85-ad2b-a3092084fba5" />


---

## ▶️ Cómo Ejecutar el Proyecto

### 1️⃣ Clonar el repositorio
git remote add origin https://github.com/adanielloza/petstore-karate.git 
cd petstore-karate

### 2️⃣ Verificar versión de Java
``mvn -version
``

Debe mostrar Java 17.

### 3️⃣ Ejecutar las pruebas
``mvn clean test
``

---

## 📊 Reportes

Karate genera automáticamente reportes HTML en:
<img width="1344" height="771" alt="image" src="https://github.com/user-attachments/assets/81bf98ef-45dc-4da1-8a36-31cea111f97e" />

---

## ✅ Validaciones Implementadas

- Validación de códigos de estado HTTP (200).
- Validación de campos específicos (id, name, status).
- Uso de ID dinámico para evitar colisiones en ambiente público.
- Verificación de actualización correcta de estatus.
- Validación de aparición en búsqueda por status "sold".

---

## 🔎 Consideraciones Técnicas

- La API es pública y compartida, por lo que se utiliza un ID dinámico generado por timestamp.
- El proyecto está configurado para ejecutarse con Java 17 para evitar conflictos con versiones superiores.

---

## 🚀 Mejoras Futuras

- Implementar pruebas negativas (ID inexistente).
- Validación de schema JSON.
- Integración con CI/CD.
- Pruebas de performance con k6 o JMeter.




