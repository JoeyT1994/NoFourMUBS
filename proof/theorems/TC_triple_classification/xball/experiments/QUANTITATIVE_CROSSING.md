# Quantitative crossing via commuting actions — proposed certificate

28 October 2026. **NOT ESTABLISHED as an X-ball certificate.** The following
is a sufficient criterion and a proof plan. No acceptance path uses it yet.

The two crossing patterns cannot be classified by a single-anchor moving
inverse: each anchor moves the tangent plane belonging to the other branch.
Smaller radii do not repair that exact rank deficiency.

## Equivariant reduction

Work in the 55-dimensional horizontal phase space E, with the Euclidean
metric inherited from the 72 entries of H and K. Let F be the 96 coherent
real MUB equations centered at an exact crossing. Suppose two commuting
orthogonal order-three actions P0,P1 satisfy exact Fourier covariance
F(Pi x)=Yi F(x), with orthogonal equation actions Yi. Let J=DF(0).

The exact checks to perform are rank(J|E)=51, a four-dimensional kernel
K=K0 orthogonal-direct-sum K1, dim(Ki)=2, and Ki the kernel fixed plane
of Pi. The fixed planes must have zero intersection. The matrix of the
mixed Hessian D²F(0)[K0,K1], after quotienting im(J), must have rank four.
`crossing_structure.py` checks these statements over Q(sqrt(3)), including
the base phases in the Fourier covariance; permutation commutation alone
would be insufficient.

Set V=E perpendicular to K. Choose a finite-group-averaged linear map
A: R^96 -> V approximating a normal inverse of J. Averaging and projection
are exact constructions, even when their initial coefficients are binary
rational proposals. They ensure A Yi=Pi A. Certify d=||I_V-AJ|V||<1.
For H=AF, establish a bound h on ||D²H|| in the ambient ball of radius R.

Take kernel radius rho and normal radius eta, with rho²+eta² <= R².
If q=d+h R<1 and h rho²/2+q eta<eta, the map

    y -> y - H(k+y)

is a uniform contraction of the closed V-ball of radius eta, for each
||k||<=rho. This gives a unique analytic solution y=phi(k) to H=0,
and every physical zero in this product domain is on its graph.
Equivariance and uniqueness make phi equivariant under both actions.

The supplied qualitative crossing theorem provides genuine solution
surface germs tangent to Ki and fixed by Pi. Projection to K identifies
each with an open germ of Ki. Their normal coordinates must equal phi
by uniqueness. Consequently F(k+phi(k)) vanishes on an open germ of each
Ki, and hence on each entire connected Ki disk in this analytic chart,
by the real-analytic identity theorem. This uses the qualitative theorem
only to establish identities, not to import an unspecified radius.

This is the main simplification: the equivariant kernel coordinates
already put the two surfaces on linear planes. No quantitative nonlinear
straightening map is needed.

## Mixed obstruction and a usable bound

Choose orthonormal bases of K0,K1. Construct B: R^96 -> R^4 such that
BJ=0 and B D²F(0)[u_i,v_j]=the corresponding standard basis vector.
The exact rank-four calculation makes such a B possible. Let G=BF.
Certify g2>=||D²G(0)|| and g3>=sup ||D³G|| on the same ambient ball.

Write t=h R/(1-q), s=h(1+t²)/(1-q). Implicit differentiation gives
||Dphi||<=t and ||D²phi||<=s. For f(k)=G(k+phi(k)), the difference
of its Hessian from D²G(0)|K is bounded by

    epsilon = g3 R (1+t²) + g2 (2t+t²) + (g2+g3 R) R s.

Here BJ=0 removes the constant-J term in the second derivative of the
composition, and orthogonality of K and V gives ||D(k+phi)||²<=1+t².
Every asserted derivative norm must use a consistent Euclidean tensor
operator norm or a proved larger norm.

Because f vanishes on both planes, the double fundamental theorem of
calculus gives f(u,v)=C(u,v)(u tensor v), where C is the average mixed
Hessian over (su,tv), s,t in [0,1]. Each of its four columns differs
from its identity column by at most epsilon, so

    ||C-I_4|| <= ||C-I_4||_F <= 2 epsilon.

If 2 epsilon<1, C is invertible everywhere in the kernel ball. Hence
f=0 forces u tensor v=0, i.e. u=0 or v=0. Every physical zero is on
one of the two symmetry surfaces.

## Remaining quantitative obligations

Implement and validate A, B and the derivative bounds with Arb; choose
rho, eta, R satisfying all strict inequalities; and include every true
triple represented by the core's complete all-K patterns in this product
domain after one common gauge and exact centre matching. The graph's
existence alone does not establish that last inclusion. If the achieved
radius is smaller than r/4, the intervening original-coordinate annulus
must also be covered and classified. No smaller radius replaces r=0.13.

For core inclusion the product domain can be substantially more useful
than its inscribed phase ball. The original all-K model has a common
four-parameter carrier and a second-order remainder. Project that carrier
and remainder onto K and V separately and compare with rho and eta.
The v3 calculation uses rho=7R/8 and eta=R/8, so rho²+eta²<R². A true
triple belongs to the implicit-function tube when both projected bounds
pass; its full phase norm need not fit inside the smaller eta-ball.

To compare the native lift with an exact centre, first use one common
row rephasing, independent column rephasings, and integer phase windings
to match the dephased centre. Then apply the orthogonal horizontal gauge
projection W. The exact identity W D=W for the shared dephasing map D
ensures the common four-coordinate carrier transforms by W alone. The
H and six K-column error bounds combine by the Euclidean sum of squares;
the K and V projections have norm one. Every bound includes the entire
complete-cover pattern, not just its numerical fitted basis.
