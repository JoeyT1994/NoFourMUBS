# Reserved exact PSD multiplier terminal

`multiplier_terminal.py` provides `propose(centers, radii)` and an independent
`replay(centers, radii, certificate)` interface. Coordinates and radii are
exact rationals in radians. The current proposal returns `None`; the
checker always raises. No multiplier result currently authorizes acceptance.

The separate certificate must include its exact polynomial identities,
their relation to the signed Gram principal minors, and whole-box sign
proofs for each multiplier and remainder. A factor R^k can be removed only
where its required strict positivity is proved. A negative-minor conclusion
excludes strict D0; it is not an all-four-pairing lift certificate. Physical
maximal R=0 points use the separately stated A1/F6 argument.

To integrate a delivered proof: pin its theorem, identities and verifier;
implement this interface; add its distinct method to the terminal dispatcher
and tree audit; and add independent positive, negative, boundary and tampered
certificate controls. Rebuild INPUTS.json and perform the complete clean
replay. Merely changing ENABLED, returning ok=True, or placing a result JSON
beside this file does not install an accepting terminal.
