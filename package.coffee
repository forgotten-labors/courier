name: 'courier'

description: 'package.coffee -> package.json (dynamic npm packages in CoffeeScript)'

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
  mail: 'courier@feistystudios.com'
  web: 'http://github.com/feisty/courier/issues'

bin:
  courier: './bin/courier'

main: 'courier'

dependencies:
  'coffee-script': '>= 1.1.1 < 1.2'
  optimist: '>= 0.2.4 < 0.3'

engines:
  node: '>= 0.4.9 < 0.5'
  npm: '>= 1.0.15 < 1.1'

preferGlobal: true