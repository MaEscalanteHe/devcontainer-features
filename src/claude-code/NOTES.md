# Using Claude Code in devcontainers

## Installation

This feature installs Claude Code using the [native installer](https://claude.ai/install.sh). No additional features or dependencies need to be added to your devcontainer configuration.

```json
"features": {
    "ghcr.io/anthropics/devcontainer-features/claude-code:2": {}
}
```

## Upgrading from version 1

Version 1 installed Node.js when it was missing. Version 2 no longer does, so if you relied on this feature for `node` and `npm`, add the Node.js feature:

```json
"features": {
    "ghcr.io/devcontainers/features/node:1": {},
    "ghcr.io/anthropics/devcontainer-features/claude-code:2": {}
}
```

## Alpine Linux

On Alpine-based containers, this feature automatically installs the required additional dependencies: `libgcc`, `libstdc++`, and `ripgrep`.

## Deprecation notice

The previous NPM-based installation method (`npm install -g @anthropic-ai/claude-code`) has been deprecated. This feature now uses the native installer. For more information, see the [official documentation](https://code.claude.com/docs/en/getting-started#npm-installation-deprecated).
