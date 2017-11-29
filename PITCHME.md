# Test Driven Development
<br>
<span class="aside">(or: How I stopped worrying and learned to love testing!)</span>

---

### Why not test-last?
<br>
- Trains people to only test 'the happy path'
- Does not enforce high levels of test coverage
- Unexpected 'coverage holes' lead to inaccurate estimates
- Does not validate that the tests actually fail without the feature code

---

### TDD advantages
<br>
- Enforces high test coverage (99% is not uncommon)
- Better quality test cases:
	- More complete coverage of edge cases and boundary conditions
  - Reason about the expected behaviour, not the code you just wrote
  - Robust code that handles edge cases and bounday conditions
- In legacy code it helps to constantly drive up test coverage
- Encourages modular code with well defined interfaces
- Encourages forethought regarding overall design and implementation
- Encourages 'boy scout coding', leave it cleaner than when you started
- Refactoring and adding features without breaking anything is easy