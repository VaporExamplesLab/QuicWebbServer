# [QuicWebbUpdater][t]
[t]:https://github.com/VaporExamplesLab/QuicWebbUpdater

<p align="center">
    <a href="http://docs.vapor.codes/3.0/">
        <img src="http://img.shields.io/badge/read_the-docs-2196f3.svg" alt="Documentation">
    </a>
    <a href="LICENSE">
        <img src="http://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-4.2-brightgreen.svg" alt="Swift 4.2">
    </a>
</p>

<a id="toc"></a>
[Getting Started](#GettingStarted) •
[Original Setup](#OriginalSetup) •
[Resources](#Resources) 

## Getting Started <span id="GettingStarted">[▴](#toc)</span>

**Prerequisites**

* [Install Xcode 10 ⇗](https://itunes.apple.com/us/app/xcode/id497799835?mt=12)
* [Install homebrew ⇗](https://brew.sh/)
* [Install vapor toolbox ⇗](https://docs.vapor.codes/3.0/install/macos/)

**Download|Clone & Run**

Steps to download repository:

``` bash
## go to your working directory
cd <your-choosen-directory-path>

## download and unzip
wget https://github.com/VaporExamplesLab/QuicWebbUpdater/archive/master.zip
unzip master.zip -d QuicWebbUpdater
rm master.zip     # remove download

cd QuicWebbUpdater-master

# update dependencies 
# with `-y` yes to generate and open Xcode project
vapor update -y
```

Or, alternate steps to clone repository instead of download:

``` bash
## go to your working directory
cd <your-choosen-directory-path>

## either clone
##    add --bare option for an unattached instance
git clone git@github.com:VaporExamplesLab/QuicWebbUpdater.git 

cd QuicWebbUpdater

# update dependencies 
# with `-y` yes to generate and open Xcode project
vapor update -y
```

**Directory Structure**

``` bash
blog_content_original/
  html/
  # markdown/…/*.md pages map to blog_content_processed/leaf/_m/…/*.leaf
  # markdown/…/*_files/*  map to blog_content_processed/public/_m/…/*.leaf
  markdown/   
    yyyy/
      MM/
        article_files
        article.md
  paprika/
#
blog_content_processed/
  leaf/
    _h/
    _m/
      yyyy/
        mm/
          article.leaf
    _r/
  public/
    _h/
    _m/
      yyyy/
        mm/
          article_files/*
    _r/

QuicWebbUpdater/
  Public/   # must match URL for relative addressing
     _h → blog_content_processed/public/_h
     _m → blog_content_processed/public/_m
     _r → blog_content_processed/public/_r
  Resources/
    Views/  # path to leaf can be revised by router ?
      _h → blog_content_processed/leaf/_h
      _m → blog_content_processed/leaf/_m
      _r → blog_content_processed/leaf/_r
```

_route_

``` swift
```

_leaf template_

``` leaf
```

``` bash
cd QuicWebbUpdater
ln -s ../../blog_content_processed/public/_h Public/_h 
ls -l Public/_h/
ln -s ../../blog_content_processed/public/_m Public/_m 
ls -l Public/_m/
ln -s ../../blog_content_processed/public/_r Public/_r 
ls -l Public/_r/
ls -l Public

ln -s ../../../blog_content_processed/leaf/_h Resources/Views/_h 
ls -l Resources/Views/_h/
ln -s ../../../blog_content_processed/leaf/_m Resources/Views/_m 
ls -l Resources/Views/_m/
ln -s ../../../blog_content_processed/leaf/_r Resources/Views/_r 
ls -l Resources/Views/_r/
ls -l Resources/Views
```

Set Xcode scheme to "Run > My Mac".

![](README_files/XcodeScheme.png)

Click the run button and check the results in a browser at `http://localhost:8080`.

![TBD:LandingPage](README_files/LandingPage.png)

## Original Setup <span id="OriginalSetup">[▴](#toc)</span>

The following steps were completed to create the `QuicWebbUpdater` example. 


**Create Vapor Website Project**

Create a `QuicWebbUpdater` project from the command line terminal:

``` bash
vapor new QuicWebbUpdater --web
cd QuicWebbUpdater
# add directory for README.md assets
mkdir README_files 
touch README_files/.git_keep # create file so folder is not empty for `git`  

# update dependencies 
# with `-y` yes to generate and open Xcode project
vapor update -y
```



## Resources <span id="Resources">[▴](#toc)</span>

* [Bootstrap ⇗](https://getbootstrap.com)
