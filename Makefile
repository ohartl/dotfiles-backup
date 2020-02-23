SHELL := /bin/bash

CONFIG_SUFFIX	:=".yml"
BASE_CONFIG		:="base"

META_DIR		:="meta"
CONFIG_DIR		:="configs"
PROFILES_DIR	:="profiles"

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[-1]}")" && pwd)"

BIN_DOTBOT		:="${BASE_DIR}/modules/dotbot/bin/dotbot"
BIN_OSDETECT	:="${BASE_DIR}bin/osdetection"

# ---------------

QUIET=false
VERBOSE=0
#while getopts :hqv opt 2>/dev/null; do
#    case $opt in
#    h)
#        show_help
#        exit
#        ;;
#    q) QUIET=true ;;
#    v) VERBOSE=1 ;;
#    :)
#        echo "Missing argument for option -$OPTARG"
#        exit 1
#        ;;
#    ?)
#        echo "Unknown option -$OPTARG"
#        exit 1
#        ;;
#    esac
#done

HELP_FUNC = \
    %help; \
    while(<>) { \
        if(/^([a-z0-9_-]+):.*\#\#(?:@(\w+))?\s(.*)$$/) { \
            push(@{$$help{$$2}}, [$$1, $$3]); \
        } \
    }; \
    print "usage: make [target]\n\n"; \
    for ( sort keys %help ) { \
        print "$$_:\n"; \
        printf("  %-20s %s\n", $$_->[0], $$_->[1]) for @{$$help{$$_}}; \
        print "\n"; \
    }

help: ##@miscellaneous Show this help.
	@perl -e '$(HELP_FUNC)' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

###############################################################################

run: ## This message will show up when typing 'make help'
	python3 /usr/bin/ansible-playbook

target01: ## This message will also show up when typing 'make help'
	@echo does something $(value )

# Remember that targets can have multiple entries (if your target specifications are very long, etc.)
target02:  ## This message will show up too!!!
target02: target00 target01
	@echo does even more
