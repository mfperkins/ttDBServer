# TechTest #1: Creating a Database Server

User Spec
---
We received this specification:

> Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey. During your [mock] interview, you will pair on saving the data to a file.

I delivered it using Ruby / Sinatra with all testing in RSpec and Rack::Test.

Get Started
---
1. Fork or clone this repo `git clone https://github.com/mfperkins/ttDBServer`
2. Change into your new directory `cd ttDBServer`
3. Run `bundle` (or `gem install bundler` if you don't have bundle)
4. Run `rspec` to see all tests passing
5. Run `rackup` and open your browser at `http://localhost:9292/` (or whatever port you specified)
6. Navigate to `http://localhost:9292/set` and add a query string on the end with your key-value pair (e.g. `http://localhost:9292/set?myDog=Beagle`)
7. Navigate to `http://localhost:9292/get` and add a query string with `key=` and the key you are looking for (e.g. `http://localhost:9292/get?key=myDog`)
