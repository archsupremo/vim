<u>
    <h4>Configuracion de VIM</h4>
</u>

Para los plugins de instalación, tan solo hay que hacer <i>git submodule update --init --recursive</i> dentro de ~/.vim.

Después de la instalación, se debe abrir el editor por primera vez de tal forma: vim +PlugInstall +BundleInstall

Para que el YouCompleteMe y lldb funcione, se nesecita ademas la version de vim "compilada" en python.

Para entornos gnome, se soluciona instalando vim-nox, <i>sudo apt-get install vim-nox</i>.

Para el resto de escritorios y distribuciones de Linux, 
este <a href="http://stackoverflow.com/questions/20160902/how-to-solve-requires-python-2-x-support-in-linux-vim-and-it-have-python-2-6-6">post</a> 
de stackoverflow da muy buena información.

PD: Para mas informacion con el YouCompleteMe, ejecuta después de instalarlo ":h ins-completion" y ":h complete-functions".
