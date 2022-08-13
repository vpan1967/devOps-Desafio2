### Problema propuesto
Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado *Lista_Precios* en su directorio `/home`. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo  sea  vulnerado  porque  otros  empleados  utilizan  su  equipo  al  finalizar  su turno.   Actualmente,   Roxs   posee   una   contraseña   segura,   pero   él   necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs?

>**Considere lo siguiente para solucionar el problema.** 
>
>Para  proveer  una  solución  apropiada  para  restringir  accesos  no autorizados  al archivo, se necesita realizar lo siguiente: 
>
>1. Identificar las medidas de seguridad a implementarse. 
>2. Identificar el tipo de usuarios para quienes los permisos >serán cambiados. 
>3. Identificar el tipo de permiso que necesita ser cambiado.
>4. Verificar los permisos de acceso al archivo.

>**RESOLUCION:**
>
>1. Medidas de seguridad a implementar.
> - Asignar permisos totales solo al usuario Ross, se puede usar los comandos: CHMOD o CHOWN
>2. Identificar el tipo de usuarios para quienes los permisos serán cambiados
> - A los usuarios del mismo grupo del dueño del archivo y al resto de usuarios se les debe quitar todos los acceso al archivo Lista_Precios
>3. Tipo de permiso que necesita ser cambiado.
> - Usando el comando CHMOD: chmod go-rwx ~/Lista_Precios
>4. Verificar los permisos de acceso al archivo
> - Para verificar los permisos al archivo usamos el comando:  ls -lrt ~/Lista_Precios