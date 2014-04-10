- [相思相愛](https://www.evernote.com/shard/s302/sh/81bf8429-c95e-43fb-aa75-b1e9aab4d162/aebadd79d04aed237beae278b58893c1)
- [nishiwaki-higashinadarb/meetup](https://github.com/nishiwaki-higashinadarb/meetup/wiki/Programming-Dojo-2014.4.5)

## Problem

A group of male and female participants give three choices.

    # soshisoai.txt
    A:c,b,a
    B:a,b,d
    C:a,c,b
    D:d,a,c
    a:A,C,D
    b:D,A,B
    c:B,A,C
    d:D,C,A

Male A's first choice is c, the second one is b and the third choice is a from the female group.

## Desired outputs.

    A-c
    B-b
    C-a
    D-d

If the first choice of male and female participants are the same it creates a pair. If there are no matches in the first choices, then you need to use the second chices etc.

Some inputs may not be valid.

- it may have a wrong person who does not exist.
- it may have the same person's name.
- it may have no choice.
- it may have only the first choice.

The following is another input.


    # soshisoai2.txt
    A:c,a,b
    B:c,f,a
    C:f,c,b
    D:d,d,d
    E:
    F:e,c,a
    a:A,D,F
    b:C,B,A
    c:D,A,C
    d:A,A,B
    e:C,A,E
    f:D,B,A


## Test

Run a test.

    rspec -c spec/lib/soshisoai_spec.rb

## Examples

Run with the first example.

    ruby sample/find_partner.rb

This gives the following result.

    cA
    bB
    aC
    dD

Run with the second text.

    ruby sample/find_partner2.rb

This gives the following result.

    cA
    fB
    aF



