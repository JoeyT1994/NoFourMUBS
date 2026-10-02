# Wider-family probes: experimental, not an additional proved radius

The accepted theorem in this directory is **F6 only, radius 1/36**.
The following probes guided its construction and indicate a next route;
they are not a complete family certificate or a production-cell result.

The former coarse C/D-label search, on a 720 parameter grid, did not
finish two tolerance-1/16 probes within their explicit 40-second budgets.
Those processes were terminated by the timeout wrapper. This was not
an inconclusive mathematical outcome or evidence of a feasible quartet.
At (a,b)=(0,0), tolerance 1/32 completed successfully in about 7 seconds.

The new ball-confinement cover is much faster near F6. Its exact graph
uses projective angle, rather than a linear probability bound. For the
48 existing rational F6 centres, radius 1/6 gives 52 possible C bases and
no D basis. The complete cover succeeded with raw tolerance 1/6 and
failed to cover one leaf at tolerance 1/4. A failed leaf is unresolved;
it does not certify the existence of a relaxed configuration.

Four additional 180-grid Fourier-family cells were explored with 48
numerically proposed ray centres, converted to exact rational unit
phases. The subsequent graph comparisons used exact fractions and the
phase cover used the integer scalar test. At raw tolerance 1/16:

- (10,2): a cover and graph both succeeded with ball radius 1/8.
- (20,4): both succeeded with ball radius 1/12.
- (29,14): both succeeded with ball radius 1/12.
- (29,0): the 48-centre cover failed even at tolerance 1/64 and ball
  radius 1/16. Subdivision or additional centre proposals remains to be
  tested. The graph alone did pass at that radius.

These probes suggest extending ClusterTube to parameter-dependent
centres and closed parameter boxes. A successful full raw tolerance
1/16 certificate would, with the existing transpose bound, support a
uniform projector radius 1/256. No such full certificate exists yet.
Numerical root proposals need not be exhaustive: completeness must
continue to come solely from the integer cover.

Temporary exploration scripts and logs are under
`/private/tmp/t2-expanded-tube/`; no accepted proof depends on them.
The main useful prototypes are `family_clusters.py` (centre proposals
and exact graph), `radius_scan.py`, and `cluster_dynamic.cpp` (cover).
