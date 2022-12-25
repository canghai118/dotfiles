# config code-stats zsh plugin
# api key must be configured thougth env: CODESTATS_API_KEY
if [ ! -z "$CODESTATS_API_KEY" ]; then
  zplug "code-stats/code-stats-zsh", from:gitlab, use:"codestats.plugin.zsh"
fi
