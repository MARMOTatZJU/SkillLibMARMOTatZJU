---
name: ai-coding-context
description: Set up a context for ai coding that tries to strike a balance between coding efficiency and cognitive load of code reading.
license: MIT
metadata:
  author: MARMOTatZJU
  version: "0.1"
---

# Design Patterns

Treat a pattern as a proven vocabulary for recurring design forces, not as a goal or code template. Patterns compress design intent for human–AI collaboration; however, AI can generate unnecessary abstraction cheaply while every layer still costs context, navigation, testing, and maintenance.

## Essential Principles

- **Start with the problem:** Apply a pattern only when a concrete, recurring problem and its constraints match the pattern's intent and trade-offs.
- **Prefer the native, simple form:** Use a language feature, framework convention, function, or data structure before recreating a textbook implementation.
- **Design around change:** Isolate volatile details behind stable boundaries, keep responsibilities cohesive, and favor composition over inheritance.
- **Preserve traceability:** Keep dependencies, ownership, control flow, data flow, and failures explicit; avoid hidden global state and needless indirection.
- **Validate and prune:** Implement the smallest useful form, test its promised behavior, record why it exists, and collapse it when its original forces disappear.

## Enduring Pattern Catalog

No finite catalog covers every domain-specific pattern. Treat the following as the enduring cross-language core for application code: the 23 GoF concepts plus broadly reusable application and distributed-system patterns. Recognize a pattern already supplied by the language or framework; do not reimplement it ceremonially.

### Creation and Structure

| Pattern | Description | Use when |
| --- | --- | --- |
| Abstract Factory | Create compatible families of related objects behind one interface. | Multiple platforms or providers require components that must not be mixed. |
| Builder | Construct a complex value step by step while enforcing invariants. | An object has many optional parts or multiple representations. |
| Factory Method | Delegate selection and creation of a concrete implementation. | Input, configuration, or an extension point determines the concrete type. |
| Prototype | Create objects by copying a configured exemplar. | Setup is costly or concrete types are known only at runtime. |
| Singleton | Maintain exactly one process-local instance with controlled lifecycle. | A resource is truly unique; prefer container-managed scope over mutable global state. |
| Adapter | Translate one interface or protocol into another. | Integrating a legacy, third-party, or otherwise incompatible component. |
| Bridge | Separate an abstraction from an independently varying implementation. | Two dimensions must vary without multiplying subclasses. |
| Composite | Treat individual objects and nested groups uniformly. | Modeling trees such as UI nodes, files, syntax, or organizations. |
| Decorator | Add behavior by wrapping an object that keeps the same contract. | Composing logging, caching, authorization, or formatting at runtime. |
| Facade | Expose a small, stable interface over a complex subsystem. | Simplifying common workflows or shielding callers from subsystem churn. |
| Flyweight | Share immutable intrinsic state among many lightweight objects. | Huge object populations repeat the same memory-heavy data. |
| Proxy | Place a contract-compatible stand-in before a real object. | Adding lazy loading, remote access, caching, or access control. |
| Dependency Injection | Supply dependencies from outside their consumers. | Exposing wiring, swapping implementations, or isolating code in tests. |

### Behavior and Coordination

| Pattern | Description | Use when |
| --- | --- | --- |
| Chain of Responsibility | Pass a request through ordered handlers until one or more handle it. | Building validation, authorization, routing, or request-processing chains. |
| Command | Represent an action and its parameters as a value. | Queueing, logging, retrying, composing, or undoing operations. |
| Interpreter | Represent and evaluate a small grammar directly. | Implementing a bounded rule language, query syntax, or configuration DSL. |
| Iterator | Traverse a collection without exposing its representation. | Providing uniform traversal over custom or lazy data structures. |
| Mediator | Coordinate peer interactions through a central collaborator. | Reducing many-to-many coupling in dialogs, workflows, or orchestration. |
| Memento | Capture restorable state without exposing internal representation. | Implementing undo, checkpoints, drafts, or rollback. |
| Observer | Notify registered in-process dependents when state changes. | Synchronizing views, indexes, or local reactions with a source. |
| State | Delegate behavior to an object representing the current state. | Replacing sprawling conditionals in lifecycle- or protocol-driven objects. |
| Strategy | Encapsulate interchangeable algorithms behind one contract. | Selecting pricing, ranking, routing, validation, or serialization behavior. |
| Template Method | Define an algorithm skeleton while allowing selected steps to vary. | Reusing a stable workflow across closely related implementations. |
| Visitor | Put new operations outside a stable object structure using double dispatch. | Adding many operations to a closed syntax tree or type hierarchy. |

