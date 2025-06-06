#!/bin/bash
# rename-exo.sh - Migration script for existing think-center users
# This script renames 'exo' to 'fuzzy-memory' and updates all references

echo "🔄 Think Center Migration: exo → fuzzy-memory"
echo "============================================"

# Check if we're in think-center directory
if [ ! -f "boot.md" ]; then
    echo "❌ Error: Not in think-center directory. Please run from think-center root."
    exit 1
fi

# Check if exo exists
if [ ! -d "exo" ]; then
    echo "❌ Error: 'exo' directory not found. Already migrated?"
    exit 1
fi

# Check if fuzzy-memory already exists
if [ -d "fuzzy-memory" ]; then
    echo "❌ Error: 'fuzzy-memory' already exists. Already migrated?"
    exit 1
fi

echo "✅ Pre-flight checks passed"
echo ""
echo "This will:"
echo "1. Rename 'exo' directory to 'fuzzy-memory'"
echo "2. Update all references in .md files"
echo "3. Commit the changes"
echo ""
read -p "Continue? (y/n) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Migration cancelled."
    exit 0
fi

# Perform the rename
echo "📁 Renaming directory..."
git mv exo fuzzy-memory

# Update references in all markdown files
echo "📝 Updating references in files..."
find . -name "*.md" -not -path "./.git/*" -exec sed -i '' 's/\/exo\//\/fuzzy-memory\//g' {} \; 2>/dev/null || \
find . -name "*.md" -not -path "./.git/*" -exec sed -i 's/\/exo\//\/fuzzy-memory\//g' {} \;

find . -name "*.md" -not -path "./.git/*" -exec sed -i '' 's/the exo\//the fuzzy-memory\//g' {} \; 2>/dev/null || \
find . -name "*.md" -not -path "./.git/*" -exec sed -i 's/the exo\//the fuzzy-memory\//g' {} \;

find . -name "*.md" -not -path "./.git/*" -exec sed -i '' 's/Your exo\//Your fuzzy-memory\//g' {} \; 2>/dev/null || \
find . -name "*.md" -not -path "./.git/*" -exec sed -i 's/Your exo\//Your fuzzy-memory\//g' {} \;

# Create a brief explanation
echo "📄 Creating fuzzy-memory README..."
cat > fuzzy-memory/README.md << 'EOF'
# Fuzzy Memory

This directory (formerly `exo/`) represents the bridge between ephemeral thinking and persistent knowledge.

## What is Fuzzy Memory?

- **Ephemeral**: Session artifacts that may not persist
- **Fuzzy**: Evolving patterns and perspectives that aren't yet stable
- **Persistent**: Captured insights that deserve git tracking

## Structure

- `patterns/` - Discovered thinking patterns
- `perspectives/` - Custom perspectives that emerged through use
- `protocols/` - Orchestration methods that work
- `findings/` - Consolidated insights from sessions
- `updates/` - Evolution log of the system

## The Concept

Think of fuzzy-memory as your cognitive workspace:
- Claude manages it during sessions
- Git tracks it between sessions
- You decide what graduates to permanent documentation

This isn't just storage - it's where thoughts evolve from fuzzy to clear.
EOF

echo "✅ Migration complete!"
echo ""
echo "Next steps:"
echo "1. Review the changes: git status"
echo "2. Commit when ready: git commit -m 'refactor: rename exo to fuzzy-memory for conceptual clarity'"
echo "3. Continue using think-center as before!"
echo ""
echo "The conceptual shift: 'exo' was cryptic. 'fuzzy-memory' explains itself."
