<H1 align="center">Instalación y Configuración de Neovim para Linux Septiember 2021.</H1>

<p align="center" width="0">
   <img align="center" width="645" src="https://github.com/josuerom/config-nvim-linux/blob/main/screen/2022-03-25%2013-49-12.png">
</p>

## Introducción.
En el presente proyecto se describe el proceso a seguir para personalizar e instalar **NEOVIM** en su versión más reciente del 2021, proyecto realizado tras la devaluación e ineficiencia de instalaciones que hay sobre neovim en español para el sistema operativo **Windows 8.1, 10 y 11 y Linux**, gran parte de los programadores profesionales utilizan este editor de código muy profesionalmente. Asimismo este estudio de elaboración propia revela la calidad de instalación, configuración y personalización. Para una mejor comprensión del presente informe debe enfocarse y descargar cada una de las herramientas inicializadas a continuación:

## Herramientas necesarias.

1. Instala **Git**
2. Instala **Node.js**
3. Instala **Python**
4. Instala **Neovim**
5. Clona **este repositorio**
6. Instala el gestor de plugins **vim-plug**

**Tenga en cuenta que:** para instalar Neovim, si o si necesitarás utilizar todas esas 5 herramientas, para ello aquí conocerás el paso a paso para instalar cada una correctamente sin errores ni falsa información, cabe mensionar que, *Bash o Windows PowerShell* viene instalados de fabrica en los Sistemas Operativos, por eso no será necesario explicar el como ejecutarlo, ni instalarlo, *¡ni abrirlo ¡eso ya debes de saberlo programador!* y si no sabes mirate un video en YouTube.

