# Write the docs

## Building the project locally

Install the `sphinx` and `sphinx-autobuild` python utilities:

``` sh
# The --user flag is to install these libraries into your user directory to
# avoid problems with your system install.
# You can also use virtualenv to create a per-directory python virtual
# environment.
$ pip install sphinx sphinx-autobuild --user
```

You have two options for viewing the docs locally. You can build the docs using `make html` and then open the `_build/html/index.html` file in your browser.

Alternatively, run `make livehtml` and navigate to `http://localhost:8000` to view the docs. The HTML is updated as you edit the Markdown source files.

## Submitting your changes

To contribute to the docs at `developers.savaslabs.com`:

1. [Fork this repository](https://github.com/savaslabs/developer-docs)
2. Make your changes
   a. Edit an existing file
   b. If creating a new file, add a line entry to `index.rst` that corresponds to the new filename that you added
3. Submit a pull request for the team to review