### Application and Data Architecture

| Pattern | Description | Use when |
| --- | --- | --- |
| Layered Architecture | Organize responsibilities into layers with controlled dependency direction. | Separating presentation, application, domain, and infrastructure concerns. |
| Ports and Adapters | Keep core policy behind ports implemented by external adapters. | Protecting domain logic from databases, frameworks, APIs, and user interfaces. |
| MVC / MVVM | Separate presentation state and behavior from rendering and domain logic. | Building interactive applications with multiple views or testable presentation logic. |
| Modular Monolith | Deploy one application while enforcing strong internal module boundaries. | Needing transactional simplicity now and independent evolution later. |
| Microkernel / Plugin | Keep a minimal core and add capabilities through extension contracts. | Supporting optional, replaceable, or third-party features. |
| Domain Model | Represent domain rules through behavior-rich concepts and relationships. | Business logic is complex, interdependent, and frequently changing. |
| Value Object | Model a concept by immutable attributes and value equality rather than identity. | Representing money, ranges, coordinates, identifiers, or validated measurements. |
| Repository | Present domain-oriented collection operations over persistence. | Keeping storage queries and mapping out of domain or application logic. |
| Unit of Work | Track related changes and commit them as one transaction. | Coordinating multiple writes that must succeed or fail together. |
| Specification | Encapsulate a composable business predicate. | Reusing selection, validation, or eligibility rules across workflows. |
| CQRS | Use different models for commands and queries. | Read and write needs differ enough to repay separate models. |
| Event Sourcing | Persist domain events as the authoritative history of state. | Auditability, temporal reconstruction, or event-driven projections are required. |
| Pipes and Filters | Transform data through independent, composable stages. | Building compilers, ETL, media processing, or streaming workflows. |

### Integration, Resilience, and Evolution

| Pattern | Description | Use when |
| --- | --- | --- |
| Publish–Subscribe | Route events from publishers to independently subscribed consumers. | Decoupling asynchronous reactions across modules, processes, or services. |
| Saga | Coordinate a distributed workflow through local transactions and compensations. | Maintaining business consistency without a cross-service transaction. |
| Transactional Outbox | Commit an outgoing message beside the business change, then relay it. | Avoiding lost events between a database transaction and a message broker. |
| Idempotent Consumer | Make repeated delivery produce the same effect as one delivery. | Consuming messages safely from an at-least-once delivery system. |
| Retry with Backoff | Repeat a transiently failed operation with bounded, delayed attempts. | Recovering from temporary failures when attempts are idempotent or deduplicated. |
| Circuit Breaker | Stop calls to a failing dependency until recovery is plausible. | Preventing cascading failure and wasted work during sustained outages. |
| Bulkhead | Isolate resource pools so one failure cannot exhaust all capacity. | Protecting tenants, workloads, or dependencies from noisy neighbors. |
| Cache-Aside | Load missing data into a cache and explicitly update or invalidate entries. | Accelerating read-heavy access when bounded staleness is acceptable. |
| Anti-Corruption Layer | Translate between a legacy or external model and the application's model. | Preventing foreign concepts and constraints from polluting a core domain. |
| Strangler Fig | Replace a legacy system incrementally by routing slices to a new implementation. | Modernizing without a high-risk wholesale rewrite. |

## Best Practices

| Should do | Should not do |
| --- | --- |
| State the concrete forces and expected payoff before naming a pattern. | Pattern-shop by popularity or accept a confident AI label as evidence. |
| Compare the pattern with the simplest solution and one plausible alternative. | Add speculative flexibility for requirements that do not yet exist. |
| Use native idioms and implement only the roles the problem requires. | Reproduce every class from a textbook diagram. |
| Align boundaries with ownership and likely change; use conventional names. | Scatter wrappers and abstractions across stable, local code. |
| Ask AI to expose dependencies, failure paths, trade-offs, and removal conditions. | Review only generated syntax while ignoring the resulting architecture. |
| Introduce a pattern in a small, reviewable, behavior-preserving change. | Mix an architectural rewrite with unrelated generated features. |
| Test observable contracts, variants, state transitions, and failure behavior. | Test class shape or mock internal calls merely to preserve the pattern. |
| Record the rationale near the decision and reassess it as the system evolves. | Preserve accidental complexity for architectural purity. |

