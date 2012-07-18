# rebar templates
These are my custom [rebar](https://github.com/basho/rebar) templates.

## Install
I use [ghar](https://github.com/philips/ghar) to "install" .rebar to ~/ by:

    ghar add git@github.com:mlb-/rebar_templates && ghar install

## Usage
    rebar create template=gen_srv module=my_server

# Contents
 - `gen_server` template
 - rebar-ized OTP app (setup with
   [esupervisor](https://github.com/spawngrid/esupervisor) and
   [sync](https://github.com/rustyio/sync))

vim: ft=markdown et
