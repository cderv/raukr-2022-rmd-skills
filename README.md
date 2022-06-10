
# raukr-2022-rmd-skills

<!-- badges: start -->
<!-- badges: end -->

This is the repository with the resources for the Lecture at Raukr 2022 about "Improve your R Markdown skills!"

* About Raukr : https://www.scilifelab.se/event/raukr-advanced-r-for-bioinformatics-workshop/

* Presentation: https://raukr-2022-rmd-skills.netlify.app/

## What is available in this repo ?

* `slides/` is the folder containing the **xaringan** presentation source and related resources. Looking at the Rmd source can be interesting to see advanced usage of R Markdown. 
* `renv/`: infrastructure for **renv** package managament
* `.Rprofile`: used for activating **renv** when entering the project
* `Makefile`: used as workflow tool to render and deply. (if you don't know makefile, just use R code directly) 


## Building process

To run this project locally here are the steps

* Clone or fork this repository

* This project uses **renv** - this means that when you open the RStudio project it should install **renv** and ask you to restore all the environment
  ```r
  renv::restore()
  ```
* To run the slides, don't forget to download remark 
  ```r
  xfun::in_dir("slides/", xaringan::summon_remark())
  ```

* Everything should now be setup and you can render

## Rendering the different documents

This project uses a _Makefile_ to render the document. You can just call make once setup

```sh
make
```

> I don't know about Makefile - Can I just use R and RStudio ? 

Yes you can ! Just use the knit button in RStudio. The output filename could be different, but that is fine! 

Otherwise, you can just use the `rmarkdown::render()`.
