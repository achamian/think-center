# Working with Claude Desktop

A practical guide for maximizing your productivity with Claude Desktop through MCP configurations, artifact management, and memory optimization.

## MCP (Model Context Protocol) Configurations

### What is MCP?
MCP allows Claude to interact with external tools and systems through a standardized protocol. It's the bridge between Claude's capabilities and your local environment.

### Setting Up MCP
1. **Configuration File Location**
   - macOS: `/Users/[username]/Library/Application Support/Claude/claude_desktop_config.json`
   - Linux: `~/.config/claude/claude_desktop_config.json`
   - Windows: `%APPDATA%\Claude\claude_desktop_config.json`

2. **MCP Server Configurations**

   ### Filesystem Server
   **Purpose**: Source of truth for fuzzy-memory and artifacts - enables Claude to read/write your project files
   ```json
   {
     "filesystem": {
        "command": "npx",
        "args": [
          "-y",
          "@modelcontextprotocol/server-filesystem",
          "/Users/yourname/dev/think-center"
        ]
      }
   }
   ```

   ### Git Server
   **Purpose**: Version control for memories and artifacts - track evolution of thinking

   `uvx` is installed as part of the uv Python package manager. [Install uv](https://docs.astral.sh/uv/#installation)   

   ```json
   {
     "git": {
      "command": "uvx",
      "args": [
        "mcp-server-git",
        "--repository",
        "/Users/yourname/dev/think-center"
      ]
    }
   }
   ```

   ### Perplexity Server
   **Purpose**: AI-powered research for deep dives and comprehensive searches
   ```json
   {
     "perplexity": {
       "command": "npx",
       "args": ["@modelcontextprotocol/server-perplexity"],
       "env": {
         "PERPLEXITY_API_KEY": "your-api-key"
       }
     }
   }
   ```
   *Note: Requires Perplexity API key from perplexity.ai*

   ### Brave Search Server
   **Purpose**: Privacy-focused searches for local and web content
   ```json
   {
     "brave-search": {
       "command": "npx",
       "args": ["@modelcontextprotocol/server-brave-search"],
       "env": {
         "BRAVE_SEARCH_API_KEY": "your-api-key"
       }
     }
   }
   ```
   *Note: Requires Brave Search API key from brave.com/search/api*

   ### Shell Server
   **Purpose**: Command line access for developer workflows and automation
   ```json
   {
     "shell": {
       "command": "npx",
       "args": ["@modelcontextprotocol/server-shell"],
       "config": {
         "allowed_commands": ["ls", "cd", "git", "npm", "python"]
       }
     }
   }
   ```
   *Note: Restrict commands for security*

   ### Complete Configuration Example
   ```json
   {
     "mcpServers": {
       "filesystem": { ... },
       "git": { ... },
       "perplexity": { ... },
       "brave-search": { ... },
       "shell": { ... }
     }
   }
   ```
   
   ### Troubleshooting
   If the [logs from Claude Desktop](https://modelcontextprotocol.io/quickstart/user#getting-logs-from-claude-for-desktop) 
   points to npx or uvx missing, or if the MCP servers prematurely exiting, then try providing the full shell environment 
   for the tools. For example, to get `npx` to work for `filesystem`:

   ```json
   {
    "filesystem": {
        "command": "/Users/yourname/dev/fileserver-mcp.sh",
      }
   } 
   ```

   ```sh
   #!/usr/bin/env bash
   # fileserver-mcp.sh
   npx -y @modelcontextprotocol/server-filesystem /Users/yourname/dev/think-center 
   ```
   
   You may not need a shell script for `uvx`; providing the full path to the binary in the "command" field should work. 

3. **Key MCP Servers**
   - **filesystem**: Source of truth for fuzzy-memory and artifacts - Read/write files, navigate directories
   - **git**: Version control for memories and artifacts - Track changes and collaborate
   - **sqlite**: Database operations for persistent knowledge graphs
   - **web**: Web scraping and fetching for research integration
   - **perplexity**: AI-powered research assistant for comprehensive searches
   - **brave-search**: Privacy-focused local and web searches
   - **shell**: Command line access for developer workflows
   - **Custom servers**: Build your own for specific needs

### Best Practices for MCP
- Limit directory access to project-specific paths
- Use separate MCP configurations for different projects
- Restart Claude Desktop after configuration changes
- Monitor MCP server logs for debugging

## How to Deal with Artifacts

### Understanding Artifacts
Artifacts are Claude's way of creating substantial, reusable content that persists beyond the conversation.

### When to Use Artifacts
✅ **Use for:**
- Code files (>20 lines)
- Documents, reports, analyses
- Creative writing
- Structured data (JSON, YAML, MD)
- Visualizations (HTML/React)

❌ **Don't use for:**
- Quick snippets (<20 lines)
- Conversational responses
- Simple explanations
- One-off calculations

### Artifact Management Strategies

1. **Naming Convention**
   - Use descriptive, version-aware names
   - Example: `data-processor-v2.py`, `user-guide-draft1.md`

2. **Update vs. Create New**
   - Update: Small changes, iterations
   - New: Major refactors, different approaches

3. **Saving Artifacts**
   - Click "Copy" button in artifact viewer
   - Save to your project with meaningful filenames
   - Consider version control immediately

4. **Working with Multiple Artifacts**
   - Claude can only show one artifact at a time
   - Reference previous artifacts by name
   - Use filesystem MCP to save and load artifacts

### Pro Tips
- Request "show me the complete code" to avoid truncation
- Ask Claude to update specific sections rather than rewriting
- Use artifacts for reference documentation you'll revisit

## How to Save Memory

### Understanding Claude's Memory Constraints
- Context window: Limited conversation history
- No persistence between conversations
- Each message adds to context usage

### Memory Optimization Strategies

1. **Conversation Management**
   - Start new conversations for new topics
   - Save important context to files
   - Use summaries for long discussions

2. **External Memory Pattern**
   ```markdown
   ## Session Notes - [Date]
   
   ### Key Decisions
   - Decision 1: [details]
   - Decision 2: [details]
   
   ### Code Changes
   - Modified: [file] - [what changed]
   - Created: [file] - [purpose]
   
   ### Next Steps
   - [ ] Task 1
   - [ ] Task 2
   
   ### Context for Next Session
   [Key information needed to continue]
   ```

3. **Using Filesystem as Memory**
   - Create `.context/` directory in projects
   - Save conversation summaries
   - Store code snapshots
   - Document decision rationale

4. **Effective Prompting for Memory**
   - "Let's save our progress to context.md"
   - "Create a summary of what we've done"
   - "What should I know for next session?"

5. **Project Structure for Memory**
   ```
   project/
   ├── .context/
   │   ├── sessions/
   │   │   ├── 2024-01-15.md
   │   │   └── 2024-01-16.md
   │   ├── decisions.md
   │   ├── architecture.md
   │   └── todo.md
   ├── src/
   └── docs/
   ```

### Memory-Efficient Workflows

1. **Boot Pattern**
   - Create boot.md with project context
   - Start sessions with "Load boot.md"
   - Update boot.md with new patterns

2. **Checkpoint Pattern**
   - Regular saves during long sessions
   - "Let's checkpoint our progress"
   - Save before major changes

3. **Handoff Pattern**
   - End sessions with summary
   - Include "continue from here" notes
   - Reference specific files/decisions

## Quick Reference Card

### Essential Commands
- "Save this to [filename]"
- "Load [filename] and continue"
- "Summarize our conversation"
- "Create artifact for [content]"
- "Update the artifact with [changes]"

### Memory Limits
- New conversation: ~200k tokens
- After heavy use: Consider fresh start
- Large files: May consume significant context

### Performance Tips
- Clear conversation for better performance
- Use focused, specific requests
- Leverage MCP for file operations
- Break complex tasks into stages

## Troubleshooting

### Common Issues
1. **MCP not working**: Restart Claude Desktop
2. **Artifact truncated**: Request complete version
3. **Lost context**: Check saved summaries
4. **Slow responses**: Start new conversation

### Debug Checklist
- [ ] MCP configuration valid JSON?
- [ ] Directories accessible?
- [ ] Claude Desktop fully restarted?
- [ ] Sufficient context remaining?

---

*Remember: Claude Desktop + MCP + Good Patterns = Supercharged Development*
