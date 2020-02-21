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

.DEFAULT_GOAL := help

.PHONY: help
#	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
help:           ## Show this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


# Everything below is an example

.PHONY: target00 ## This message will show up when typing 'make help'
target00:       ## This message will show up when typing 'make help'
	@echo does nothing

.PHONY: target01
target01:       ## This message will also show up when typing 'make help'
	@echo does something

# Remember that targets can have multiple entries (if your target specifications are very long, etc.)
.PHONY: target02
target02:       ## This message will show up too!!!
target02: target00 target01
	@echo does even more
