Backstage 2.0
=============

Backstage 2.0 is the eventual replacement to the original Backstage platform.

It is comprised of multiple Rails Engines, including the core and the individual
storefronts. These are all wrapped within a `Rails::Application` that provides
the familiar configuration you're used to in normal Rails app.

Core
----

The core is responsible for the various shared libraries that will be used by
the storefronts. As a storefront developer the majority of coding should be
done in the storefront specific folder, not in the core. As storefronts begin to
share functionality it is then the core teams responsibility to abstract said
functionality out into the core. There should be __NO__ storefront specific
business logic added to the core. It is important to note that that the core
itself is actually a gem. This will help us down the road in that we can version
it. This way each storefront could theoretically use its own version of the
core.

Storefronts
-----------

Each storefront can have its own controllers, models, routes, etc. Almost
anything a normal Rails application can have, a storefront can have as well.
This is mostly due in part to the inherent nature of Rails Engines.


Routing
-------

The root level `config` folder should be mostly left alone. Configuration should
either be done in the specific storefront or the core. This includes the
routes.rb found there. You should instead use the routes.rb found in the
storefront folder or `core/config/routes.rb` if you need to make an application
wide change.

Routes cascade down in a way that storefront specific routes always take
precedence but then fall back to the core. The key to the routing functionality
is the `Backstage::Core::Engine#register_routes` method. It takes a symbol or
string representing the storefront and a block containing the routes themselves.
These routes are prepended to core routes and nested within a `constraints`
block.

The `constraints` DSL method can take a class as its first argument. This class
needs to implement a `matches?` method that returns true or false depending on
if the routes within the constraint should apply to that request. The example
implementation of this can be found in `core/lib/backstage/storefront_router.rb`.

At the moment the class takes into account whether the `storefront` param or
subdomain matches any registered storefront. This will more than likely need to
be extended down the road to meet our needs.
See http://guides.rubyonrails.org/routing.html#advanced-constraints for more
info on constraints.

Setup
-----
__Requirements:__

* Ruby (>= 1.9.3)
* Bundler
* A Javascript Runtime - For Rails asset pipeline (This is builtin on OSX)
* Git (To get the code)


__Steps:__

1. Clone repository – `git clone git@github.com:Tukaiz/backstage_build2.git`
2. `cd` into the app directory – `cd backstage_build2`
3. `bundle install`
4. `rake db:setup`
5. `bundle exec rails server`

Then you can open http://localhost:3000/products?storefront=pepsi to see
routing in action
