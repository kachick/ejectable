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

eject_tray
```

Use device class

```ruby
device = Ejectable::Device.new
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

* Ruby - [2.5 or later](http://travis-ci.org/#!/kachick/ejectable)

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