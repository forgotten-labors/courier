name: 'courier'

description: 'npm packages in CoffeeScript (package.coffee -> package.json)'

keywords: ['courier']

version: require('fs').readFileSync('./VERSION', 'utf8')

author: 'feisty <courier@feisty.co> (http://feisty.co)'

licenses: [
  type: 'FEISTY'
  url: 'http://github.com/feisty/license/raw/master/LICENSE'
]

contributors: [
  'Nicholas Kinsey <pyro@feisty.co>'
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
  mail: 'courier@feisty.co'
  web: 'http://github.com/feisty/courier/issues'

bin:
  courier: './bin/courier'

main: 'courier'

dependencies:
  'coffee-script': '~1.3.1'
  optimist: '~0.3'

engines:
  node: '~0.6'
  npm: '~1.1'

preferGlobal: true