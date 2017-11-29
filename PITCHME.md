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
Because you're reasoning about the expected behaviour, not the code you just wrote, TDD usually leads to:

- More complete coverage of edge cases
- More complete coverage of boundary conditions
- Tests more likely to act as documentation
- Less bugs

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

## Who uses TDD?
<br>
- Jose Valim
- Sandi Metz
- Thoughtbot
- Pivotal Labs
- Erlang Solutions
- Plataformatec