# Paso a paso para la instalación de NeoVim.
### Paso No. 1. Instala Git.
Git es un software de control de versiones diseñado por **Linus Torvalds** quién es él mismo creador del Sistema Operativo **GNU-LINUX**, fue pensado en la eficiencia, la confiabilidad y compatibilidad para mantenimientos de versiones; para realizar la instalación de git da un [click aquí](https://git-scm.com/downloads "https://git-scm.com/downloads"), este es un enlace que te llevará a la pagina oficial de Git. Si no lo tienes instalado deberás intalararlo para que neovim no te arroje errores al momento de iniciarlo. Por otra parte, si usted ya lo tiene instalado haga caso omiso a este paso y continue con los restantes.

### Paso No. 2. Instala Node.js.
**Node.js** es un entorno en tiempo de ejecución multiplataforma, de código abierto, para la capa del servidor basado en el lenguaje de programación JavaScript, en pocas palabras, es un programa el cual permite interpretar o ejecutar archivos javascript sin necesidad de correrlo en el navegador, es por eso que Node.js integra su consola; pero esto es siempre y cuando valles a trabajar con **JavaScript**, si tu no lo dominas o no te interesa trabajar con el *"pues no lo instales y ya"*. Por otra parte si no lo instalas cada vez que habrás neovim te saldrá un aviso en rojo pidiendote que instales Node.js, pero no te preocupes que podrás utilizar neovim sin problema algun. 

Para instalarlo da un [click aquí](https://nodejs.org/es/download/ "https://nodejs.org/es/download/"), este enlace te llevará directamente a su pagina oficial de descargar, si requieres más información de instalación, visualizate un video en **YouTube**.

### Paso No. 3. Instala Python.
Es un lenguaje de alto nivel de programación interpretado cuya filosofía hace hincapié en la legibilidad de su código, se utiliza para desarrollar aplicaciones de todo tipo, ejemplos: Instagram, Netflix, Spotify, Panda 3D, entre otros. Para instalarlo da un [click aquí](https://www.python.org/downloads/), este enlace te llevará a su página oficial de descargas, si requieres más información consultala en Google.

### Si trabajaras con Java debes instalarte el OpenJDK-11 o 14
Presento los comandos para instalar solo en Fedora Linux, la distribucion que manejo.

Para Fedora, debe ejecutar:
```zsh
# OpenJDK-8
sudo dnf install java-1.8.0-openjdk-devel.x86_64

# OpenJDK-11
sudo dnf install java-11-openjdk-devel.x86_64

# OpenJDK-última-versión
sudo dnf install java-latest-openjdk-devel.x86_64
```

### Paso No. 4. Instala Neovim.
Para poder instalarlo debes ejecutar el comando correspondiente a tu distribución.

Para distribuciones basadas en Debian como: [Ubuntu, Linux Mint, Deepin, SteamOS, MX Linux, PureOS, Kali Linux o Devuan], ejecute:
```bash
sudo apt install neovim
``` 
Para Fedora
```bash
sudo dnf install neovim
``` 
Para distribuciones basadas en Arch, ejecute:
```bash
sudo pacman -Sy neovim
``` 
NixOS, ejecute:
```bash
sudo nix-env -Ai nixos.neovim
``` 
Void Linux, ejecute:
```zsh
sudo xbps-install -Sy neovim
``` 
Por snap, ejecute:
```zsh
sudo snap install neovim
``` 
Para concer si instaló correctamente neovim, ejecute el siguiente comando, le deberá arrojar la versión que haya instalado:
```zsh
nvim --version
``` 

### Paso No. 5. Clona los archivos publicados en este repositorio.
Para clonar copia y pega este comando en tu terminal, pero antes verifica tener instalado Git. 

```zsh
git clone https://github.com/josuerom/config-nvim-linux.git
``` 

Esta es la personalización que actualmente tengo en mi neovim:

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/config-nvim-linux/blob/main/screen/2022-03-25%2013-52-23.png">
</p>

**¿Te gustaría tener neovim como lo tengo yo?.** Si tu respuesta es **SÍ** deberás descargarte los archivos publicados en este repositorio ya que son netamente necesarios para que tu Neovim tenga la misma interfaz, atajos y plugins que manejo.

Ahora bien, debes crear un carpeta en la ruta: **~/home/el-nombre-de-tu-usuario/**, una vez estes dentro de la carpeta de tu usuario, revisa si hay una carpeta con el nombre: **.config**, si te aparece entra a ella y verifica si encuentras una carpeta con el nombre: **nvim**, pues si la tienes esta bien, pero si usted no llega a tener la carpeta **.config o nvim** deberá crearla porque justo dentro de ellas, se deben pegar los directorios o archivos de este repositorio.

Para abrir neovim debes ejecutar un comando sencillo en tu terminal bash, zsh o la que uses, pero antes debes ubicarte en la ruta donde pegaste los directorios anteriores que son los de este repositorio. La ruta tuya debe ser ¡la misma ruta mia solo que nada más cambia el nombre de usuario!, mi ruta es: **~/home/josue/.config/nvim/**. Una vez halles pegado las carpetas y archivos: **autoload, config, coc-settings.json, init.vim** en esa ruta debes ingresar el siguiente comando, para abrir directamente neovim con un archivo:

```zsh
nvim init.vim
``` 

Añado captura de pantalla, por si estas perdido:

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/config-nvim-linux/blob/main/screen/2022-03-25%2013-52-07.png">
</p>

Luego de ejecutar el comando, te arrojará estos errores que son normales la primera vez, aparecen porque los plugins no se han instalado, deben ser estos mismos errores:

<p align="center" width="0">
   <img align="center" src="">
</p>

Para saltar esos errores debes presionar la tecla enter las veces necesarias, nada más faltaría instalar el gestor de plugins **vim plug** para que así culmines con la configuración.

### Paso No. 6. Instala el gestor de plugins VIM PLUG
**Vim plug** es un administrador de plugins para el editor de texto vim y neovim minimalista, de código abierto creado por **junegunn** y gratuito que puede instalar y actualizar complementos en paralelo. Crea clones para minimizar el uso de espacio del disco y el tiempo de descarga; para realizar una descarga limpia y ligera, ejecuta en la terminal nueva, en la pestaña PowerShell ejecutada como administrador el siguiente comando:

Copie y pegue el siguiente comando en su terminal GNU/Linux
```zsh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.config/nvim}"/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
``` 

Ese comando creará el archivo **plug.vim** en la ruta: **~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim**, pero debe copiar y pegar la carpta autoload y pergarla en la ruta donde esta neovim, para que recuerdes es esta: **$HOME/.config/nvim/**. 

Una vez culmines con lo anterior abre neovim, con el siguiente comando
```zsh
nvim
```

Luego de eso, escriba 
```zsh
:PlugI
# Y presione tabulador, al presionar debe autocompletarse
# Si se autocompleta de un enter y listo, pero sino debe instalar
# Git y el gestor de plugins nuevamente.  
```

Añado captura de pantalla, para que sepas como debe aparecerte:
<p align="center" width="0">
   <img align="center" src="">
</p>

Con el comando ejecutado se te instalaran todos los plugins que uso; añado otra captura de pantalla.
<p align="center" width="0">
   <img align="center" src="">
</p>

Despues de que hayan terminado todas las descargas y quieras ver los cambios efectuados, presiona las teclas [espacio+x], en el modo **NORMAL**

El comando cerrará neovim completamente. Para que luego, abras neovim nuevamente. ¡si no recuerdas como abrirlo! debes ingresar el comando en la misma ruta de instalación: **nvim init.vim**. En terminos generales, veráz los cambio justo como en las imagenes que te proporcioné; cabe mencionar que si deseas cambiar el tema u otra cosas puedes buscar en Youtube o realizar contacto conmigo vía email.
```correo
josueromram@outlook.es
```

Proporciono más imagenes:
<p align="center" width="0">
   <img align="center" src="">
</p>

<p align="center" width="0">
   <img align="center" src="https://github.com/josuerom/config-nvim-linux/blob/main/screen/2022-03-25%2013-53-41.png">
</p>

### Aún no he terminado la guía, falta documentarla un poco más, pero me comprometo a terminarla muy pronto, gracias por haber llegado hasta acá.

<p align="center" width="0">
   <img align="center" width="100" src="https://github.com/josuerom/josuerom/blob/ProjectsApacheNetbeans12.4/Perfil%20Circular.png">
</p>

