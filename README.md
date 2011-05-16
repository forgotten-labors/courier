	                          ______            
	________________  ___________/_/____________
	_  ___/  __ \  / / /_  ___/_  /_  _ \_  ___/
	/ /__ / /_/ / /_/ /_  /   _  / /  __/  /    
	\___/ \____/\____/ /_/    /_/  \___//_/     

package.coffee -> package.json (dynamic npm packages in CoffeeScript)

# Motivation
Compiling a package.coffee file to a package.json isn't as simple as it seems.

Since CoffeeScript wraps objects in order to make them assignable statements. courier will love and hold you through the night. Oh and it will cleanup the generated JavaScript to keep npm happy ^w^

# Installation
    npm -g install courier

### Why a global install?
Just because.
  
# Usage
Using courier couldn't be simpler.

1. Write your npm package ("package.json") in CoffeeScript and save as package.coffee.
2. Run `courier` against your project.

You will now see package.json alongside package.coffee in the root of your project; ready to be installed or linked with `npm`.

## Options
Use the `-p (--print)` flag for a noisy delivery.

# Dynamicism
Since courier utilises dynamic CoffeeScript and not static JSON, npm packages can be made dynamic.

For instance, the following package.coffee...

    name: 'node-foo'

    description: 'extends node with foo'
    
    date: new Date
    
...would produce the following package.json...

    {
      "name": "node-foo",
      "description": "extends node with foo",
      "date": "2011-02-23T09:25:14.491Z"
    }

For a concrete example of this behaviour, look no further than the package.coffee of this very project; where the VERSION file is read to dynamically version the npm package.