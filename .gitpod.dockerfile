# Ese archivo que estás viendo, llamado .gitpod.dockerfile, es un Dockerfile personalizado 
# que Gitpod usa para construir tu entorno de desarrollo cuando trabajas con su plataforma.



FROM gitpod/workspace-full

# ¿Qué hace?
# Esta línea indica que tu contenedor se va a construir basado en una imagen base llamada gitpod/workspace-full.
# Esa imagen ya viene preconfigurada con Node.js, Python, Git, VS Code CLI, herramientas comunes de desarrollo, etc.
# Es como decir: “Quiero empezar desde un entorno de desarrollo completo”.

RUN npm i learnpack -g

# 🧰 ¿Qué hace?
#     Ejecuta un comando durante la construcción del contenedor.
#     npm i learnpack -g instala globalmente (-g) la herramienta llamada learnpack, 
#     que se usa en plataformas como 4Geeks Academy para ejecutar proyectos interactivos.

# Es como decir:
#     “Después de crear el entorno, instala la herramienta learnpack para que esté disponible en todo el contenedor”.

# 🧠 ¿Cuándo se ejecuta esto?
# Este archivo es parte de la configuración previa al arranque de tu entorno en Gitpod.
# Gitpod:
#     Lee este Dockerfile.
#     Construye un contenedor con las herramientas que defines.
#     Te abre el entorno listo para usar en el navegador.

# ⭐ Comparación entre `.gitpod.dockerfile` y `devcontainer.json`
    
#     | Característica        | `.gitpod.dockerfile`                     | `.devcontainer.json`                                     |
#     |-----------------------|------------------------------------------|----------------------------------------------------------|
#     | Plataforma            | Gitpod                                   | GitHub Codespaces / VS Code Dev Containers               |
#     | Lenguaje              | Dockerfile                               | JSON                                                     |
#     | Propósito             | Construir el entorno base con comandos   | Configurar el entorno de VS Code (extensiones, comandos) |
#     | Extensible            | 100% Docker (libre, personalizable)      | Declarativo, fácil de usar pero más limitado             |
#     | Nivel de control      | Total (puedes modificar todo el sistema) | Medio (ajustas solo lo que VS Code permite)              |
#     | Familiaridad          | Requiere saber Docker                    | Muy fácil para usuarios de VS Code                       |