# Staging Area

The active exchange zone between you and Claude.

## Purpose

This is your workspace for:
- Sharing documents that need processing
- Exchanging artifacts with feedback
- Iterating on content before finalizing
- Temporary storage during active collaboration

## How to Use

### Basic Flow
1. **You drop a file here** with comments/feedback embedded
2. **Claude processes it** and creates a response
3. **You review** and provide additional direction
4. **Move to final location** when complete
5. **Clean staging** for next use

### Example: Document with Feedback
```markdown
<!-- In: research-notes-raw.md -->
# Research Notes
<FEEDBACK: Please organize into categories>
- Random insight 1
- Random insight 2
<FEEDBACK: This needs more context>
- Random insight 3

<!-- Out: research-notes-organized.md -->
# Research Notes

## Category A
- Insight 1 (expanded with context)

## Category B  
- Insight 2
- Insight 3 (with added context: ...)
```

### Example: Code Review Cycle
```
1. code-v1.py → staging (with inline comments)
2. Claude creates code-v2.py addressing comments
3. You: "Good, but what about error handling?"
4. Claude updates to code-v3.py
5. Final version moves to project location
```

## Best Practices

- **Clear naming**: Use `-raw`, `-feedback`, `-v2` suffixes
- **Embedded feedback**: Use `<FEEDBACK>` tags or comments
- **Clean regularly**: Don't let staging become storage
- **Document decisions**: Note why changes were made

## File Naming Conventions

- `[name]-raw.[ext]` - Your initial version
- `[name]-feedback.[ext]` - With embedded comments
- `[name]-v2.[ext]` - Claude's revision
- `[name]-final.[ext]` - Ready to move

---

*"Staging is where thoughts become refined through dialogue"*