# EPUB:

bookdown::render_book(input="index.Rmd",
	bookdown::epub_book(
		fig_width = 5, 
		fig_height = 4,
		dev = "png", 
		fig_caption = TRUE,
		number_sections = TRUE,
		toc = FALSE, 
		toc_depth = 2,
		stylesheet = "style.css",
		metadata = NULL,
		chapter_level = 1,
    	md_extensions = NULL,
    	# pandoc_args = NULL,
    	template = "default"
    	)
    )

# PDF:

bookdown::render_book(input="index.Rmd", "bookdown::pdf_book")