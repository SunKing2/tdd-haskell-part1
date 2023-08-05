Part 1: Making basic testing work in haskell
--------------------------------------------

###TLDR:
 - clone me somewhere git clone https://github.com/SunKing2/tdd-haskell-part1.git
 - cd myhspecproj
 - use ghcup to install (don't forget to set!) cabal 3.6.2.0 and GHC 9.28
 - cabal run myhspecproj
 - cabal test --test-show-details=streaming


We install cabal, haskell ghc, make 3 functions, make some tests, run the tests with cabal (no stack is used here). This is Part 1.  (Part 2 is using HUnit, part 3 is using HSpec.)

### Install cabal 3.6.2.0 and GHC 9.28

Install ghcup, a version manager for the compiler (GHC), cabal, and everything Haskell. Don't waste your time with making vscode work with it.

#### Install requirements for ghcup (example for Ubuntu)

```bash
    sudo apt -y install build-essential curl libffi-dev libffi7 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5
```
    

#### Install ghcup 0.1.19.4

I modified the suggested install so it's unattended. This one doesn't install stack, doesn't install hls, and modifies your .bashrc

```bash
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | BOOTSTRAP_HASKELL_ADJUST_BASHRC=1 BOOTSTRAP_HASKELL_NONINTERACTIVE=1 BOOTSTRAP_HASKELL_INSTALL_NO_STACK=1 BOOTSTRAP_HASKELL_INSTALL_HLS=0  sh
```
    

#### Tips for ghcup (for the future):

*   when you run it, press `a` to show all version
*   when you install a version with `i`, make sure you set it with `s` coz it won't tell you to do so!!!

#### See what's installed

```bash
    cd ~
    du -h -d1 -L .ghcup
    ghci --version
    cabal --version
    runhaskell --version
```
    

If they don't say 9.28, 3.6.2.0, 9.28, you better stop and fix it, coz we'll be using cabal, and there are 1 million problems unless you have the same version of cabal and ghc, and you'll never forgive yourself for ignoring this advice.

##### Problems?

*   one or more doesn't run at all: Stop this tutorial and don't waste any more time here. You've been warned.
*   Wrong versions in one or more? Simple, it doesn't matter what system you are on, this will work: `ghcup tui` then press `a` then select the version, press `i`, then press `s`. Repeat.

#### Run the main program

```bash
cabal run myhspecproj
```

#### Run the testing

Run the testing, and it should show that three tests ran, and passed. (It might also give a summary saying that the whole lot of them passed)

```bash
cabtest
```
    

Thanks for reading. Make sure you like me! :)