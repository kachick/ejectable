ejectable
============

* ***This repository is archived***
* ***No longer maintained***
* ***All versions have been yanked from https://rubygems.org/ for releasing valuable namespace for others***

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

* Ruby - 2.5 or later

License
--------

The MIT X11 License  
Copyright (c) 2013 Kenichi Kamiya  
See MIT-LICENSE for further details.