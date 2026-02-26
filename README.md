# dotfiles-ai

Personal AI configuration, rules, and development standards.

## Structure

```
dotfiles-ai/
├── ai/
│   ├── claude/          # Claude Code instructions and custom commands
│   ├── copilot/         # GitHub Copilot instructions
│   ├── gemini/          # Gemini instructions
│   └── amazon-q/        # Amazon Q rules
└── standards/
    └── TAGGING-STANDARD.md   # Terraform AWS tagging standard
```

## Usage

Add this repo as a submodule where the friction is worth it:

```bash
git submodule add git@github.com:elipwns/dotfiles-ai.git .dotfiles-ai
```

Then symlink or reference what you need:

```bash
# Example: symlink Claude instructions
ln -s .dotfiles-ai/ai/claude/CLAUDE.md CLAUDE.md
```
