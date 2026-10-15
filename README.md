# Dotfiles - Alias Atlas

Personal Termux/Bash/Vim configurations with a searchable static alias reference.

## Browser reference

Search aliases by name or command, filter by category, copy alias names or expanded commands, and export the shown list as JSON. The site never executes commands, installs packages or changes shell files. Only theme is saved. Names and commands are rendered as text.

## Alias fix

The old `.scripts/aliases` defined `cdddd` twice. The corrected navigation sequence is:

| Alias | Command |
| --- | --- |
| cdd | cd ../ |
| cddd | cd ../../ |
| cdddd | cd ../../../ |
| cddddd | cd ../../../../ |
| cdddddd | cd ../../../../../ |

This changes the previously masked cdddd/cddddd behavior to consistent levels. Other aliases are unchanged. `top` needs htop and `vi` needs Vim; color flags depend on tool support. The reference does not guarantee every command works on every OS.

## Original configuration caveats

The original install/setup scripts remain for history and manual inspection. **Do not run them blindly.** They force-copy configuration, target Termux/Android paths, install packages, source scripts and change folders. They are not portable or rollback-safe and have not been tested on physical Android hardware. This release does not run or certify them. Back up existing configuration and inspect all commands before any manual installation.

Only the aliases file was sourced in an isolated noninteractive Bash process for tests. Other scripts were not sourced. `bash -n` checks installer syntax only, not runtime safety.

## Test and build

Node 22, Bash:

```sh
npm test
npm run build
python3 -m http.server 8000 --directory dist
```

12 tests cover exact alias fixture parity, uniqueness, actual Bash registration, navigation levels, search/filter/empty behavior, limits, no mutation, syntax checks and main-only workflow. GitHub Pages serves the reference, not a terminal. Branch pushes do not build or deploy.

Project license retained. Lucide icons ISC (`LICENSE-icons`). UI references: https://devdojo.com/pines/docs/button and https://shoogle.dev/.
