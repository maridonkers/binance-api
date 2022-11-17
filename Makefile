PROJECT="binance-api"

all: help

# NixOS: always use `make develop` first, before other commands.
develop:
	@nix-shell

edit:
	emacs &

build:
	cabal build

rebuild:
	cabal clean
	cabal build

# Generate source distribution tarball.
sdist:
	cabal sdist

clean:
	cabal clean

# The double dollar is because of Makefile syntax.
ls:
	find . -type f -name 'binance-api*.tar.gz' -ls

repl:
	cabal repl

devbuild:
	ag --haskell -l | entr make build

lint:
	ag --haskell -l | xargs hlint -v

format:
	ag --haskell -l | xargs ormolu -i

help:
	@grep '^[^ 	#:]\+:' Makefile | sed -e 's/:[^:]*//g'
	echo "Use make -s for silent execution (e.g. make -s ls)"
