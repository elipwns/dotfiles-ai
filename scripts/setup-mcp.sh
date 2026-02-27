#!/usr/bin/env bash
# Claude Code MCP server setup
# Run this on a new machine after setting the required env vars in ~/.bashrc:
#   export BAMBU_HOST=<printer ip>
#   export BAMBU_SERIAL=<serial from Bambu Studio>
#   export BAMBU_TOKEN=<LAN access code from printer Settings > Network > LAN Mode>

set -e

# Claude Desktop (Windows UWP) — edit this file manually with the mcpServers block
# Path: C:\Users\<user>\AppData\Local\Packages\Claude_pzs8sxrjxfjjc\LocalCache\Roaming\Claude\claude_desktop_config.json
# See scripts/claude_desktop_config.json for the config to merge in

echo "Setting up Claude Code MCP servers..."

# Docker MCP Gateway — routes all Docker Desktop MCP Toolkit servers into Claude Code
claude mcp add MCP_DOCKER -s user -- docker mcp gateway run

# Bambu 3D printer — requires BAMBU_HOST, BAMBU_SERIAL, BAMBU_TOKEN in environment
claude mcp add 3d-printer -s user \
  -e PRINTER_TYPE=bambu \
  -e PRINTER_HOST="$BAMBU_HOST" \
  -e BAMBU_SERIAL="$BAMBU_SERIAL" \
  -e BAMBU_TOKEN="$BAMBU_TOKEN" \
  -- docker run -i --rm \
  -e PRINTER_TYPE -e PRINTER_HOST -e BAMBU_SERIAL -e BAMBU_TOKEN \
  mcp/3d-printer

echo "Done. Restart Claude Code / VS Code to apply."
