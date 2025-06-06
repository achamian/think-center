# How to Use Think Center with Logseq

Transform your Logseq graph into a Think Center. No separate systems - your notes become your thinking playground.

## Setup (One Time, 5 Minutes)

### 1. Create Think Center Structure in Your Logseq Graph

In your Logseq graph folder, create:
```bash
mkdir -p fuzzy-memory/perspectives
mkdir -p fuzzy-memory/patterns  
mkdir -p fuzzy-memory/protocols
mkdir -p pages/sessions
mkdir -p pages/collaborations/staging
```

Your graph now looks like:
```
YourLogseqGraph/
├── fuzzy-memory/        ← Think Center intelligence
│   ├── perspectives/    ← Your thinking modes
│   ├── patterns/       ← Discovered patterns
│   └── protocols/      ← Thinking methods
├── journals/           ← Your daily notes (existing)
├── logseq/            ← Config (don't touch)
└── pages/             ← All your pages including:
    ├── sessions/      ← Council meeting logs
    ├── collaborations/
    │   └── staging/   ← Active work area
    └── [your pages]   ← Everything else
```

### 2. Configure Claude Desktop

Point Claude Desktop's MCP filesystem to your Logseq graph:
```json
{
  "filesystem": {
    "command": "npx",
    "args": ["@anthropic/mcp-server-filesystem"],
    "config": {
      "directories": [
        "/Users/yourname/Documents/YourLogseqGraph"
      ]
    }
  }
}
```

### 3. Load Boot Content

Start a Claude Desktop session:
```
"You have filesystem access. Here's your Think Center setup:
- fuzzy-memory/perspectives/ contains thinking modes
- pages/sessions/ for council meetings
- pages/collaborations/staging/ for active work

Let's start with loading perspectives..."
```

Then paste the perspectives from think-center's boot.md.

## Daily Workflow

### Morning in Your Journal

Your daily note in Logseq:
```markdown
## [[2024-01-20]]

- Morning council check-in
  - [[Orchestrator]]: Today's focus is [[Project X]]
  - [[E/E]]: Exploit morning energy for deep work
  - Session: [[sessions/2024-01-20-morning-planning]]
```

### Working with Claude Desktop

1. **Start a session**: 
   ```
   "Let's work on [problem]. Create session in pages/sessions/2024-01-20-problem.md"
   ```

2. **Claude creates the file** directly in your Logseq graph

3. **See it instantly** in Logseq - no sync needed!

### Staging Workflow

Need Claude to review something?
1. Save file to `pages/collaborations/staging/draft.md`
2. In Claude: "Review the draft in staging"
3. Claude updates it
4. Move to final location when ready

## Patterns That Emerge

### Your Pages Become Smarter

Regular Logseq page:
```markdown
# API Design

Requirements...
```

Enhanced with Think Center:
```markdown  
# API Design

Requirements...

## Council Consultation
- [[sessions/2024-01-20-api-council]] - full session
- Key insight: [[Weaver]] saw this is about team boundaries
- [[patterns/api-as-contract]] emerged from discussion
```

### Perspectives Live in Your Graph

Create perspective pages:
```markdown
# Weaver
Alias:: 🧵
Type:: perspective

I see patterns and connections. Link to [[fuzzy-memory/perspectives/weaver]] for full details.

## Recent Insights
{{query (and [[Weaver]] (between -7d 0d))}}
```

### Sessions Become Pages

After a Claude session, you have:
- `pages/sessions/2024-01-20-big-decision.md` 
- Fully searchable in Logseq
- Can add block references
- Link from any other page

## Power Moves

### 1. Journal Templates
Add to your template:
```markdown
- Council check-in
  - Active perspective:: 
  - Challenge:: 
  - Session:: [[sessions/{{date}}-]]
```

### 2. Perspective Analytics
Query which perspectives you use most:
```query
(and (or [[Weaver]] [[Maker]] [[Checker]]) (between -30d 0d))
```

### 3. Pattern Recognition
Tag insights: `#pattern/decision-making`

Later query: `{{query #pattern/decision-making}}`

### 4. Quick Capture
In any page: 
```markdown
- [[Checker]] just noticed: our assumption about X is wrong
  - #insight #assumption-check
  - Expand in: [[sessions/explore-assumption-x]]
```

## File Organization Tips

### Naming Conventions
- Sessions: `sessions/YYYY-MM-DD-topic.md`
- Patterns: `patterns/pattern-name.md`
- Staging: `collaborations/staging/purposeful-name.md`

### Avoid Clutter
- Use subdirectories in pages/
- Clear staging/ regularly
- Archive old sessions: `pages/sessions/archive/2024/`

## The Beauty

1. **One System**: No sync, no separate apps
2. **Natural Flow**: Daily notes → Council → Insights → Patterns
3. **Everything Connected**: Your thoughts gain consciousness
4. **Claude + Logseq**: Each tool doing what it does best

## Getting Started

1. Create the folders
2. Configure Claude Desktop  
3. Do your first session
4. Link it from your journal
5. Watch patterns emerge

Within a week, your Logseq graph becomes a thinking partner, not just a note system.

---

*"Your second brain just learned how to think in multiple perspectives."*