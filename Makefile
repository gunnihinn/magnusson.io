all: index.html blog/index.html

index.html: index.adoc
	asciidoctor index.html

contact.html: contact.adoc
	asciidoctor contact.html

blog/index.html: blog.adoc clean.css Makefile blog
	asciidoctor --out-file blog/index.html blog.adoc

blog:
	mkdir -p blog
