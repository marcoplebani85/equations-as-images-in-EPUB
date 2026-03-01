
# EPUB WITH FORMULAS AS .SVG:

epub_webtex <- \(...) {
	fmt <- bookdown::epub_book(...)
	fmt$pandoc$args[format$pandoc$args == "--mathml"] <- "--webtex"
	fmt
}

bookdown::render_book(
  input = "index.Rmd",
  output_format = epub_webtex(
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
    template = "default"
  )
)

# Oh boy. What's up with this overwriting frenzy? EPUB readers overwriting EPUB style rules, bookdown overwriting instructions... Anyway: THANK YOU! Your fix worked. You're a gorram UNIT.

# STANDARD EPUB:

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