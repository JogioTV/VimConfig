# Mi configuración de Vim/Neovim
Hago esta guía para que mi yo del futuro pueda volver a instalar su configuración de nvim. Por ahorita sólo haré los pasos más generales para llevar el control de mis configuraciones, pero en un futuro espero detallar cada cosa en el archivo por si a alguien más le puede ser de utilidad.

Sé que aún se ve horrible, pero Markdown me parece interesante.
Esta guía me ayudó muchísimo para ordenar un poco este fichero <https://markdown.es/sintaxis-markdown/> 

## Instalar NVIM
Ahora mismo estoy usando Linux (PopOS! que sinceramente me parece increíble),
así que sólo necesitaría ejecutar un comando por terminal:

~~~
sudo apt-get install neovim
~~~

## Archivo init.vim
En caso de no existir la carpeta, nos encargaremos de crearla con ***mkdir nvim*** en el siguiente directorio:
~~~
/home/Usuario/.config/
~~~
Vamos a crear el archivo **init.vim** dentro de la carpeta nvim:
~~~
//dentro de /home/Usuario/.config/nvim
nvim init.vim
~~~
A este fichero le vamos a agregar el siguiente [código](https://github.com/JogioTV/VimConfig/blob/main/init.vim):
~~~
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
~~~

## Instalar el manejador de Plugins
Vamos a utilizar [Plug](https://github.com/junegunn/vim-plug)
Ejecutaremos por terminal el siguiente comando:
~~~
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
~~~

## Archivo .vimrc
Este contendrá todas las configuraciones tanto de vim y neovim, como temas, plugins, atajos de teclado etc.

Este archivo va a estar ubicado en nuestra carpeta home
~~~
//en el home:
	cd $home
//ruta exacta:
	/home/Usuario/
//Resumida:
	~/
~~~

Si no existe el archivo .vimrc lo creamos:
~~~
nvim .vimrc
~~~
Y ahora agregamos todas las configuraciones que tengo hasta ahora en mi archivo [.vimrc](https://github.com/JogioTV/VimConfig/blob/main/.vimrc)


## Instalar los plugins y temas:
Vamos a ingresar a nuestro fichero .vimrc y una vez dentro ingresaremos el comando:
~~~
:PlugInstall
~~~

Plug nos descargará nuestros temas y plugins que vayamos instalando! Todo listo por acá, ya puedes comenzar a usar vim/nvim personalizado
