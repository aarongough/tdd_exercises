# Test Driven Development
<br>
<span class="aside">How I stopped worrying and learned to love testing!</span>

---

### Why not test-last?
<br>
- Trains people to only test 'the happy path'
- Does not enforce high levels of test coverage
- Unexpected 'coverage holes' everywhere
- Do the tests actually fail without the feature code??

---

### TDD advantages
<br>
- Enforces high test coverage
- Better quality test cases
- Encourages modular code
- Encourages 'boy scout coding'
- Refactoring and adding features is easy and safe

---

### Better quality test cases?
<br>
Because you're reasoning about the expected behaviour, not the code you just wrote:

- More complete coverage of edge cases
- More complete coverage of boundary conditions
- Tests more likely to act as documentation
- Less bugs

---

### TDD helps me!
<br>
TDD makes me feel safer and more confident in my day-to-day work, and I believe it makes me faster because:

- Failing test cases become a checklist!
- Eliminates usage of console/repl
- Minimizes usage of interactive debuggers
- Eliminates regressions
- Minimizes re-work

---

### Triangular
<br>
Ruby library for parsing/slicing stereolithography files. Lots of complex math and potential edge cases:

- Written in less than a week!
- 99.6% test coverage
- Thousands of users via Rubygems
- Multiple 3rd party forks adding features
- Zero bug reports in the last 6 years

---

### Who uses TDD?
<br>
- Jose Valim
- Sandi Metz
- Thoughtbot
- Pivotal Labs
- Erlang Solutions
- Plataformatec

---

## Workflow
<br>
Red, Green, Refactor

- Red: Write failing test cases that express the behaviour you want
- Green: Write code to make the test cases pass
- Refactor your code and tests