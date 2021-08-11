# Computational Arabic
![IMG_1642](https://user-images.githubusercontent.com/69199435/129028917-59c25f11-4374-4c0d-bf21-ef2e200689aa.jpeg)
A GitHub repository which aims to collect any instance that builds, adds, and modifies the notion of "Computational Arabic" through collective open-source participation. While Computing has always held sociological and theoretical implications, Computational Arabic seeks to intersect all aspects of an Arab socio-cultural landscape. 

To contribute to the repo, message me for a Collaborators Invite.
#### you will need to have [hugo installed](https://gohugo.io/getting-started/installing/)

Then ; 

``` ruby
    git clone --recursive https://github.com/rita-2020/ComputationalArabic.git 
    #make sure to add --recursive, to include the submodules.
```

You might need to manually copy-paste this modified version of the hugo sk2 theme. __If__ 
_ComputationalArabic > themes > sk2_ is cloned as an empty folder. Download the single "themes" file on this repository and replace the empty sk2 folder.

https://github.com/rita-2020/ComputationalArabic/tree/main/themes/sk2 


# Tools for Contribution: 

## OCR - _Optimal Character Recognition_ for Arabic Texts 
Add to the Shadow Library by Digitising any text (book,pamphlets,etc.) into **searchable** pdfs. Follow this simple [guide](https://rita-2020.github.io/posts/ocr_tutorial/) on how to install the _Tesseract_ software. **NO CODING NEEDED**, probably just some debugging which can be sorted together. 

* Scan page(s), basic home scanners work.
* [Install Tesseract.](https://rita-2020.github.io/posts/ocr_tutorial/)
* Open Terminal, or Command Line and type (with _imageName_ and _imageOutput_ as your own file path)

``` ruby
    tesseract imageName imageOutput -l ara pdf
```

* Fini! 

## How to publish digitised file to the [Shadow Library](https://rita-2020.github.io/categories/shadow-library/)

* Copy Paste pdf file to _ComputationalArabic > static > pdfs_ 
```ruby
   $ cd ComputaionalArabic
   $ hugo new posts/bookname.md
   $ vi content/posts/bookname.md
   $ i #this key allows u to edit the post. 
     ---
#Copy Paste this structure, and adjust to your book name.      
title: "الى الفقر"
date: 2021-02-16T16:50:44+02:00
draft: false
tags: ["المجتمع"]
categories: ["shadow library", "computational arabic"]
image: "../../img/bookcover2.png"
url: "../../pdfs/towardPoverty.pdf"
    ---
<br>

***[Open PDF](../../pdfs/towardPoverty.pdf)***

   $ esc #Enter this key to end editing the post.
   $ :wq #Enter these keys to Save and exit the post.
   $ hugo -D #to process your post
   $ git add . 
   $ git commit -a -m "add new scan" 
   $ git push
   $ ./deploy.sh "add new scan" #To publish to the online repository
```
    





