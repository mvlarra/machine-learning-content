#--------------------------------------------------------------------------------------
# El archivo compile.sh que compartiste es un script en Shell (sh), pensado para:
    # 🔹 Convertir notebooks Jupyter (.ipynb) en archivos Markdown (.md) automáticamente.
    # 🔹 (Opcionalmente) mover los archivos convertidos a una carpeta llamada export.

# ✅ ¿Cuándo usar este script?
  #     Para automatizar la exportación de notebooks como documentación.
  #     Para generar una versión .md de tus notebooks para subir a GitHub (sin depender del visor de notebooks).
  #     Como parte de un proceso de build o deploy (por ejemplo, en GitHub Pages o Docs).

#--------------------------------------------------------------------------------------
#!/bin/sh
  # 🔹 Esta es la línea shebang, que indica que el script debe ejecutarse con el intérprete sh (Shell POSIX).
  #     En sistemas modernos suele funcionar igual que bash.

#--------------------------------------------------------------------------------------
rm -rf export
  # 🔹 Elimina (si existe) una carpeta llamada export y todo su contenido.
  #     Se usa para limpiar antes de regenerar la exportación.

#--------------------------------------------------------------------------------------
# loop over all notebooks and run nbconvert over them
for i in $(find . | grep -F .ipynb); do
  jupyter nbconvert --to markdown $i
done

  # 🔹 Este bloque busca todos los archivos .ipynb en el proyecto (en cualquier subcarpeta) y los convierte a .md usando nbconvert de Jupyter.
  #     find . → busca todos los archivos y carpetas desde el directorio actual.
  #     grep -F .ipynb → filtra solo los archivos .ipynb.
  #     jupyter nbconvert --to markdown $i → convierte cada notebook a Markdown.
  #     ✅ Esto es útil para documentar notebooks, crear posts en blog, documentación, o subir contenido en GitHub renderizado.


#--------------------------------------------------------------------------------------

# mkdir export
# cp ./*/*.md ./export
# cp ./*/*.ipynb ./export

  #   🔸 Estas líneas están comentadas, pero su función sería:
  #     mkdir export → crear la carpeta export.
  #     cp ./*/*.md ./export → copiar todos los archivos Markdown generados a export.
  #     cp ./*/*.ipynb ./export → copiar también los notebooks originales.
  # 👉 Si las descomentas, al final del proceso tendrás una carpeta export/ con todos los .md y .ipynb listos para compartir.

  #--------------------------------------------------------------------------------------