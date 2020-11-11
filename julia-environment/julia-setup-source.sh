#!/bin/bash
set -eu -o pipefail

sudo dnf install libatomic python gfortran perl wget m4 cmake pkg-config

setup_dir=$PWD
cd $HOME
git clone git://github.com/JuliaLang/julia.git
git checkout v1.4.2
make


sudo dnf install hdf5-devel
$HOME/julia/julia $setup_dir/julia-setup.jl
