# Roxy

This is a generic solution for `doxygen` + `doxygen-awesome-css`, as well as support for bundling static assets into doxygen output.

Support GitHub README/Pages, GitLab README/Pages.

## Usage

```sh
docker build -t roxy .
docker run -e DOXYGEN_CONTEXT_FOLDER=/project -e DOXYFILE=Doxyfile -e PROJECT_PATH=/project -e OUTPUT_PATH=/project/build/html -v .:/project roxy
```

> [!NOTE]
> The `OUTPUT_FOLDER` must be the same as the html output location in the `DOXYFILE` configuration file.

## Arguments

 - `DOXYGEN_AWESOME_CSS_VERSION`:
   version of doxygen-awesome-css, defalut to v2.3.3
 - `PROJECT_PATH`:
   project path
 - `DOXYGEN_CONTEXT_FOLDER`:
   Doxygen working dir in PROJECT_PATH
 - `DOXYFILE`:
   doxyfile file in PROJECT_PATH
 - `RESOURCE_FOLDER`:
   resource folder in PROJECT_PATH
 - `OUTPUT_FOLDER`:
   doxygen folder in PROJECT_PATH

## Apply Awesome-doxygen-css

Doxygen can not overwrite option via cli, You may set options by manually:s

```ini
GENERATE_HTML=YES
MARKDOWN_SUPPORT=YES
GENERATE_TREEVIEW=YES
DISABLE_INDEX=NO
FULL_SIDEBAR=NO
HTML_COLORSTYLE=LIGHT
HTML_HEADER=/doxygen-awesom-css/doxygen-custom/header.html
HTML_EXTRA_STYLESHEET=/doxygen-awesom-css/doxygen-awesome.css,/doxygen-awesom-css/doxygen-awesome-sidebar-only.css,/doxygen-awesom-css/doxygen-awesome-sidebar-only-darkmode-toggle.css,/doxygen-awesom-css/doxygen-custom/custom.css,/doxygen-awesom-css/doxygen-custom/custom-alternative.css
HTML_EXTRA_FILES=/doxygen-awesom-css/doxygen-awesome-darkmode-toggle.js,/doxygen-awesom-css/doxygen-awesome-fragment-copy-button.js,/doxygen-awesom-css/doxygen-awesome-interactive-toc.js,/doxygen-awesom-css/doxygen-awesome-paragraph-link.js,/doxygen-awesom-css/doxygen-awesome-tabs.js,/doxygen-awesom-css/doxygen-custom/toggle-alternative-theme.js
```