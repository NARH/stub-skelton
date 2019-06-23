#!/usr/bin/env perl
#

use lib './lib';
use Mojolicious::Lite;
 
post "/auth" => sub {
  my $c = shift->openapi->valid_input or return;
  my $data = {body => $c->validation->param("body")};
  $c->render(openapi => $data);
}, "auth";

post "/authCancel" => sub {
  my $c = shift->openapi->valid_input or return;
  my $data = {body => $c->validation->param("body")};
  $c->render(openapi => $data);
}, "authCancel";

post "sales" => sub {
  my $c = shift->openapi->valid_input or return;
  my $data = {body => $c->validation->param("body")};
  $c->render(openapi => $data);
}, "sales";


post "salesCancel" => sub {
  my $c = shift->openapi->valid_input or return;
  my $data = {body => $c->validation->param("body")};
  $c->render(openapi => $data);
}, "salesCancel";

post "show" => sub {
  my $c = shift->openapi->valid_input or return;
  my $data = {body => $c->validation->param("body")};
  $c->render(openapi => $data);
}, "show";

# Load specification and start web server
plugin OpenAPI => {url => "data:///spec.json"};
app->start;
 
__DATA__
@@ spec.json
{
    "swagger" : "2.0"
  , "info" : { "version": "0.1", "title" : "Stub Service" }
  , "schemes" : [ "http", "https"]
  , "basePath" : "/api"
  , "paths" : {
      "/auth" : {
        "post": {
          "summary" : ""
        , "description" : ""
        , "x-mojo-name" : "auth"
        , "parameters" : [
            {"in" : "body", "name" : "body", "schema" : {"type" : "object"}}
          ]
        , "responses" : {
            "200" : {
              "description": "OK"
            , "schema" : {"type" : "object"}
            }
          , "400" : {
              "description" : "error"
            , "schema" : {"type" : "object"}
            }
          , "500" : {
              "description" : "server error"
            , "schema" : {"type" : "object"}
            }
          }
        }
      }
    , "/authCancel" : {
        "post": {
          "summary" : ""
        , "description" : "" 
        , "x-mojo-name" : "authCancel"
        , "parameters" : [
            {"in" : "body", "name" : "body", "schema" : {"type" : "object"}}
          ]
        , "responses" : {
            "200" : {
              "description": "OK"
            , "schema" : {"type" : "object"}
            }
          , "400" : {
              "description" : "error"
            , "schema" : {"type" : "object"}
            }
          , "500" : {
              "description" : "server error"
            , "schema" : {"type" : "object"}
            }
          }
        }
      }
    , "/sales" : {
        "post": {
          "summary" : ""
        , "description" : "" 
        , "x-mojo-name" : "sales"
        , "parameters" : [
            {"in" : "body", "name" : "body", "schema" : {"type" : "object"}}
          ]
        , "responses" : {
            "200" : {
              "description": "OK"
            , "schema" : {"type" : "object"}
            }
          , "400" : {
              "description" : "error"
            , "schema" : {"type" : "object"}
            }
          , "500" : {
              "description" : "server error"
            , "schema" : {"type" : "object"}
            }
          }
        }
      }
    , "/salesCancel" : {
        "post": {
          "summary" : ""
        , "description" : "" 
        , "x-mojo-name" : "salesCancel"
        , "parameters" : [
            {"in" : "body", "name" : "body", "schema" : {"type" : "object"}}
          ]
        , "responses" : {
            "200" : {
              "description": "OK"
            , "schema" : {"type" : "object"}
            }
          , "400" : {
              "description" : "error"
            , "schema" : {"type" : "object"}
            }
          , "500" : {
              "description" : "server error"
            , "schema" : {"type" : "object"}
            }
          }
        }
      }
    , "/show" : {
        "post": {
          "summary" : ""
        , "description" : "" 
        , "x-mojo-name" : "show"
        , "parameters" : [
            {"in" : "body", "name" : "body", "schema" : {"type" : "object"}}
          ]
        , "responses" : {
            "200" : {
              "description": "OK"
            , "schema" : {"type" : "object"}
            }
          , "400" : {
              "description" : "error"
            , "schema" : {"type" : "object"}
            }
          , "500" : {
              "description" : "server error"
            , "schema" : {"type" : "object"}
            }
          }
        }
      }
  }
}
