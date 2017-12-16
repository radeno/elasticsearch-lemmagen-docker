FROM docker.elastic.co/elasticsearch/elasticsearch:6.1.0
LABEL maintainer "Radovan Šmitala <rado@choco3web.eu>"

# Install Lemmagen
# RUN elasticsearch-plugin install https://github.com/vhyza/elasticsearch-analysis-lemmagen/releases/download/v5.6.3/elasticsearch-analysis-lemmagen-5.6.3-plugin.zip

# Install ICU
RUN elasticsearch-plugin install analysis-icu

# ENV HUNSPELL_VERSION 5.3-22

# Install Hunspell
# RUN wget --progress=bar:force https://github.com/LibreOffice/dictionaries/archive/cp-$HUNSPELL_VERSION.tar.gz \
#   && tar -xf cp-$HUNSPELL_VERSION.tar.gz \
#   && mv dictionaries-cp-$HUNSPELL_VERSION config/hunspell \
#   && rm cp-$HUNSPELL_VERSION.tar.gz
