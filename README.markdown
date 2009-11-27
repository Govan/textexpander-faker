TextExpander Faker
=============

A Snippet and supporting Ruby Scripts for generating fake user data.  Basically, this is just a TextExpander conduit to the
[Faker Gem](http://faker.rubyforge.org/).

Installation
=============
You'll need the faker gem installed, obviously...

	$ sudo gem install faker

Import Faker.textexpander into TextExpander.  Move the rest of the files into ~/Tools/TextExpanderScripts/textexpander-faker/
or update the Snippets to point to wherever you've put them.

Usage
=============
In any application type:

*   "fake:name" to insert a fake name
*   "fake:pc" to insert a fake (but valid) UK postcode
*   "fake:zip" to insert a fake (but valid) US zipcode
*   "fake:tel" to insert a fake telephone number
*   "fake:email" to insert a fake email address.

The email address is a special case.  I have it pointing to __unique-marker__@test.leftbrained.co.uk, which is a catch all address I can access,
but rarely do.

Command Line Usage
============
I originally used the Ruby script for generating fixture data in Bash.  You can still do this...

	$ ./fake.rb name
	Stevie Raynor
	$ ./fake.rb postcode
	CB13 3QW
	$ fake.rb "#name <#email>"
	Selena Jenkins <125935807239340@test.leftbrained.co.uk>

Future Features
===============
Properly formatted telephone numbers with area codes for the UK.
Valid Visa/Mastercard data
Email address that are valid for throw-away domain services.


Copyright (c) 2009 Gavin Montague, released under the MIT license