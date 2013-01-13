ejectable
============

Description
-----------

Eject and close tray on your devices.

Features
--------

* Eject tray
* Close tray

Usage
-----

Setup

```ruby
require 'ejectable'
```

Use via method

```ruby
include Ejectable

eject_tray '/dev/cdrom' #=> true
```

Use device class

```ruby
device = Ejectable::Device.new '/dev/cdrom'
device.eject_tray
```

Auto closing after operation

```ruby
device.eject_tray! do
  sleep 5
end
```

Requirements
-------------

* Ruby - [1.9.2 or later](http://travis-ci.org/#!/kachick/ejectable)

Note
-----

Wrapping eject command now.
And I guess runnable only Linux. :(

Install
-------

git-repos

```bash
git clone https://github.com/kachick/ejectable.git
gem build ejectable.gemspec
gem install ./ejectable
```

rubygems.org

```bash
gem install ejectable
```

Build Status
-------------

[![Build Status](https://secure.travis-ci.org/kachick/ejectable.png)](http://travis-ci.org/kachick/ejectable)

Link
----

* [Home](http://kachick.github.com/ejectable)
* [code](https://github.com/kachick/ejectable)
* [API](http://kachick.github.com/ejectable/yard/frames.html)
* [issues](https://github.com/kachick/ejectable/issues)
* [CI](http://travis-ci.org/#!/kachick/ejectable)
* [gem](https://rubygems.org/gems/ejectable)

License
--------

The MIT X11 License  
Copyright (c) 2013 Kenichi Kamiya  
See MIT-LICENSE for further details.