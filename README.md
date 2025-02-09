# Silent Method Calls in Ruby using `method_missing`

This repository demonstrates a potential issue with Ruby's `method_missing` method. While powerful for dynamic method handling, it can mask errors if not implemented correctly.  Improper use can lead to unexpected behavior and make debugging significantly harder because exceptions may be silently swallowed.

The `bug.rb` file shows an example of a class that uses `method_missing` to catch any undefined method calls.  This is useful, but it's crucial to ensure that your handling of unexpected calls doesn't hide actual errors.

The `bugSolution.rb` file suggests a better implementation to avoid such issues.