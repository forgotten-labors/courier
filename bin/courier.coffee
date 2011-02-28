#!/usr/bin/env coffee
fs            = require 'fs'
path          = require 'path'
{spawn, exec} = require 'child_process'

# npm
CoffeeScript = require 'coffee-script'
{OptionParser} = require 'coffee-script/lib/optparse'

usage = '''
  Usage:
    courier [OPTIONS] [PATH_TO_APP = "."]
'''

switches = [
  ['-h', '--help', 'Displays this snazzy help message']
  
  ['-v', '--version', 'Display courier version']
  
  ['-p', '--print', 'Prints the result to stdout.']
  ['-s', '--silent', 'Shh. Do not print anything to stdout.']
  
  # ['-w', '--watch', 'Watches and recompiles on changes.']
  
  # ['-i', '--in [DIR]', 'Directory to get package.coffee from.']
  # ['-o', '--out [DIR]', 'Directory to put package.json in.']
]

parser = new OptionParser switches, usage
options = parser.parse process.argv[2...]
args = options.arguments
delete options.arguments

if options.help or process.argv.length is 0
  console.log parser.help()
  process.exit 0

if options.version
  console.log fs.readFileSync './VERSION', 'utf8'
  process.exit 0

deliver = (options) ->
  fs.readFile 'package.coffee', 'utf8', (error, coffee) ->
    throw error if error

    js = CoffeeScript.compile "return #{coffee}"
    json = JSON.stringify eval(js), null, 2

    fs.writeFile 'package.json', json, ->
      console.log json if options.print

if args.length <= 0
  args.push '.'

if args.length > 0
  deliver options