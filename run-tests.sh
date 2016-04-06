#!/usr/bin/env bash
set -e
bundle exec mdl . -c .mdlrc --git-recurse -v
make html
bundle exec rake test -f Rakefile
