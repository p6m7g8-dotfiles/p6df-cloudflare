# P6's POSIX.2: p6df-cloudflare

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Functions

#### cli

##### p6df-cloudflare/lib/cli/status.sh

- `p6df::modules::cloudflare::warp::status::connect()`
- `p6df::modules::cloudflare::warp::status::disconnect()`
- `p6df::modules::cloudflare::warp::status::show()`

##### p6df-cloudflare/lib/cli/vnet.sh

- `p6df::modules::cloudflare::warp::vnet::current()`
- `p6df::modules::cloudflare::warp::vnet::list()`
- `p6df::modules::cloudflare::warp::vnet::set(vnet)`
  - Args:
    - vnet - 
- `str vnet_id = p6df::modules::cloudflare::warp::vnet::_name_to_id(name)`
  - Args:
    - name - 

#### p6df-cloudflare

##### p6df-cloudflare/init.zsh

- `p6df::modules::cloudflare::deps()`
- `p6df::modules::cloudflare::external::brew()`
- `p6df::modules::cloudflare::init(_module, dir)`
  - Args:
    - _module - 
    - dir - 

#### p6df-cloudflare/lib

##### p6df-cloudflare/lib/cli.sh

- `p6df::modules::cloudflare::warp::cli(cmd, ...)`
  - Args:
    - cmd - 
    - ... - 

## Hierarchy

```text
.
├── init.zsh
├── lib
│   ├── cli
│   │   ├── status.sh
│   │   └── vnet.sh
│   └── cli.sh
└── README.md

3 directories, 5 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
