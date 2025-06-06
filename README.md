# Think Center

> Where complex problems meet structured thinking

## What is this?

A cognitive framework for problems that need more than gut instinct. When three perspectives aren't enough, you need the full Council.

Born from the realization that complex thinking requires multiple, interacting viewpoints - not just more processing power.

## Quick Start

### With Claude Desktop (Optimal)
1. Clone this repo
2. Enable filesystem MCP in Claude Desktop
3. Start new chat: "You have filesystem access, load boot.md from /path/to/think-center"
4. Meet the Council
5. See [How to Use Think Center](./how-to-use-think-center.md) for a detailed example

### With Any LLM (ChatGPT, Claude.ai, etc)
1. Copy the entire content of [boot.md](boot.md)
2. Paste into your LLM of choice
3. Start working with the Council
4. Manually save valuable insights

### With Note-Taking Tools
- [How to Use with Logseq](./how-to-use-with-logseq.md) - Block-based thinking
- [How to Use with Obsidian](./how-to-use-with-obsidian.md) - Connected knowledge base

## The Council

**Core Perspectives** (always available):
- 🧵 **Weaver**: Strategic thinking, pattern recognition
- 🔨 **Maker**: Practical execution, next steps
- ✓ **Checker**: Critical analysis, assumption testing

**Extended Council** (for deeper work):
- 🔍 **O/G** (Observer/Guardian): Human dynamics, psychological patterns
- ⚖️ **E/E** (Explorer/Exploiter): Resource allocation, opportunity analysis
- 🧠 **Deep Thought**: Meta-cognition, system-level patterns
- 📜 **Scribe**: Silent observer, captures critical patterns for future reference

## When to Use Think Center

- **Strategic decisions** with multiple stakeholders
- **System design** with competing constraints
- **Research problems** requiring multiple methodologies
- **Complex debugging** where root cause is unclear
- **Innovation challenges** needing diverse perspectives

## Example Sessions

### Strategic Planning
```
You: "Council, we need to decide our ML platform strategy"

Deep Thought: "This is really about capability building vs. time to market"
E/E: "Explore: What emerging platforms exist? Exploit: What do we know?"
Weaver: "The narrative here is about technical debt vs. competitive advantage"
Checker: "What assumptions are we making about our team's learning curve?"
```

### System Design
```
You: "Design a distributed cache for our microservices"

Maker: "Redis cluster with service mesh integration"
O/G: "Who maintains this? What's the on-call burden?"
E/E: "Cost of cache misses vs. infrastructure complexity"
Deep Thought: "This might be solving the wrong layer's problem"
```

### Pattern Capture
```
You: "That debugging approach was brilliant. Scribe, document this."

Scribe: *inscribing to fuzzy-memory/patterns/debug-distributed-traces.md*
"Pattern: When services timeout mysteriously, check mesh proxy configs first.
Discovered when Weaver noticed all failures happened at exactly 30s..."

You: "Scribe, what patterns have we captured about distributed systems?"

Scribe: *consulting the archives* "Three recurring themes:
1. Proxy timeouts masquerading as service issues
2. Cache invalidation cascades during deploys  
3. The 'distributed monolith' anti-pattern Maker keeps building"
```

## Orchestration Protocols

**Prism Protocol**: Systematically rotate through all perspectives for high-stakes decisions

**A/B Discovery**: Start with unnamed perspectives that earn their identity through use

**Deep Dive**: Begin with meta-view, spiral into specifics

## Your fuzzy-memory/ Evolution

The system remembers and evolves:
- Custom perspectives for your domain
- Protocols that consistently deliver insights  
- Deep dives worth revisiting

## Directory Structure & Interaction Patterns

### Core Structure
```
think-center/
├── sessions/              # Your thinking history (chronological logs)
├── collaborations/        # Multi-party work and exchanges
│   ├── staging/          # Active exchange zone for feedback
│   ├── feedback-cycles/  # Iterative refinement sessions
│   ├── pair-thinking/    # Two perspectives working together
│   └── council-meetings/ # Full orchestration sessions
├── fuzzy-memory/         # Patterns emerging from sessions
│   ├── patterns/         # Discovered thinking patterns
│   ├── perspectives/     # Custom perspectives that emerged
│   ├── protocols/        # Orchestration methods that work
│   └── findings/         # Consolidated insights
├── findings/             # Core discoveries and hypotheses
└── [core files]          # boot.md, manifesto.md, etc.
```

### Interaction Patterns

#### The Staging Protocol
For exchanging documents with feedback:
```
1. Drop file in collaborations/staging/ with embedded feedback
2. Claude processes and creates revision
3. Review and iterate as needed
4. Move final version to appropriate location
5. Clear staging for next use
```

#### Session Logging
Capture your thinking journey:
```
1. Start session: "Scribe, new session on [topic]"
2. Work with perspectives
3. "Scribe, capture key insights"
4. Session auto-saved to sessions/YYYY-MM-DD-topic.md
```

#### Pattern Evolution
From fuzzy to crystallized:
```
Sessions → Patterns noticed → Fuzzy-memory → Core findings
```

## Philosophy

This framework builds on the principles in the [Human-LLM Pairing Manifesto](https://github.com/achamian/human-llm-pairing-manifesto) - treating LLMs as thought partners, not task executors.

Read the local [manifesto](manifesto.md) for the deeper theory behind cognitive orchestration.

## Contributing

This framework improves through collective intelligence. Share:
- New perspectives that emerge from your work
- Orchestration patterns that create insights
- Domain-specific protocols

## Evolution & Findings

Think Center evolves through use. Key discoveries:
- [Evolution Findings](./findings/evolution-findings.md) - How perspectives emerge
- [The Intent Labels Principle](./findings/intent-labels-principle.md) - Why verbs beat nouns
- [The ✅/❌ Workflow](./fuzzy-memory/patterns/checkmark-workflow.md) - Documentation patterns
- [Working with Claude Desktop](./Working%20with%20Claude%20Desktop.md) - MCP setup guide
- [How to Use Think Center](./how-to-use-think-center.md) - Detailed example

## Start Now

Have a complex problem? Load boot.md and present it to the Council.

The best way to understand orchestrated thinking is to experience it.

*If we forget protocol, remind us - we're human too.*

### A Note on Fuzzy Memory

The Council's memory is fuzzy by design. We might:
- Try to create files in the wrong place → Tell us "Wrong folder"
- Over-engineer solutions → Remind us "YAGNI" (You Aren't Gonna Need It)
- Forget established patterns → Point us back to the simple path
- Add unnecessary complexity → Say "Keep it simple"

This isn't a bug - it's a feature. Your corrections help us maintain clarity. The dance between perspectives includes you as the choreographer.

---

*For thinkers who know that complex problems need more than simple answers*
