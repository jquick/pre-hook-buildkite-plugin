# Pre-Hook Commands Buildkite Plugin

This Plugin runs a set of commands as bash script as a pre-hook. This is useful when you use docker-compose on steps to set env's with a pre-hook.

## Usage:

```yml
steps:
  - plugins:
    - jquick/pre-hook#v1.0.0:
      commands:
        - export MY_ENV=1234
        - |-
          if [[ -z $ENV ]]; than
            export MY_NEW_ENV=456
          fi
```

## Configuration

### `commands`

An array of strings to be ran during the prehook.

## License

MIT
