all: index.html blog/index.html

index.html: index.adoc
	asciidoctor --out-file index.html index.adoc

contact.html: contact.adoc
	asciidoctor --out-file contact.html contact.adoc

blog/index.html: blog.adoc clean.css Makefile blog
	asciidoctor --out-file blog/index.html blog.adoc

blog:
	mkdir -p blog
