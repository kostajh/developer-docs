# Write the docs

## Building the project locally

Install the `sphinx` and `sphinx-autobuild` python utilities:

``` sh
$ pip install sphinx sphinx-autobuild sphinx_rtd_theme recommonmark --user
```

Ensure that your the `sphinx` commands are accessible to your terminal
On Mac OSX, I added the following entry to my `~/.bashrc`

`export PATH=$HOME/Library/Python/2.7/bin:$PATH`

You may need to run `source ~/.bashrc` to ensure the access to the commands

<div class="admonition note">
<p class="first admonition-title">Note</p>
<p class="last">The <code>--user</code> flag is to install these libraries into your user directory to avoid problems with your system install. You can also use <code>virtualenv</code> to create a per-directory python virtual environment.</p>
</div>

You have two options for viewing the docs locally. You can build the docs using `make html` and then open the `_build/html/index.html` file in your browser.

Alternatively, run `make livehtml` and navigate to `http://localhost:8000` to view the docs. The HTML is updated as you edit the Markdown source files — no browser reload required!

## Submitting your changes

To contribute to the docs at `developers.savaslabs.com`:

1. [Fork this repository](https://github.com/savaslabs/developer-docs)
2. Make your changes
   a. Edit an existing file
   b. If creating a new file, add a line entry to `index.rst` that corresponds to the new filename that you added
3. Submit a pull request for the team to review
