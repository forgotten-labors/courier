name: 'courier'

description: 'npm packages in CoffeeScript (package.coffee -> package.json)'

keywords: ['courier', 'coffee', 'npm', 'package', 'json']

version: (require 'fs').readFileSync './VERSION', 'utf8'

author: 'feisty <courier@feisty.io> (http://feisty.io)'

licenses: [
  type: 'FEISTY'
  url: 'http://github.com/feisty/license/raw/master/LICENSE'
]

contributors: [
  'Nicholas Kinsey <pyro@feisty.io>'
  'Isaac Z. Schlueter <i@izs.me>'
  'Mathieu Ravaux <mathieu.ravaux@gmail.com>'
  'Jacob Evans <jacob@dekz.net>'
]

repository:
  type: 'git'
  url: 'http://github.com/feisty/courier.git'
  private: 'git@github.com:feisty/courier.git'
  web: 'http://github.com/feisty/courier'

bugs:
  mail: 'courier@feisty.io'
  web: 'http://github.com/feisty/courier/issues'

bin: './bin/courier'

main: 'courier.coffee'

dependencies:
  'coffee-script': '~1.6.3'
  optimist: '~0.5.2'
  pkginfo: '~0.3.0'

engines:
  node: '~0.10.10'
  npm: '~1.2.25'

preferGlobal: true