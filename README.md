# crAK1644/homebrew-tap

Homebrew formulae for [orchestrator-mcp](https://github.com/crAK1644/orchestrator-mcp) —
a capability-routed MCP server that sends each request to the model configured for that
kind of work.

```bash
brew tap crAK1644/tap
brew install orchestrator-mcp-server
```

Or in a `Brewfile`:

```ruby
tap "crAK1644/tap"
brew "orchestrator-mcp-server"
```

## Notes

The formula builds every Python dependency from source, including four Rust crates
(`pydantic-core`, `jiter`, `tokenizers`, `rpds-py`), so the first install takes several
minutes. If you would rather not wait:

```bash
uvx orchestrator-mcp-server
```

is the same program, installed in about a second.

This is a personal tap rather than homebrew-core, which requires a project to clear a
notability bar (75 stars, or 30 forks or watchers) before it is accepted.
