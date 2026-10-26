"""Output-weighted normal bounds for cap transfers (return ZC's weighted.py; ZT_REPORT equations (25)-(29)),
unchanged except for imports."""
import itertools, time
from flint import arb, acb, arb_mat, ctx
import patches as P
import seedcert as SC
import wholeball as Z


def _finite(matrix):
    if not all(value.is_finite() for value in matrix.entries()):
        raise ArithmeticError("nonfinite weighted tensor")
    return matrix


def _upper_min(a, b):
    """Minimum of two proved bounds, frozen as a proved binary upper bound."""
    return arb(min(Z.upper(a), Z.upper(b)))


class WeightedCache:
    """Source-dependent exact-centre tensors for arbitrary output maps C."""

    def __init__(self, model):
        started = time.perf_counter()
        if model.get("edge_chart", False) or model["W"].ncols() != 30:
            raise ValueError("weighted.py currently implements the seed Phi residual only")
        if not model["q"] < 1:
            raise ArithmeticError("a verified original contraction is required")
        # Keep an identity token, not a model back-reference: a model already
        # owns its cache, and avoiding a cycle releases its tensors promptly.
        self.source_id = id(model)
        self.precision = ctx.prec
        self.W, self.X = model["W"], model["X"]
        self.normal_dim = self.X.ncols()
        nn = self.normal_dim
        if self.W.nrows() != nn:
            raise ValueError("normal basis and Gram inverse dimensions differ")
        self.r = model["r"]
        self.tau, self.Z1, self.Z2 = model["tau"], model["Z1"], model["Z2"]
        self.u = P.matrix_norm(model["U"])
        self.x = P.matrix_norm(self.X)
        self.beta = P.matrix_norm(model["H2"])

        hh = model["H"]
        zz = [hh[i, k] * hh[j, k].conjugate()
              for i, j in Z.PAIRS for k in range(6)]
        ss = Z.differences(model["U"])
        tt = Z.differences(model["H2"])
        dx = Z.differences(self.X)

        kr, ki = arb_mat(nn, 90), arb_mat(nn, 90)
        for row in range(nn):
            for monomial in range(90):
                pair = monomial // 6
                coefficient = acb(self.W[row, pair], -self.W[row, pair + 15]) * zz[monomial]
                kr[row, monomial], ki[row, monomial] = coefficient.real, coefficient.imag
        self.kr, self.ki = kr, ki

        # Flattening is output-by-ordered-input-product, exactly as in Z.
        p3r, p3i = arb_mat(90, 64), arb_mat(90, 64)
        p4r, p4i = arb_mat(90, 256), arb_mat(90, 256)
        a2r, a2i = arb_mat(90, 16 * nn), arb_mat(90, 16 * nn)
        triples = list(itertools.product(range(4), repeat=3))
        quads = list(itertools.product(range(4), repeat=4))
        self.weight5, self.weight3a = [], []
        for monomial in range(90):
            s = [ss[monomial, i] for i in range(4)]
            t = [[tt[monomial, 4*i+j] for j in range(4)] for i in range(4)]
            for column, (i, j, k) in enumerate(triples):
                p3r[monomial, column] = -(t[i][j]*s[k] + t[i][k]*s[j] + t[j][k]*s[i])
                p3i[monomial, column] = -s[i]*s[j]*s[k]
            for column, (i, j, k, l) in enumerate(quads):
                p4r[monomial, column] = s[i]*s[j]*s[k]*s[l] - (
                    t[i][j]*t[k][l] + t[i][k]*t[j][l] + t[i][l]*t[j][k])
                p4i[monomial, column] = -(
                    t[i][j]*s[k]*s[l] + t[i][k]*s[j]*s[l] + t[i][l]*s[j]*s[k]
                    + t[j][k]*s[i]*s[l] + t[j][l]*s[i]*s[k] + t[k][l]*s[i]*s[j])
            for i, j, k in itertools.product(range(4), range(4), range(nn)):
                column = (4*i+j)*nn+k
                a2r[monomial, column] = -t[i][j]*dx[monomial, k]
                a2i[monomial, column] = -s[i]*s[j]*dx[monomial, k]

            sn = P.matrix_norm(arb_mat([s]))
            tn = P.matrix_norm(arb_mat(t))
            dn = P.matrix_norm(arb_mat([[dx[monomial, k] for k in range(nn)]]))
            an = sn + self.r*tn
            an2, tn2 = an*an, tn*tn
            an3, an5 = an2*an, an2*an2*an
            self.weight5.append(an5 + 10*tn*an3 + 15*tn2*an)
            self.weight3a.append(dn*(an3 + 3*tn*an))

        self.R3 = _finite(kr*p3r - ki*p3i)
        self.R4 = _finite(kr*p4r - ki*p4i)
        self.A2 = _finite(kr*a2r - ki*a2i)
        self.mixed_UX = _finite(self.W*Z.derivative2(zz, ss, dx))
        self.mixed_XX = _finite(self.W*Z.derivative2(zz, dx, dx))
        self.seconds = time.perf_counter() - started

    def bounds(self, C):
        """Certified global bounds for ||Cz||, ||CDz||, ||CD²z||.

        C is an exact output map represented by an Arb enclosure.  All bounds
        also hold uniformly over the coefficient uncertainty in C.  The
        returned Tj are the minimum of the weighted and ordinary bounds.
        """
        started = time.perf_counter()
        if not isinstance(C, arb_mat) or C.ncols() != self.normal_dim:
            raise ValueError("C must be an Arb matrix with one column per normal coordinate")
        if C.nrows() < 1:
            raise ValueError("output must have at least one row")
        _finite(C)
        r, tau, z1, z2 = self.r, self.tau, self.Z1, self.Z2
        u, x, beta = self.u, self.x, self.beta

        cnorm = P.matrix_norm(C)
        c = P.matrix_norm(C*self.mixed_UX)
        d = P.matrix_norm(C*self.mixed_XX)
        t3 = P.matrix_norm(C*self.R3)
        t4 = P.matrix_norm(C*self.R4)
        a2 = P.matrix_norm(C*self.A2)
        cwnorm = P.matrix_norm(C*self.W)
        L2, L3 = 2*arb(3).sqrt()*cwnorm, 2*arb(6).sqrt()*cwnorm

        ckr, cki = C*self.kr, C*self.ki
        L5, L3a = arb(0), arb(0)
        for monomial in range(90):
            amplitude = arb_mat([[ckr[i, monomial], -cki[i, monomial]]
                                 for i in range(C.nrows())])
            amplitude_norm = P.matrix_norm(amplitude)
            L5 += amplitude_norm*self.weight5[monomial]
            L3a += amplitude_norm*self.weight3a[monomial]

        r2, r3 = r*r, r*r*r
        r4, r5 = r2*r2, r2*r3
        b0 = t3*r3/6 + t4*r4/24 + L5*r5/120
        b1 = t3*r2/2 + t4*r3/6 + L5*r4/24
        b2 = t3*r + t4*r2/2 + L5*r3/6
        base = u*r + beta*r2/2
        full_distance = base+x*tau
        slope = u+beta*r
        x2, x3 = x*x, x*x*x
        tau2, tau3 = tau*tau, tau*tau*tau

        k0 = c*r + a2*r2/2 + L3a*r3/6
        normal_second = d + L3*x2*base
        k = k0 + normal_second*tau + L3*x3*tau2/2
        m1 = c+a2*r+L3a*r2/2+L3*x2*slope*tau
        m2 = L3*x*slope*slope+L2*x*beta
        mzz = d+L3*x2*full_distance

        # Full equation (28), including the sharper integral coefficients.
        raw0 = b0+k0*tau+normal_second*tau2/2+L3*x3*tau3/6
        raw1 = b1+m1*tau+k*z1
        raw2 = b2+m2*tau+2*m1*z1+mzz*z1*z1+k*z2
        old0, old1, old2 = cnorm*tau, cnorm*z1, cnorm*z2
        answer = dict(T0=_upper_min(raw0, old0), T1=_upper_min(raw1, old1),
                      T2=_upper_min(raw2, old2),
                      raw_T0=raw0, raw_T1=raw1, raw_T2=raw2,
                      old_T0=old0, old_T1=old1, old_T2=old2,
                      C_norm=cnorm, c=c, d=d, t3=t3, t4=t4, a2=a2,
                      L2=L2, L3=L3, L5=L5, L3a=L3a,
                      b0=b0, b1=b1, b2=b2, k0=k0, k=k,
                      m1=m1, m2=m2, mzz=mzz)
        if not all(v.is_finite() for v in answer.values()):
            raise ArithmeticError("nonfinite output-weighted bound")
        answer["seconds"] = time.perf_counter()-started
        return answer


def cache_for(model):
    """Construct at most once per already-verified source model."""
    cache = model.get("_output_weighted_cache")
    if cache is None:
        cache = WeightedCache(model)
        model["_output_weighted_cache"] = cache
    elif not isinstance(cache, WeightedCache) or cache.source_id != id(model):
        raise ValueError("weighted cache belongs to another source model")
    return cache


def bounds(model, C):
    return cache_for(model).bounds(C)


def target_bounds(transfer):
    """Convenience adapter for a nonlinear patches.Transfer object.

    polynomial error = hnorm*delta²/2 + T0
    local error      = local_hessian*delta²/2
    """
    if transfer.linear:
        zero = arb(0)
        return dict(T0=zero, T1=zero, T2=zero, old_T0=zero, old_T1=zero,
                    old_T2=zero, raw_T0=zero, raw_T1=zero, raw_T2=zero,
                    predictor_hessian=zero, local_hessian=zero,
                    old_local_hessian=zero, seconds=0.0)
    result = bounds(transfer.model, transfer.AX)
    result["predictor_hessian"] = transfer.hnorm
    result["local_hessian"] = transfer.hnorm+result["T2"]
    result["old_local_hessian"] = transfer.hnorm+result["old_T2"]
    return result


