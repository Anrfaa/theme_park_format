FROM httpd:2.4
COPY . /usr/local/apache2/htdocs/
COPY xslt.conf /usr/local/apache2/conf/xslt.conf