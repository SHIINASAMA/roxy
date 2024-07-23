FROM alpine:3.20.2

ARG DOXYGEN_AWESOME_CSS_VERSION=v2.3.3
ARG DOXYGEN_CONTEXT
ARG DOXYFILE
ARG PROJECT_PATH
ARG OUTPUT_PATH

ENV DOXYGEN_AWESOME_CSS_VERSION=${DOXYGEN_AWESOME_CSS_VERSION}
ENV DOXYGEN_CONTEXT=${DOXYGEN_CONTEXT}
ENV DOXYFILE=${DOXYFILE}
ENV PROJECT_PATH=${PROJECT_PATH}
ENV OUTPUT_PATH=${OUTPUT_PATH}

RUN apk add curl unzip doxygen

RUN curl -o doxygen.zip -L https://github.com/jothepro/doxygen-awesome-css/archive/refs/tags/${DOXYGEN_AWESOME_CSS_VERSION}.zip && \
    unzip doxygen.zip && rm doxygen.zip && \
    mv doxygen-awesome-css-2.3.3 doxygen-awesom-css

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
