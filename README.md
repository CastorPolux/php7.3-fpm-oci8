# Imagem Docker para o PHP 7.3 com OCI8

Imagem Docker para projetos que utilizam o PHP 7.3.18 com o servidor Apache e a extensão OCI8 para o Oracle habilitada

## Extensões PHP instaladas e habilitadas
    - bcmath
    - Core
    - ctype
    - curl
    - date
    - dom
    - fileinfo
    - filter
    - ftp
    - gd
    - hash
    - iconv
    - intl
    - json
    - libxml
    - mbstring
    - mysqlnd
    - oci8
    - openssl
    - pcre
    - PDO
    - pdo_pgsql
    - pdo_sqlite
    - Phar
    - posix
    - readline
    - Reflection
    - session
    - SimpleXML
    - soap
    - sockets
    - sodium
    - SPL
    - sqlite3
    - standard
    - tokenizer
    - xml
    - xmlreader
    - xmlwriter
    - zlib

## Iniciar Container
Para iniciar o container, basta utilizar o seguinte comando:

    docker run -d -p 8000:80 -v /endereço/para/projeto:/var/www/html domingosjunior87/php7.3-oci8

Para acessar pelo navegador, é só acessar:

    http://localhost:8000
