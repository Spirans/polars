#!/bin/bash

# easier debugging
pwd
ls -la

rm py-polars/README.md
cp README.md py-polars/README.md
cd py-polars
rustup override set nightly-2021-03-24
export RUSTFLAGS='-C target-feature=+fxsr,+sse,+sse2,+sse3'
maturin publish \
--username ritchie46
