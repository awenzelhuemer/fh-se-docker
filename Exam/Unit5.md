# Unit 5

## Task 1

Run a container based on the asciidoctor/docker-asciidoctor image and connect to it interactively using bash shell. Use the simple command below to create a simple AsciiDoc document that we will be using to play with various tools.

`docker container run -it asciidoctor/docker-asciidoctor`
 echo '= README' > README.adoc
 echo 'This is a simple AsciiDoc document' >> README.adoc
 asciidoctor-pdf README.adoc
 exit

## Task 2

As soon as we terminated the container we created earlier, all the files that were produced have been deleted as all container layers are removed.

Our next task is to create an AsciiDoc document locally (in the host filesystem) and then start a container with the current directory mounted as volume. When starting the container run the asciidoctor-pdf and asciidoctor binary again and produce a PDF and a HTML5 document.

`docker container run --rm -v ${PWD}:/documents/ --workdir /documents asciidoctor/docker-asciidoctor asciidoctor-pdf README.adoc`

## Task 3

### Named volume
Explore the 'docker volume' commands and then create a named volume myasciidocuments. Repeat the same steps as with Task 2, but this time mount the named volume onto the container directory '/documents'.

```sh
docker volume create myasciidocuments
docker container run -it -v myasciidocuments:/documents asciidoctor/docker-asciidoctor
```
 echo '= README' > /documents/README.adoc
 asciidoctor-pdf README.adoc
 exit

`docker volume rm myasciidoctor`

## Task 4

### Host directory mounted as container volume
Use the Docker image adoptopenjdk/openjdk11:alpine to compile and run the following Java source code in the local filesystem.

JavaFile erstellen im Ordner von wsl: HelloWorld.java
 class HelloWorld {
     public static void main(String[] args) {
         System.out.println ("Hello World");
     }
 }

`docker container run -v ${PWD}:/java --workdir /java adoptopenjdk/openjdk11 javac HelloWorld.java`

# Andi Notizen

- Convert adoc file to pdf
`docker container run --rm -v ${PWD}:/documents/ --workdir /documents asciidoctor/docker-asciidoctor asciidoctor-pdf README.adoc`

- With mounted volume
`docker container run --name asciidoc -v ${PWD}:/documents --workdir /documents  asciidoctor/docker-asciidoctor asciidoctor-pdf README.adoc`
