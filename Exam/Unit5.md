= Unit 5

- Convert adoc file to pdf
`docker container run --rm -v ${PWD}:/documents/ --workdir /documents asciidoctor/docker-asciidoctor asciidoctor-pdf README.adoc`

- With mounted volume
`docker container run --name asciidoc -v ${PWD}:/documents --workdir /documents  asciidoctor/docker-asciidoctor asciidoctor-pdf README.adoc`
