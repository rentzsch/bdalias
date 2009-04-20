# BDAlias

## What is BDAlias?

BDAlias is a simple Cocoa class for dealing with alias records, a form of persistent file reference that is more robust and provides a better user experience than a textual path. Macintosh applications should always use alias records for persistent file references, and often for exchanging references to files with other applications.

## How do I use BDAlias?

"You've got the source."

Seriously though, you create an instance of `BDAlias` using one of the `aliasWithXXX:` messages whenever you need to keep a persistent reference to a file around. If you're interacting with the rest of Cocoa, you'll probably use either `aliasWithPath:` or `aliasWithPath:relativeToPath:` When you're ready to "resolve" this reference to actually access a file, just send it a `fullPath` or `fullPathRelativeToPath:` message.

Since the whole point of aliases is to persistently reference a file, you can easily convert an alias to an `NSData` object. Sending a `BDAlias` the `aliasData` message will return an autoreleased instance of `NSData` containing the record data ready to store wherever you can store an `NSData`.

## Version History

**1.2.2 (Apr 20 2009)**

* [CHANGE] Changed to MIT License. ([Chris Hanson](https://twitter.com/eschaton/status/1567585805))

**1.2.1 (Apr 19 2009)**

* [FIX] Tweak for 64-bit compatibility. ([Alexander Rauchfuss](http://github.com/rentzsch/bdalias/commit/6c0106b2085b92f2c3212a2ec47e6bf5af43acbb))

**1.2 (Apr 9 2007)**

* [NEW] Add equality methods (Daniel Jalkut).
* [CHANGE] Move project to http://rentzsch.com/trac.

**1.1 (Oct 6 2006)**

* Add `NSCoding` protocol support to ease persisting alias data. (rentzsch)
* Add methods that return `NSError` objects. (rentzsch)

**1.0 (2002)**

* Initial release.

##License

BDAlias is now [released under the MIT License](http://opensource.org/licenses/mit-license.php).