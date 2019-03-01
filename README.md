# Pre-Hook Commands Buildkite Plugin

This Plugin runs a set of commands as bash script as a pre-hook. This is useful when you use docker-compose on steps to set env's with a pre-hook.

*current version* v1.2.0

## Usage:

```yml
steps:
  - plugins:
    - jquick/pre-hook#v1.1.0:
      commands:
        - export MY_ENV=1234
        - |-
          if [[ -z $ENV ]]; than
            export MY_NEW_ENV=456
          fi
```

```yml
steps:
  - plugins:
    - jquick/pre-hook#v1.1.0:
      command: "export MY_ENV=345"
```

```yml
steps:
  - plugins:
    - jquick/pre-hook#v1.1.0:
      script: .buildkite/scripts/set_env
```

## Configuration
### `command`

A string to be ran during the prehook.

### `commands`

An array of strings to be ran during the prehook.

### `script`

A string of script to be ran. It defaults to use BUILDKITE_BUILD_CHECKOUT_PATH as the path prefix:

```
${BUILDKITE_BUILD_CHECKOUT_PATH}/<my_script_string>
```

If the path starts with a "/" the checkout path will be omitted.

## License

MIT
