FROM alpine:3.20.2

ARG DOXYGEN_AWESOME_CSS_VERSION=v2.3.3
ARG DOXYGEN_CONTEXT_FOLDER=.
ARG DOXYFILE=Doxyfile
ARG PROJECT_PATH
ARG RESOURCE_FOLDER=
ARG OUTPUT_FOLDER=

ENV DOXYGEN_AWESOME_CSS_VERSION=${DOXYGEN_AWESOME_CSS_VERSION}
ENV DOXYGEN_CONTEXT_FOLDER=${DOXYGEN_CONTEXT_FOLDER}
ENV DOXYFILE=${DOXYFILE}
ENV PROJECT_PATH=${PROJECT_PATH}
ENV RESOURCE_FOLDER=${RESOURCE_FOLDER}
ENV OUTPUT_FOLDER=${OUTPUT_FOLDER}

RUN apk add curl unzip doxygen

RUN curl -o doxygen.zip -L https://github.com/jothepro/doxygen-awesome-css/archive/refs/tags/${DOXYGEN_AWESOME_CSS_VERSION}.zip && \
    unzip doxygen.zip && rm doxygen.zip && \
    mv doxygen-awesome-css-2.3.3 doxygen-awesome-css

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
