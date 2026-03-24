local utils = require("lsp.utils")

vim.lsp.config("intelephense", {
  capabilities = utils.capabilities,
  on_attach = utils.on_attach,
  settings = {
    intelephense = {
      stubs = {
        "apache", "bcmath", "bz2", "calendar", "com_dotnet",
        "core", "curl", "date", "dba", "dom", "enchant",
        "exif", "fileinfo", "filter", "fpm", "ftp", "gd",
        "hash", "iconv", "imap", "intl", "json", "ldap",
        "libxml", "mbstring", "mcrypt", "meta", "mysqli",
        "oci8", "odbc", "openssl", "pcntl", "pcre", "pdo",
        "pdo_ibm", "pdo_mysql", "pdo_pgsql", "pdo_sqlite",
        "pgsql", "phar", "posix", "pspell", "readline",
        "recode", "reflection", "regex", "session", "shmop",
        "simplexml", "snmp", "soap", "sockets", "sodium",
        "spl", "sqlite3", "standard", "superglobals",
        "sysvmsg", "sysvsem", "sysvshm", "tidy", "tokenizer",
        "xml", "xmlreader", "xmlrpc", "xmlwriter", "xsl",
        "zip", "zlib",
        "laravel",   -- Laravel facades, helpers ecc.
        "phpunit",
      },
      environment = {
        phpVersion = "8.2",
      },
      files = {
        maxSize = 5000000,
      },
    },
  },
})
vim.lsp.enable("intelephense")
