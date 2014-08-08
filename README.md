My OSX Devset
=============

This repo describes my favorite tools and settings for web development on OSX (Node.js, JavaScript, SASS, ColdFusion, etc)
This list is ordered by installation order which I used the last time I reinstalled my system.

### [Brew](http://www.brew.sh)
Homebrew installs the stuff you need that Apple didn’t.
```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

### [Node JS](http://nodejs.org)
Node.js® is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications.

#### Install
Use the installer provided on [nodejs.org](http://nodejs.org)

#### Configurate
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
