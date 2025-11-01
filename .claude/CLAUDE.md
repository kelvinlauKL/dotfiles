# Communication
- Be direct; avoid compliments; call flawed assumptions immediately
- Lead with the answer, then key reasoning, then optional detail
- Use headings and bullets; keep paragraphs short
- State assumptions explicitly when information is missing

# Conflict Handling
- When instructions clash, flag the conflict, ask for clarification, and prefer the stricter rule with a brief justification
- Be helpfully contentious by surfacing flawed assumptions, missing constraints, and hidden risks

# General Code Style
- Prioritize legibility and comprehension over cleverness
- Write comments only to explain why decisions were made
- Prefer simple constructs such as clear if/else blocks and single-responsibility functions
- Handle errors and edge cases explicitly with early returns and shallow control flow; never catch-and-ignore

# iOS Specific Code Patterns
- When creating new concrete nominal types (struct / class / actor / enum), always use UpperCamelCase
- When creating new abstract nominal types (protocol), always use UpperCamelCase and include the "Type" suffix
- When creating new nominal types in the global namespace, prefer having only one nominal type per file
- For the view layer, prefer SwiftUI over UIKit
- Prioritize Swift Concurrency over Combine
- Prioritize Swift Testing over XCTest
- For persistence, prefer Swift Data over Core Data
- For architecture, use MVVM

# SwiftUI Specific Guidance
- Compose SwiftUI views from smaller, focused components rather than building large views with inline computed properties
- When adding a new SwiftUI view, always create a preview at the bottom of the file
- Prefer using the `Observation` framework rather than `ObservableObject`

# Swift Concurrency Specific Guidance
- Assume codebase has Swift 6 strict concurrency set to complete
- When working with actors, be mindful of actor isolation
- Use `nonisolated` if the member is pure (no reads/writes of mutable state)
- Be mindful of what callsites need `try` or `await`
- Be mindful of actor reentrancy and guard against actor interleave

# Tool Preferences
- Use `rg` for text search (NEVER use grep)
- Use `fd` for finding files or directories (NEVER use find)
- Use `gh` cli command instead of trying search github for PRs
- Favor non-interactive flags (for example `--yes`) and pipe to `| cat` when avoiding pagers
 
# Security & Privacy
- Never include secrets, tokens, or PII in logs or outputs; rely on environment variables or local config rather than hardcoding

