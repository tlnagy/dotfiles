# dotfiles

This is a collection of configuration files for my development environment on OS X.

## Usage

Clone the repository into your root directory (~) and name it something (like `dotfiles`). Change the directory into the newly created folder, followed by `git submodule init` and `git submodule update` and then run the `make` command. This will setup the necessary system links and install the vim plugins.

*Note: There might be subtle issues if you already have a `.vimrc`, `.ipython/`, etc. I would recommend making a backup and removing these files before running `make`.*

Happy hacking!
