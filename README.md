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

### With Any LLM (ChatGPT, Claude.ai, etc)
1. Copy the entire content of [boot.md](boot.md)
2. Paste into your LLM of choice
3. Start working with the Council
4. Manually save valuable insights

## The Council

**Core Perspectives** (always available):
- 🗄️ **Weaver**: Strategic thinking, pattern recognition
- 📁 **Maker**: Practical execution, next steps
- ✓ **Checker**: Critical analysis, assumption testing

**Extended Council** (for deeper work):
- 🔍 **O/G** (Observer/Guardian): Human dynamics, psychological patterns
- ⚖️ **E/E** (Explorer/Exploiter): Resource allocation, opportunity analysis
- 🧠 **Deep Mind**: Meta-cognition, system-level patterns
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

Deep Mind: "This is really about capability building vs. time to market"
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
Deep Mind: "This might be solving the wrong layer's problem"
```

### Pattern Capture
```
You: "That debugging approach was brilliant. Scribe, document this."

Scribe: *inscribing to exo/patterns/debug-distributed-traces.md*
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

## Your exo/ Evolution

The system remembers and evolves:
- Custom perspectives for your domain
- Protocols that consistently deliver insights  
- Deep dives worth revisiting

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
- [The ✅/❌ Workflow](./exo/patterns/checkmark-workflow.md) - Documentation patterns
- [Working with Claude Desktop](./Working%20with%20Claude%20Desktop.md) - MCP setup guide

## Start Now

Have a complex problem? Load boot.md and present it to the Council.

The best way to understand orchestrated thinking is to experience it.

---

*For thinkers who know that complex problems need more than simple answers*
