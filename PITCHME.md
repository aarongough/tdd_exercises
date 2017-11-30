# Test Driven Development
<br>
<span class="aside">How I learned to love testing!</span>

---

### What is it?
<br>
In its simplest form:
<br>
<br>
Just writing tests first.

---

### Why not test last?
<br>
- Trains us to test 'the happy path'
- Doesn't enforce high test coverage
- Do the tests actually test the code?
- It's harder...

---

### TDD advantages
<br>
- Enforces high test coverage
- Encourages modular code
- Encourages 'boy scout coding'
- Refactoring is easy and safe
- Test are living documentation
- Better quality test cases

---

### Better quality test cases?
<br>
Because we're reasoning about the expected behaviour, not the code we just wrote:

- Better coverage of edge cases
- Better coverage of boundary conditions
- Less bugs

---

### TDD makes life easier!
<br>
TDD makes coding easier and faster:

- Failing tests are a checklist!
- Eliminate usage of console
- Eliminate regressions
- Minimize re-work
- Helps momentum

---

### Triangular
<br>
Ruby library for parsing/slicing stereolithography files. Lots of complex math and potential edge cases:

- Written in less than a week
- 99.6% test coverage
- Thousands of users via Rubygems
- Multiple forks that add features
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

### Drawbacks?
<br>
Can make encapsulation harder.
<br>
<br>
That's it... Really!

---

### But TDD is slower!
<br>
Bullshit.

---

### Workflow
<br>
Red  -  Green  -  Refactor

- Red: Failing tests that define behaviour
- Green: Write code to make the tests pass
- Refactor: the code and tests

---

### Unfamiliar problem-space?
<br>
- Spike out code to explore
- Throw that code away
- Red, Green, Refactor

This may sound crazy, but we already do it! Think about what we do in REPL when exploring...

---

### Don't know what to test?
<br>
Start by writing out expected behaviours, then convert them into unit/integration tests where possible and work our way up/down.

---

### Make test names tell a story
<br>
Describe Event: when clock is zero, status is pre-game
.....class.........context.........test.....
<br>
<br>
Frames our thinking around behaviour rather than code

---

### Things not to do
<br>
Don't mock the database.
<br>
<br>
```
	allow(Hockey::Player)
      .to receive(:find)
      .with(goaltender_id)
      .and_return(player)
```
<br>
<br>
Fail.

---

### Eureka moment
<br>
Think about the kind of code we write in console/repl when working on new code... Could those experiments become test cases?
<br>
<br>
Yes!