# An exact full-rank example separating scalar and affine cap multipliers

**PROVED; CERTIFIED by exact rational arithmetic.** On the spherical cap
\(\|x\|=1,\ x_1\ge1/2\) in \(\mathbb R^4\), put

\[
 F=\operatorname{diag}(2,1,1,1),\qquad
 d=(-9/8,0,0,0),\qquad f(x)=\|d+Fx\|^2.
\]

The map is invertible: \(\det F=2\). On the sphere,
\[
 f(x)=3x_1^2-\frac92x_1+\frac{145}{64}.
\]
Its leading coefficient is positive, and its two endpoint values at
\(x_1=1/2,1\) are both \(49/64\). Therefore
\[
 \max_{\|x\|=1,\,x_1\ge1/2} f(x)=\frac{49}{64}<1.
\]

## Scalar cap multiplier: a strict duality gap

A scalar certificate requires the polynomial
\[
 s-f(x)-\lambda(1-\|x\|^2)-\mu(x_1-1/2)
\]
to be globally nonnegative, with \(\mu\ge0\). Evaluation at
\(x=\pm e_1\) yields
\[
 s\ge\frac{49}{64}+\frac\mu2,
 \qquad
 s\ge\frac{625}{64}-\frac{3\mu}{2}.
\]
Taking three quarters of the first inequality and one quarter of the
second eliminates \(\mu\) and gives
\[
 s\ge\frac{193}{64}>1.
\]
The bound is attained at \(\mu=9/2,\lambda=4\); the homogeneous
certificate matrix is \(\operatorname{diag}(0,3,3,3,0)\). Thus the scalar
certificate cannot verify this valid strict target \(f<1\) on the cap.

## Affine cap multiplier: a strictly positive definite certificate

The exact identity
\[
 \frac{49}{64}-f(x)
 =(1-\|x\|^2)+3(1-x_1)(x_1-1/2)
\]
uses a multiplier \(3(1-x_1)\) that is nonnegative throughout the unit
ball. Choose
\[
 s=\frac{25}{32},\qquad
 \lambda=\frac{129}{128},\qquad
 \mu=3,\qquad a=(-3,0,0,0).
\]
Then \(\mu^2=\|a\|^2=9\) and
\[
 s-f(x)-\lambda(1-\|x\|^2)
       -(\mu+a\cdot x)(x_1-1/2)
 =\frac{1+\|x\|^2}{128}.
\]
The homogeneous matrix is exactly \(I_5/128\), so it is strictly
positive definite, and \(s=25/32<1\). This certifies the target inequality with
the affine multiplier already supported by the general cap checker.

`affine_multiplier_example.py` checks the matrix, the multiplier cone,
the scalar lower bound and its attaining matrix, the true cap maximum,
and the strict target bound using only Python's `Fraction` arithmetic.
The checked values are recorded in `affine_multiplier_example.json`.

This is an exact example of the general target-certificate theorem, rather
than one of the supplied seed-ball transfers. The general quadratic
losslessness statement is proved separately by the moment-hull argument;
this finite example by itself does not prove that statement.
