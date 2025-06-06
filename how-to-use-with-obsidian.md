# How to Use Think Center with Obsidian

Transform your Obsidian vault into a Think Center. Your existing notes gain multiple perspectives.

## Setup (One Time, 5 Minutes)

### 1. Create Think Center Structure in Your Vault

In your Obsidian vault, create these folders:
```
YourObsidianVault/
├── fuzzy-memory/
│   ├── perspectives/    
│   ├── patterns/       
│   └── protocols/      
├── sessions/           ← Council meetings
├── collaborations/
│   └── staging/        ← Active work
└── [your existing folders and notes]
```

### 2. Configure Claude Desktop

Point Claude Desktop to your Obsidian vault:
```json
{
  "filesystem": {
    "command": "npx",
    "args": ["@anthropic/mcp-server-filesystem"],
    "config": {
      "directories": [
        "/Users/yourname/ObsidianVaults/YourVault"
      ]
    }
  }
}
```

### 3. Initialize Perspectives

In Claude Desktop:
```
"You have access to my Obsidian vault. Let's set up Think Center:
- fuzzy-memory/perspectives/ for thinking modes
- sessions/ for council meetings  
- collaborations/staging/ for active work

Please create the base perspectives..."
```

## Daily Workflow

### Morning Planning

Create or open today's note:
```markdown
# 2024-01-20

## Morning Council
- [[Orchestrator]]: Focus on [[Project X]] today
- [[E-E]]: Morning = deep work, afternoon = meetings
- Full session: [[sessions/2024-01-20-morning]]
```

### Working with Claude

1. **Start a session**:
   ```
   "Council meeting on [topic]. Create sessions/2024-01-20-topic.md"
   ```

2. **Instant in Obsidian** - no sync, same files!

3. **Link from anywhere** - your daily note, project pages, etc.

### Staging Workflow

1. Drop draft in `collaborations/staging/`
2. Ask Claude to review/enhance
3. Move to permanent location
4. Link from relevant notes

## Integration Patterns

### Enhance Existing Notes

Before Think Center:
```markdown
# Product Strategy

Market analysis...
Technical constraints...
```

After Think Center:
```markdown
# Product Strategy

Market analysis...
Technical constraints...

## Council Insights
- [[Weaver]]: This is really about platform vs product
- [[Checker]]: Assumption about market size needs validation
- Full analysis: [[sessions/2024-01-20-product-strategy]]
```

### Create Perspective Notes

`Weaver.md`:
```markdown
---
aliases: [🧵]
tags: perspective
---

# Weaver

Strategic pattern recognition. See [[fuzzy-memory/perspectives/weaver]] for full details.

## Recent Insights
![[sessions]] (where contains "Weaver")
```

### Use Templates

Session template:
```markdown
---
date: {{date}}
tags: council-session
perspectives: []
---

# Council Session: {{title}}

## Challenge

## Perspectives
### [[Weaver]] 🧵

### [[Maker]] 🔨

### [[Checker]] ✓

## Decision

## Patterns
#pattern/
```

## Power Features

### 1. Graph View
- See which perspectives you use most
- Identify orphaned insights
- Spot pattern clusters

### 2. Canvas Integration
Create visual council meetings:
- Drag perspective notes onto canvas
- Draw connections between insights
- Visual decision trees

### 3. Search Everything
Find all Checker insights: `"[[Checker]]"`
Find all patterns: `tag:#pattern`
Find sessions from last week: `path:sessions file:2024-01`

### 4. Dataview Queries

Most used perspectives:
```dataview
TABLE count(rows) as Uses
FROM "sessions"
WHERE contains(file.content, "[[")
GROUP BY file.links
SORT count(rows) DESC
```

## File Organization

### Naming Patterns
- Sessions: `YYYY-MM-DD-descriptive-topic.md`
- Patterns: `pattern-name.md` with `#pattern/category`
- Keep staging clean - temporary only

### Folder Structure Benefits
- `/sessions/` - Easy to browse chronologically
- `/fuzzy-memory/` - Think Center core, rarely edited
- `/collaborations/staging/` - Always know what's in progress

## The Magic

1. **Unified System**: Your notes and thinking tools in one place
2. **Natural Enhancement**: Existing notes gain perspectives
3. **No Sync Dance**: Claude and Obsidian edit same files
4. **Best of Both**: Obsidian's features + Claude's intelligence

## Quick Start

1. Create the folders
2. Configure Claude Desktop
3. Do your first council session
4. Link insights from your daily note
5. Watch your vault become smarter

After a month, your graph reveals how you think, not just what you know.

---

*"Your vault isn't just storing knowledge anymore - it's generating insight."*