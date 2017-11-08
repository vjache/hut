PROJECT = hut
PROJECT_DESCRIPTION = helper library for making Erlang libraries logging framework agnostic
PROJECT_VERSION = 1.2.0

BUILD_DEPS = hexer_mk
dep_hexer_mk = git https://github.com/inaka/hexer.mk.git 1.1.0
DEP_PLUGINS = hexer_mk

ifneq (,$(filter $(shell uname -s),FreeBSD DragonFly))
make = gmake
else
make = make
endif

app:: rebar.config

include erlang.mk
