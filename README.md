# Roxy

This is a generic solution for `doxygen` + `doxygen-awesome-css`, as well as support for bundling static assets into doxygen output.

Support GitHub README/Pages, GitLab README/Pages.

## Usage

```sh
docker build -t roxy .
docker run -e DOXYGEN_CONTEXT=/project -e DOXYFILE=Doxyfile -e PROJECT_PATH=/project -e OUTPUT_PATH=/project/build/html -v .:/project roxy
```

> [!NOTE]
> The `OUTPUT_PATH` must be the same as the html output location in the `DOXYFILE` configuration file.

## Arguments

 - `DOXYGEN_AWESOME_CSS_VERSION`:
   version of doxygen-awesome-css, defalut to v2.3.3
 - `DOXYGEN_CONTEXT`:
   Doxygen working dir
 - `DOXYFILE`:
   doxyfile's path in PROJECT_PATH
 - `PROJECT_PATH`:
   project path
 - `OUTPUT_PATH`:
   doxygen output path