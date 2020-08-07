# Anatomy of a Test

## Goals

- Set a standard for desired shape of tests
- Remove any Rubocop rules in the way

## Questions

1. What is the shape of a spec file (unit test)?
2. How can indirection be prevented? (looking up-and-down across the whole file
3. Can the startup performance of single-file test execution be improved to properly apply TDD, especially for service objects? (e.g. splitting rails helper from spec helper for database stuff)
4. Are there rubocop rules stopping us from achieving ideal anatomy and performance for tests?
  - Max 5 lines per test
  - Subject must be at the top
  - `let` enforced instead of `before` blocks
  - Only 1 `expect` per test
5. Where the setup phase should happen in a spec?)
