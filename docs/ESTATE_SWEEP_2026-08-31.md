# EG411 estate sweep — 2026-08-31

Before freezing the public review baseline, I searched the earlier research estate for a later
valid result that would make this repository understate the r=2 frontier.

## Result

I did not find a later unconditional closure or a stronger valid theorem beyond the frontier
already represented in the live README.

The strongest surviving state across the later registries and recovery notes is:

- exact Lean bridge to `3*phi(N)=2*N+2` and the master identity;
- the base-6 cascade and its termination, giving cascade primes exactly `{7,47}`;
- structural squarefree/chain-free restrictions;
- kernel classification through the omega=5 exclusion, hence `omega(N) >= 6` for any further
  exceptional prime;
- computed empty omega=6 and omega=7 strata, hence `omega(N) >= 8` computationally;
- the omega=7 enumeration has 272,676 terminal nodes and was independently re-enumerated by a
  more permissive from-scratch search over roughly 17.96 billion candidates;
- no exceptional prime below `1.33e14` from the bridge plus Hercher's lower bound.

The remaining mathematical target is still the non-cascade totient problem: rule out a further
solution of `phi(N)=(2/3)(N+1)` whose `(4*N+1)/3` is prime.

## Things found in the estate that are not stronger results

Older packages contain an apparent unconditional Cambie/asymptotic closure. That route is the
one already retracted in this repository: its predicate is blind to the exceptional primes the
problem asks us to rule out. It is not evidence that the current README is too weak.

Likewise, larger finite computations of that retracted predicate do not move the real r=2
problem.

## Credit-preservation conclusion

For #411, the current public theorem table is already close to the maximum honest claim level.
The next worthwhile upgrades are therefore not wording upgrades. They are mathematical:

1. port the omega=6 and omega=7 kill trees fully into the Lean kernel;
2. then reopen the residual non-cascade problem with those stronger formal constraints in hand.

This note is intentionally conservative: if a later source artifact is recovered that proves
more than the state above, it should be added with its exact receipt rather than inferred from
an old headline.
