<u>
    <h4>Configuracion de VIM</h4>
</u>

Para empezar, eso incluye los archivos para la configuración del vim, ya con el emmet incluido en el autoload.

Para los demas plugins, tan solo hay que hacer <i>git submodule update --init --recursive</i> dentro de ~/.vim.

Emmet esta en autoload por defecto con mis propias modificaciones. En caso de que se quiera por defecto, se descomenta
la línea 'Plugin 'mattn/emmet'' y se borra los archivos de autoload y plugin pertenecientes a emmet.

Para que el YouCompleteMe funcione, se nesecita ademas la version de vim "compilada" en python.

Para entornos gnome, se soluciona instalando vim-nox, <i>sudo apt-get install vim-nox</i>.

Para el resto de escritorios y distribuciones de Linux, 
este <a href="http://stackoverflow.com/questions/20160902/how-to-solve-requires-python-2-x-support-in-linux-vim-and-it-have-python-2-6-6">post</a> 
de stackoverflow da muy buena información.

