Configuracion de VIM

Para empezar, eso incluye los archivos para la configuración del vim, ya con el emmet incluido en el autoload.

Para los demas plugins, tan solo hay que hacer <i>git submodule update --init --recursive</i> dentro de ~/.vim.

Emmet esta en autoload por defecto con mis propias modificaciones. En caso de que se quiera por defecto, se descomenta
la linea 'Plugin 'mattn/emmet'' y se borra los archivos de autoload y plugin pertenecientes a emmet.
