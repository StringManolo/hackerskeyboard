#!/bin/bash

# Define el string a buscar
SEARCH_STRING="com.stringmanolo.hackerskeyboard"

# Define el directorio base de búsqueda
SEARCH_DIR="./"

echo "🔍 Buscando la cadena: $SEARCH_STRING"
echo "---"

# El comando 'grep -r' busca recursivamente el string.
# -r o -R: Recursivo.
# -l: Imprime solo el nombre del archivo (para una lista limpia).
# -i: Ignora mayúsculas/minúsculas (opcional, pero buena práctica).
# -n: Muestra el número de línea donde se encontró (si quieres el contexto, quita '-l').
# El comando find es una alternativa si quieres filtrar tipos de archivos.

# Usando grep de forma recursiva:
# grep -r "$SEARCH_STRING" "$SEARCH_DIR"

# Usando find + xargs + grep (más robusto para muchos archivos o archivos binarios):
find "$SEARCH_DIR" -type f -print0 | xargs -0 grep -l "$SEARCH_STRING"
# find busca todos los archivos (-type f).
# -print0 y xargs -0 manejan correctamente los espacios en los nombres de archivo.
# grep -l solo imprime la ruta de los archivos que contienen el string.

echo "---"
echo "Búsqueda finalizada. Los archivos listados arriba contienen la cadena."
