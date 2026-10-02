# Canonical implementation

model.py implements the retained PDF construction, with Model(seeds, sheet=1).
single_radical.py implements its equivalent measurement equations; it does
not supply another class covering or eliminate the ray variables.

verify.py and verify_single_radical.py check exact algebraic identities and
high-precision reconstruction regressions. They do not certify the externally
accepted global coverage theorems. Use the root verification runner.