# Code Maintainability and Longevity

Optimize for the next safe change, not only today's successful run. Make the code understandable, testable, extensible, migratable, operable, reversible, and removable without requiring future maintainers to reconstruct hidden intent.

## Shape Stable, Small Boundaries

- **Define contracts before mechanisms at real boundaries:** Specify caller-visible inputs, outputs, errors, side effects, invariants, ownership, and compatibility before implementing a public or independently evolving boundary. Derive interfaces from known consumers; keep local code concrete until substitution or independent evolution justifies an interface type.
- **Minimize public surface:** Export only what callers need, hide volatile details, and treat every observable behavior as a potential long-term commitment.
- **Keep modules cohesive and loosely coupled:** Give each module a clear purpose, direct dependencies toward stable policy, prevent dependency cycles, and isolate I/O or framework code from core logic.
- **Make state and ownership explicit:** Represent invalid states so they are difficult to construct; expose lifecycle, mutability, concurrency, cancellation, transaction, and resource-ownership rules in types and contracts.
- **Prefer boring, idiomatic code:** Optimize for local reasoning and consistency; add abstraction only after stable repetition or a demonstrated axis of change.

## Build a Change Safety Net

- **Use test-first design where it clarifies behavior:** Apply short red–green–refactor cycles to deterministic rules and regressions; add characterization tests before changing poorly understood legacy code. Treat TDD as a design tool, not a universal ceremony.
- **Test behavior through supported boundaries:** Cover normal, edge, and failure cases through public contracts so refactoring internals does not rewrite the tests. Avoid assertions about private call sequences or mocks that merely mirror implementation.
- **Balance the test portfolio:** Keep most checks fast, deterministic, and narrow; add integration and contract tests at real boundaries and only a small set of high-value end-to-end tests.
- **Turn failures into durable knowledge:** Add a focused regression test for every fixed defect when feasible, and ensure a broken implementation makes the test fail.
- **Make every change reviewable:** Keep changes small and single-purpose; run formatting, linting, type or static analysis, security checks, and relevant tests in continuous integration. Review AI-generated code and tests with the same standards as human-authored code.

## Preserve Intent at the Point of Need

- **Write for the reader:** Use domain names, simple control flow, short scopes, and explicit dependencies so the code explains what it does without commentary.
- **Comment why, not what:** Record non-obvious rationale, invariants, trade-offs, external constraints, failure assumptions, and surprising performance or compatibility choices. Simplify unclear code instead of narrating it, and update or delete comments with the code.
- **Document contracts for users:** Describe purpose, supported usage, errors, side effects, ownership, concurrency guarantees, and concise examples for public APIs; verify documented behavior with tests where practical.
- **Make TODOs actionable:** Use TODOs only for specific temporary debt, and include a tracked issue or responsible party, the required action, and a removal trigger or date. Prefer `TODO(#1234): Remove the fallback after all clients use schema v3.` over `TODO: fix later`; keep planning detail in the issue tracker.
- **Record durable decisions:** Capture hard-to-reverse architectural choices, alternatives, trade-offs, and superseding decisions in short version-controlled decision records rather than relying on chat, review history, or memory.

## Sustain Evolution

- **Evolve contracts compatibly:** Prefer additive API and schema changes; deprecate before removal, reserve retired identifiers where required, and provide migration, compatibility-test, and rollback paths for breaking changes.
- **Control dependencies deliberately:** Add a dependency only when its value exceeds its lifetime cost; use lock files or equivalent reproducibility controls, audit transitive risk, and automate small, tested updates.
- **Make failures diagnosable:** Return or propagate actionable errors with preserved causes and relevant context; add structured logs, metrics, or traces at system boundaries without leaking secrets. Never silently swallow failures.
- **Continuously remove carrying cost:** Delete dead code, expired feature flags, stale TODOs, unused abstractions, obsolete compatibility paths, and redundant tests once their removal conditions are met.
- **Keep the development path executable:** Maintain one documented, automated path to build, test, run, debug, migrate, and release the system so knowledge survives tool, dependency, and maintainer changes.
