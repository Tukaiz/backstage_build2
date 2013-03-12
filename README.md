Backstage 2.0
=============

Backstage 2.0 is the eventual replacement to the original Backstage platform.

It is comprised of multiple Rails Engines, including the core and the individual storefronts.
These are all wrapped within a regular `Rails::Application` that provides the usual configuration you'll find in a normal Rails app.

The core is responsible for the various shared libraries that will be used by the storefronts.
As a developer the majority of the code should be done in the storefront specific folder not in the core.
As storefronts begin to share functionality it is then the core teams responsibility to abstract said functionality out into the core.
There should be __NO__ business logic specific to a storefront added to the core.

Each storefront can have its own controllers, models, routes, etc.
Anything that a normal Rails application can have, a storefront can have as well.
This is due to the inherint nature of Rails Engines.
Routes cascade down in a way that storefront specific routes always take presedence and then fall back to the core.

The root level `config` folder should be mostly left alone. Configuration should either be done in the specific storefront or the core.
This includes the routes.rb found there. You should instead use the routes.rb found in the storefront folder or `core/config/routes.rb` if you need to make an application wide change.

It is important to note that that the core itself is actually a gem. This will help us down the road in that we can version it.
This way each storefront could theoreticly use its own version of the core.

The key to the routing functionality is the `Backstage::Core::Engine#register_routes` method.
It takes a symbol or string repreistenting the storefront and a block containing the routes themselves.
These routes are prepended to core routes nested inside a `constraints` block. The `constraints` DSL method can take a class as its first argument.
This class needs to impliment a `matches?` method that returns true or false depending on if the routes within the constraint should apply to that request.
The example implimention of this can be found in `core/lib/backstage/storefront_router.rb`.
At the moment it takes into account if the `storefront` param or subdomain matches any regeistered storefront.
This will most likely need to be extended down the line to meet our needs.
See http://guides.rubyonrails.org/routing.html#advanced-constraints for more info on constraints.
