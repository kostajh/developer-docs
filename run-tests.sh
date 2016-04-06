#!/usr/bin/env bash
bundle exec mdl . -c .mdlrc --git-recurse -v
make html
bundle exec rake test -f Rakefile -v
