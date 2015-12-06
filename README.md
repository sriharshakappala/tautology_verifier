# Tautology Verifier

## How to run?

    $ git clone https://github.com/sriharshakappala/tautology_verifier.git

    $ cd tautology_verifier

    $ bundle

    $ ruby lib/tautology_verifier.rb

## How to test?

    $ cd tautology_verifier
    $ rspec

## Sample Interaction

    How many propositional statements do you want to check?
    3
    Type the propositional statement. Once you type a statement press `Enter`
    a|b
    a&b
    a|!a
    False
    False
    True
