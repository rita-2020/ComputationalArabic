---
title: "guide for Arabic OCR"
date: 2021-01-06T15:05:07+02:00
draft: false
categories: ["computational arabic"]
image: "../../img/crop.png"
---
<!--more-->
### Using Tesseract 'Optical Character Recognition' for Arabic print scans.

> #### Installing Tesseract
>
> - Follow the [instructions in tesseracts documentation][tut] to install required tools for a version >=4 (for mac I used HomeBrew,& then `git clone tesseract` ). 
> - To check if installation was succesfull, type in terminal `tesseract man` to prompt the manual.  
> - Read [Post-Installation Instructions][tut2] which concerns adding needed languages. 
> - Download the ara.traineddata file from the [tessdata_best][tut4] repository (which is trained at Google!), and any other need languages. Make sure to also download the osd.traineddata file, used for Orientation Script Detection.
> - Place the downloaded .traineddata files in the default location `/usr/local/share/tessdata` for linux & OS X. 
> - In Terminal type `tesseract --list -langs`, and you should the list of languages you downloaded.
> - Finally, follow the [Command Line Usage][tut3] samples. :)
> 
> - for multiple pages, such as a scanned book, best results work with a multitiff file, command promted normally. Otherwise, you may call multiple pages in return of seperate files: `for i in *.tif ; do tesseract $i outtext$i -l ar pdf;  done;` (for mac Terminal) 

{{< figure src="../../img/lookabletext.jpeg" alt="Reportage on Bala Toul Sire, Future TV"  width="400px" >}}


[tut]:https://tesseract-ocr.github.io/tessdoc/Compiling.html
[tut2]:https://tesseract-ocr.github.io/tessdoc/Compiling-–-GitInstallation.html#post-install-instructions 
[tut3]:https://tesseract-ocr.github.io/tessdoc/Command-Line-Usage.html#simplest-invocation-to-ocr-an-image
[tut4]:https://github.com/tesseract-ocr/tessdata_best

