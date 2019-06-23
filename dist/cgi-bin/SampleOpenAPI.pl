#!/usr/bin/env perl
#

use lib './lib';
use Mojolicious::Lite;
 
# Will be moved under "basePath", resulting in "POST /api/echo"
post "/echo" => sub {
 
  # Validate input request or return an error document
  my $c = shift->openapi->valid_input or return;
 
  # Generate some data
  my $data = {body => $c->validation->param("body")};
 
  # Validate the output response and render it to the user agent
  # using a custom "openapi" handler.
  $c->render(openapi => $data);
}, "echo";
 
# Load specification and start web server
plugin OpenAPI => {url => "data:///spec.json"};
app->start;
 
__DATA__
@@ spec.json
{
  "swagger" : "2.0",
  "info" : { "version": "0.8", "title" : "Echo Service" },
  "schemes" : [ "http" ],
  "basePath" : "/api",
  "paths" : {
    "/echo" : {
      "post" : {
        "x-mojo-name" : "echo",
        "parameters" : [
          { "in": "body", "name": "body", "schema": { "type" : "object" } }
        ],
        "responses" : {
          "200": {
            "description": "Echo response",
            "schema": { "type": "object" }
          }
        }
      }
    }
  }
}
