# custom rebar templates

These are my custom [rebar](https://github.com/basho/rebar) templates. Shared
so others may find ease of use or provide suggestions for my enlightenment.

## Install

I use [ghar](https://github.com/philips/ghar) to "install" .rebar to ~/ by:

    ghar add git@github.com:mlb-/rebar_templates && ghar install

Alternatively, you can just copy the contents of the templates directory to
your ~/.rebar/templates folder.

# Contents

 - rebar-ized OTP app (setup with
   [esupervisor](https://github.com/spawngrid/esupervisor),
   [sync](https://github.com/rustyio/sync) and, least but not last, a local
   copy of [rebar](https://github.com/basho/rebar)). Default .app.src file has
   `{vsn, git}`, so either remove, specify, or `git init && git add . && git
   commit -m "Initial commit."` before running `make`.

    `rebar create template=otp_app app_name=my_app`

 - `gen_server` template. Creates a `my_server.erl` file where ever invoked,
   hence the following example would take place in a "src" folder.

    `../rebar create template=gen_srv module=my_server`


vim: et
