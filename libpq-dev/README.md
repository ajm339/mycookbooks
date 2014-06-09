# libpq-dev cookbook

Use this cookbook if you plan to deploy a Rails application that uses Postgresql. This library is required for the `pg` gem to work whether or not Postgresql is installed.

# Usage

Include this cookbook in your `Berksfile`.

````
cookbook 'libpq-dev', git: 'aerogami-cookbooks/libpq-dev'
````

Install the cookbook.

````
berks install
````

Add to your chef kitchen and use as desired.

# Requirements

This cookbook requires `apt`.

# Author

Mohamad El-Husseini

www.aerogami.com.br
