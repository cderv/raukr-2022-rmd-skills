.PHONY: render-slides deploy clean

all: render-slides

render-slides: slides/index.html

slides/index.html: slides/slides.Rmd
		Rscript -e 'xfun::in_dir("slides", rmarkdown::render("$(<F)", output_file = "$(@F)", quiet = TRUE))'

# deployement
## this require the netlify cli to be setup
deploy:
		cd slides && \
		netlify deploy --dir=. --prod || echo '## >> netlify not configured - deployement skipped'
