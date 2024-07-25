#!/bin/sh

# workspace
echo "PROJECT_PATH=$PROJECT_PATH"
echo "DOXYGEN_CONTEXT_FOLDER=$DOXYGEN_CONTEXT_FOLDER"
echo "DOXYFILE=$DOXYFILE"
echo "RESOURCE_FOLDER=$RESOURCE_FOLDER"
echo "OUTPUT_FOLDER=$OUTPUT_FOLDER"

mkdir -p $PROJECT_PATH/$OUTPUT_FOLDER
cd $PROJECT_PATH/$DOXYGEN_CONTEXT_FOLDER
cp -r $PROJECT_PATH/$RESOURCE_FOLDER $PROJECT_PATH/$OUTPUT_FOLDER/$RESOURCE_FOLDER
/usr/bin/doxygen $DOXYFILE \
    -D GENERATE_HTML=YES \
    -D MARKDOWN_SUPPORT=YES \
    -D GENERATE_TREEVIEW=YES \
    -D DISABLE_INDEX=NO \
    -D FULL_SIDEBAR=NO \
    -D HTML_COLORSTYLE=LIGHT \
    -D HTML_HEADER=/doxygen-awesom-css/doxygen-custom/header.html \
    -D HTML_EXTRA_STYLESHEET=/doxygen-awesom-css/doxygen-awesome.css,/doxygen-awesom-css/doxygen-awesome-sidebar-only.css,/doxygen-awesom-css/doxygen-awesome-sidebar-only-darkmode-toggle.css,/doxygen-awesom-css/doxygen-custom/custom.css,/doxygen-awesom-css/doxygen-custom/custom-alternative.css \
    -D HTML_EXTRA_FILES=/doxygen-awesom-css/doxygen-awesome-darkmode-toggle.js,/doxygen-awesom-css/doxygen-awesome-fragment-copy-button.js,/doxygen-awesom-css/doxygen-awesome-interactive-toc.js,/doxygen-awesom-css/doxygen-awesome-paragraph-link.js,/doxygen-awesom-css/doxygen-awesome-tabs.js,/doxygen-awesom-css/doxygen-custom/toggle-alternative-theme.js
