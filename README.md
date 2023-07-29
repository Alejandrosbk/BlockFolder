# Descripción del script Folder BlockInfo

Este script en formato .bat permite ocultar y mostrar una carpeta en el sistema de archivos utilizando una técnica de renombrado y cambio de atributos. El script muestra un menú interactivo donde el usuario puede decidir si desea ocultar o mostrar la carpeta.

## Funcionalidad del script

El script realiza las siguientes acciones:

### Ocultar la carpeta

1. Comprueba si la carpeta ya está oculta verificando la existencia de una carpeta renombrada "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}".
2. Si la carpeta está oculta, pregunta al usuario si desea ocultarla nuevamente.
3. Si el usuario confirma, el script renombra la carpeta a "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" y cambia los atributos a oculto y sistema.

### Mostrar la carpeta

1. Comprueba si la carpeta está oculta verificando la existencia de la carpeta renombrada "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}".
2. Si la carpeta está oculta, pide al usuario que ingrese una contraseña para mostrarla.
3. Si el usuario ingresa la contraseña correcta ("00100100"), el script cambia los atributos de la carpeta para mostrarla nuevamente.

## Uso del script

1. Ejecuta el script en la terminal o en el Explorador de archivos.
2. Sigue las instrucciones del menú interactivo para ocultar o mostrar la carpeta.
3. Si se ingresa una contraseña incorrecta al intentar mostrar la carpeta, se mostrará un mensaje de error.

## Notas importantes

- Este script proporciona una forma básica de ocultar y mostrar una carpeta, pero no es un método completamente seguro para proteger datos confidenciales.
- La contraseña utilizada en el script se muestra directamente en el código, lo que no es seguro. Para mayor seguridad, se recomienda utilizar métodos de autenticación más robustos.

