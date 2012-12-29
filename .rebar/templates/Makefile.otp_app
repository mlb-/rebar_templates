
APP={{app_name}}
ERL_ARGS_DEPS=-pa ../$(APP)/ebin deps/*/ebin
ERL_ARGS=$(ERL_ARGS_DEPS) -s $(APP)

.PHONY: clean deps compile dev

all: compile

clean:
	@./rebar clean

deps:
	@./rebar get-deps

compile: deps
	@./rebar compile

dev: clean compile
	erl $(ERL_ARGS)
