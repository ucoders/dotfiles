#!/usr/bin/env bash

# This file is executed to install apps via brew

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade
 
# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)


# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install `wget` with IRI support.
brew install wget --with-iri



# Remove outdated versions from the cellar.
brew cleanup
