My Inject v2
===========

This was a second attempt at writing my own version of Ruby's enumerabl#inject method, given the following instructions:

* Reopen the Array class or subclass it.
* Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given
* Name your method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with weird messages unless your implementation of inject is perfect.
* If you would like a challenge, rewrite inject using two approaches: using iterators and using recursion but it’s not required to pass.
