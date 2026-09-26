# Homebrew tap for `taken`

## Install

```sh
brew tap roguealg0/taken-tap
brew install taken
```

or one-shot:

```sh
brew install roguealg0/taken-tap/taken
```

`taken` checks whether a GitHub issue is already taken before you volunteer
for it. See [RogueAlg0/taken](https://github.com/RogueAlg0/taken) for docs.

Note: this installs the CLI. For the MCP server, use the PyPI optional
extra: `pip install "taken-gh[mcp]"` (or `uvx --from "taken-gh[mcp]" taken-mcp`).
