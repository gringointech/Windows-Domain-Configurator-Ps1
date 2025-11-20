# Configuración de Windows con Scripts PowerShell

Este repositorio contiene una serie de scripts en **PowerShell** diseñados para realizar tareas administrativas automatizadas en un entorno Windows. Los scripts permiten gestionar discos, crear usuarios, directorios, compartir recursos SMB y administrar **Active Directory**.

Los scripts están escritos en **PowerShell** y se ejecutan desde la línea de comandos o un archivo `.ps1`.

## Scripts incluidos

### 1. `02_DISCOS.ps1`
Este script configura particiones y formatos en un disco de almacenamiento. Crea varias particiones de 100 MB en el disco número 1, asignando las letras de unidad **P**, **V**, **O**, **W** y **U**. Cada partición se formatea con el sistema de archivos **NTFS** y se les asigna una etiqueta de volumen.

**Acción**: 
- Crea las particiones **P**, **V**, **O**, **W** y **U** en el disco 1.
- Asigna etiquetas a las particiones: **Perfiles**, **Facturacion**, **Comun**, **Almacen**, **proba**.

---

### 2. `08_crear_usuarios_locales.ps1`
Este script crea **usuarios locales** en la máquina de forma sencilla utilizando el comando `net user`. Los usuarios que se crean son **luis** y **lula**, ambos con la contraseña **"abc123."**.

**Acción**: 
- Crea los usuarios **luis** y **lula** en el sistema.

---

### 3. `12_CARPETAS.ps1`
Este script crea una serie de **directorios** en varias unidades de disco. Crea carpetas como **Clientes**, **Proveedores**, **Comun**, **Directores**, **Empleados**, **Jefes**, **Articulos**, **Devoluciones**, entre otras.

**Acción**:
- Crea directorios en las unidades **V:**, **O:**, **P:**, **W:** y **U:**

---

### 4. `14_COMPARTIR.ps1`
Este script crea **recursos compartidos SMB** en varias de las carpetas creadas previamente. Asigna acceso total para todos los usuarios a los recursos compartidos como **Perfiles**, **Facturacion**, **Comun**, **Almacen** y **proba**.

**Acción**:
- Crea los recursos compartidos **Perfiles**, **Facturacion**, **Comun**, **Almacen**, y **OCULTAPROBA75$** en la máquina.

---

### 5. `16_CREARDOMINIO.ps1`
Este script instala **Active Directory Domain Services** (AD DS) y configura un **nuevo dominio** llamado **tupyme31.ga**. Utiliza el comando `Install-ADDSForest` para crear un bosque y dominio, además de configurar el servidor DNS.

**Acción**:
- Instala y configura **Active Directory** en un nuevo dominio **tupyme31.ga**.

---

### 6. `18_OU.ps1`
Este script crea varias **Unidades Organizativas (OUs)** en **Active Directory**. Las OUs creadas son: **Personal**, **Ordenadores**, **Facturacion**, **Almacen**, **Empleados**, **Jefes**, **Operarios**, y **Directores**.

**Acción**:
- Crea OUs dentro del dominio **tupyme31.ga** en **Active Directory**.

---

### 7. `20_GRUPOS.ps1`
Este script crea **grupos de seguridad** dentro de **Active Directory**. Los grupos creados son: **G-Facturacion**, **G-Almacen**, **G-Empleados**, **G-Jefes**, **G-Operarios**, y **G-Directores**.

**Acción**:
- Crea grupos **Globales** en el dominio **tupyme31.ga** en **Active Directory**.

---

### 8. `21_USUARIOS.ps1`
Este script crea varios **usuarios en Active Directory** y los asigna a diferentes **grupos** dentro de **Active Directory**. Los usuarios creados son:
- **Juan Mario** en **JEFES**
- **Antonio Afonso** en **EMPLEADOS**
- **Matheus Guerra** en **ALMACEN**
- **Marguemat** en **FACTURACION**
- **Pablo Luis** en **OPERARIOS**

Además, cada usuario tiene una **ruta de perfil** y **directorio de inicio** predefinidos, y se asignan al grupo correspondiente utilizando el comando `Add-ADGroupMember`.

**Acción**:
- Crea los usuarios **Juan Mario**, **Antonio Afonso**, **Matheus Guerra**, **Marguemat** y **Pablo Luis** en **Active Directory**.
- Los usuarios son asignados a los grupos correspondientes: **G-Jefes**, **G-Empleados**, **G-Almacen**, **G-Facturacion**, **G-Operarios**, y **G-Directores**.

---

## Requisitos

- **Windows Server** (preferentemente Windows Server 2012 o superior).
- **PowerShell** habilitado para ejecutar scripts.
- **Active Directory Domain Services** (AD DS) instalado en el servidor para los scripts que interactúan con **AD**.
- **Permisos de administrador** para ejecutar la mayoría de los scripts, especialmente aquellos que modifican **Active Directory**, crean usuarios o realizan configuraciones de red.

## Uso

1. **Clona** o descarga este repositorio a tu máquina.
2. Abre PowerShell en modo **Administrador**.
3. Navega hasta el directorio donde guardaste los scripts.
4. Ejecuta los scripts según lo que necesites:
   - **Crear discos y particiones** (`02_DISCOS.ps1`).
   - **Crear usuarios locales** (`08_crear_usuarios_locales.ps1`).
   - **Crear directorios** (`12_CARPETAS.ps1`).
   - **Crear recursos compartidos SMB** (`14_COMPARTIR.ps1`).
   - **Configurar Active Directory** (`16_CREARDOMINIO.ps1`).
   - **Crear Unidades Organizativas en AD** (`18_OU.ps1`).
   - **Crear grupos en Active Directory** (`20_GRUPOS.ps1`).
   - **Crear usuarios en Active Directory** (`21_USUARIOS.ps1`).
   
   Para ejecutar un script, usa el siguiente comando en PowerShell:
   ```powershell
   .\nombre_del_script.ps1
