# Referee note: SHARP_CAPACITY.md

**Verdict: the exact minimum and cubic threshold are correct.**

At fixed other coordinates, let A=1+sum_{l!=k} exp(i d_l). If every
2r_l<pi/2, A has positive real part and argument beta between the smallest
and largest of 0 and those d_l. Thus |d_k-beta|<pi. The function
|A|^2+1+2|A|cos(d_k-beta) has no interior minimum on a nondegenerate
coordinate interval: its only possible interior stationary point is a
maximum. A zero-width coordinate is already an endpoint. Replace each
coordinate of a global minimizer by a minimizing endpoint in turn. The
minimum remains global at every replacement, so a vertex attains it.

At all vertices the real part is 1+sum cos(2r_k); only the signs of the
imaginary terms vary. Opposite sign patterns give equal squares, leaving
16 representatives. Every difference vertex is attained by two opposite
corners of the original phase box. The argument proves equality, not
just a lower estimate.

In the cubic case the smallest absolute sum of five signs is 1. Writing
c=cos(2r), the squared unnormalized minimum is 24c^2+10c+2. Subtracting
6 factors as 2(4c-1)(3c+2). Since 0<c<=1, strict capacity is equivalent
to c>1/4, or r<acos(1/4)/2. Equality is not admissible. For r>=pi/4,
the box already contains a smaller cubic box reaching the equality
threshold, so it cannot recover the strict all-pairs capacity property.

The guard and all vertex values in box_capacity.jl are outward interval
calculations. The preliminary positive-real-part test is also valid for
larger individual radii. Floating interval uncertainty may reject a valid
box close to the threshold; this is conservative. The supplied 10,010
capacity controls passed. CertificateArithmetic/verify.py separately
checks the sign count and factorization with exact arithmetic.
