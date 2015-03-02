	                          ______            
	________________  ___________/_/____________
	_  ___/  __ \  / / /_  ___/_  /_  _ \_  ___/
	/ /__ / /_/ / /_/ /_  /   _  / /  __/  /    
	\___/ \____/\____/ /_/    /_/  \___//_/     

npm packages in CoffeeScript (package.coffee -> package.json)

# Installation
    npm -g install courier

# Motivation
Compiling a package.coffee file to a package.json isn't as simple as it seems
  
# Usage
1. Write your npm package `package.json` in CoffeeScript and save as `package.coffee`
2. Run `courier` against your project.

`package.json` is now alongside `package.coffee`; ready to be installed or linked with `npm`.

## Options
Use the `-p (--print)` flag for a noisy delivery.

# Dynamicism
Since courier utilises CoffeeScript and not static JSON, npm packages can be made dynamic.

For instance, the following package.coffee...

```CoffeeScript
name: 'node-foo'

description: 'extends node with foo'

date: new Date
```
    
...would produce the following package.json...

```JavaScript
{
  "name": "node-foo",
  "description": "extends node with foo",
  "date": "2011-02-23T09:25:14.491Z"
}
```

For a concrete example of this behaviour, look no further than the package.coffee of this very project. Hint: The VERSION file is read to dynamically version the npm package.