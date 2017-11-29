# Test Driven Development
<br>
<span class="aside">How I stopped worrying and learned to love testing!</span>

---

### Why not test-last?
<br>
- Trains people to only test 'the happy path'
- Does not enforce high levels of test coverage
- Unexpected 'coverage holes' everywhere
- Do the tests actually fail without the code??

---

### TDD advantages
<br>
- Enforces high test coverage
- Better quality test cases
- Encourages modular code
- Encourages 'boy scout coding'
- Refactoring is easy and safe

---

### Better quality test cases?
<br>
Because you're reasoning about the expected behaviour, not the code you just wrote:

- Better coverage of edge cases
- Better coverage of boundary conditions
- Test cases are living documentation
- Less bugs

---

### TDD makes life easier!
<br>
TDD makes me feel safer and more confident in my day-to-day work, and I believe it makes me faster:

- Failing test cases become a checklist!
- Eliminates usage of console/repl
- Minimizes usage of debuggers
- Eliminates regressions
- Minimizes re-work

---

### Triangular
<br>
Ruby library for parsing/slicing stereolithography files. Lots of complex math and potential edge cases:

- Written in less than a week!
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
That's it... Really!

---

### But TDD is slower!
<br>
Bullshit.
<br>
<br>
Look at the whole. If you don't pay for it now, you'll pay for it later, probably with interest!
<br>
<br>
Our job is to deliver business value, not 'write code'.

---

### Workflow
<br>
Red  -  Green  -  Refactor

- Red: Failing test cases that express what you want
- Green: Write code to make the test cases pass
- Refactor: your code and tests

---

### Unfamiliar problem-space?
<br>
- Spike out code to explore
- Throw that code away
- Red, Green, Refactor

This may sound crazy, but you already do it! Think about what you do in REPL when exploring...

---

### Don't know what to test?
<br>
Start by writing out expected behaviours, then convert them into unit/integration tests where possible and work your way up/down.

---

### Make your test names tell a story
<br>
Describe Event: when clock is zero, status is pre-game
.....class.........context.............test.....
<br>
<br>
Frame your thinking around behaviour rather than code

---

### Things not to do
<br>
Don't try 'real' unit testing. ie: don't mock your database.
<br>
<br>
```allow(Hockey::Player)
  .to receive(:find).with(goaltender_id)
  .and_return(player)
```
<br>
<br>
Fail.