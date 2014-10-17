My OSX Devset
=============

This repo describes my favorite tools and settings for web development on OSX (Node.js, JavaScript, SASS, ColdFusion, etc)
This list is ordered by installation order which I used the last time I reinstalled my system.

## Software

### [Brew](http://www.brew.sh)
Homebrew installs the stuff you need that Apple didn’t.
```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

### [Node JS](http://nodejs.org)
Node.js® is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications.

#### Install
Use the installer provided on [nodejs.org](http://nodejs.org)

#### Configure
To prevent access errors you should chown the ~/.npm folder

```
cd ~/.npm/
sudo chown $USERNAME$ *
```

Replace $USERNAME$ with your own username



### [Sass](http://sass-lang.com/)
```
gem install sass
```

### [Compass](http://compass-style.org/)
```
gem install compass
```


### [Sublime](http://www.sublimetext.com/)

Although the editor is awesome, I really hate the icon, I solve this by replacing the default icon by [this beautiful icon](https://dribbble.com/shots/468176-Icon-Sublime-Text-for-themes-with-white-background) by [Dmitry Svetlichny](https://dribbble.com/vocaltsunami).

I also like to be able to run sublime from the terminal, if you follow [this explanation](https://gist.github.com/artero/1236170) you'll be able to run
```
sublime foldername
```
to open files / folders in sublime.

## Build tools
- [Yeoman](http://www.yeoman.io)
- [Grunt](http://www.grunt.io)
- [Gulp](http://www.gulp.io)


### [Growl](http://growl.info/)
"The Ultimate Notification System for OS X. Growl is the easiest way to know what's going on with your applications."

## Bash configuration
Check out the .bash_profile file in this repo to see my complete bash profile config.

### Functions
I use the following .bash_profile functions

#### Tab naming shortcut
As I mostly have multiple terminal tabs open, I often get confused about what runs in which tab. I found [this blogpost](http://rod.pu-gh.com/2010/04/iterm-tab-names.html) with a cool bash function to define a name for your tab.

Add this to your ~/.bash_profile
```bash
tabname() {
    export PROMPT_COMMAND='echo -ne "\033]0;'$1'\007"';
}
```
After adding that and restarting your terminal session you can run:

```shell
$> tabname "some tab name"
```

#### Simple HTTP Server
Sometimes, I find it useful to open a specific folder as a simple http server to check out some files in my browser (without opening it with file://). I found this little snippet that does just that.

add this to your ~/.bash_profile
```bash
server() {
	open "http://localhost:${1}" && python -m SimpleHTTPServer $1
}
```
After adding that and restarting your terminal session you can run:

```shell
$> server 8080
```
to open a browser and start a simple http server in the folder you are currently working in.

#### PFX to Cer
I need to convert a lot of PFX (SSL Certificate exports) to a certificate file to install on Amazon ELB's. I use a shortcut to quickly convert the pfx to a cer file

add this to your ~/.bash_profile

```
pfxtocer() {
	openssl pkcs12 -in $1 -out $2 -nodes
}
```
After adding that and restarting your terminal session you can run:

```
$> pfxtocer export.pfx certificate.cer
```
