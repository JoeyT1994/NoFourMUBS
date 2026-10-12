"""Bounded, untrusted universal calculation of the supplied cubic norm.

Reuse the original fixed_data and its literal norm formula. The necessary
adapter performs arithmetic in the product quadratic before the two cubics,
instead of postponing quadratic reduction as the specialization script does.
This is a feasibility diagnostic, not a Lean certificate or an atlas check.
"""
from pathlib import Path
import argparse
import ast
import datetime
import hashlib
import json
import os
import resource
import runpy
import signal
import time

import sympy as sp
from flint import fmpq, fmpq_mpoly, fmpq_mpoly_ctx

from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
SOURCE = ROOT / 'source_material/ClassificationPaper/CertificatesandLean/certificates/generic_cover/exact_lower_block_specialization.py'
SOURCE_HASH = 'f93c0a06af80e6a3cb90edbfc8491aa3d8b8b537e6c0a11a2490b532a37d8577'
STATUS = AUDIT / 'MATCHED_UNIVERSAL_NORM_DIAGNOSTIC.json'
CACHE = AUDIT / 'MATCHED_SYMBOLIC_BASE_CACHE.json'
WORK_CACHE = AUDIT / 'MATCHED_UNIVERSAL_NORM_WORK_CACHE.json'
CTX = fmpq_mpoly_ctx.get(('a', 'b', 'c', 'd'))
ONE = CTX.constant(1)
ZERO = CTX.constant(0)
STATE = {}
START = 0.0


def checkpoint(phase, **extra):
    STATE.update(phase=phase, elapsed_seconds=time.monotonic()-START, **extra)
    STATUS.write_text(json.dumps(STATE, indent=2)+'\n')
    print(phase, round(STATE['elapsed_seconds'], 2), flush=True)


class RF:
    """Untrusted FLINT rational functions; every value stays reduced."""
    __slots__ = ('n', 'd')

    def __init__(self, n=0, d=None, reduced=False):
        n = n if isinstance(n, fmpq_mpoly) else CTX.constant(n)
        d = ONE if d is None else d
        if not d:
            raise ZeroDivisionError('zero rational-function denominator')
        if not n:
            self.n, self.d = ZERO, ONE
            return
        if not reduced and d != ONE:
            g = n.gcd(d)
            n, d = n//g, d//g
        leading = d.leading_coefficient()
        self.n, self.d = n/leading, d/leading

    @staticmethod
    def coerce(x):
        return x if isinstance(x, RF) else RF(x)

    def __bool__(self):
        return bool(self.n)

    def __neg__(self):
        return RF(-self.n, self.d, True)

    def __add__(self, other):
        b = RF.coerce(other)
        if not self:
            return b
        if not b:
            return self
        if self.d == b.d:
            return RF(self.n+b.n, self.d)
        g = self.d.gcd(b.d)
        d1, d2 = self.d//g, b.d//g
        n = self.n*d2+b.n*d1
        h = n.gcd(g)
        return RF(n//h, d1*(b.d//h), True)

    __radd__ = __add__

    def __sub__(self, other):
        return self + -RF.coerce(other)

    def __rsub__(self, other):
        return RF.coerce(other) + -self

    def __mul__(self, other):
        b = RF.coerce(other)
        if not self or not b:
            return RF()
        g, h = self.n.gcd(b.d), b.n.gcd(self.d)
        return RF((self.n//g)*(b.n//h), (self.d//h)*(b.d//g), True)

    __rmul__ = __mul__

    def inverse(self):
        return RF(self.d, self.n, True)

    def __truediv__(self, other):
        return self*RF.coerce(other).inverse()

    def __pow__(self, n):
        if n < 0:
            return self.inverse()**(-n)
        return RF(self.n**n, self.d**n, True)

    def swap_bc(self):
        def swap(p):
            return CTX.from_dict({(e[0], e[2], e[1], e[3]): c for e,c in p.terms()})
        return RF(swap(self.n), swap(self.d), True)

    def star(self):
        """Reciprocal-seed involution, leaving rational coefficients fixed."""
        def reverse(p):
            ds = p.degrees()
            return CTX.from_dict({tuple(d-ei for d,ei in zip(ds,e)): c for e,c in p.terms()}), ds
        if not self:
            return self
        n, nd = reverse(self.n)
        d, dd = reverse(self.d)
        for x, ni, di in zip(CTX.gens(), nd, dd):
            if di > ni:
                n *= x**(di-ni)
            elif ni > di:
                d *= x**(ni-di)
        return RF(n, d)

    def stats(self):
        return {'numerator_terms':len(self.n), 'denominator_terms':len(self.d)}

    def export(self):
        return [[[[int(v) for v in e],str(c)] for e,c in p.terms()] for p in (self.n,self.d)]

    @classmethod
    def restore(cls, pair):
        return cls(*(CTX.from_dict({tuple(e):fmpq(c) for e,c in rows}) for rows in pair), reduced=True)


class Quadratic:
    """a+b*u with the original u^2-U*u+V=0 relation."""
    U = V = None

    def __init__(self, a=0, b=0):
        self.c = (RF.coerce(a), RF.coerce(b))

    @staticmethod
    def coerce(x):
        return x if isinstance(x, Quadratic) else Quadratic(x)

    def __bool__(self):
        return any(self.c)

    def __neg__(self):
        return Quadratic(*(-a for a in self.c))

    def __add__(self, other):
        b = self.coerce(other)
        return Quadratic(*(a+c for a,c in zip(self.c,b.c)))

    __radd__ = __add__

    def __sub__(self, other):
        return self + -self.coerce(other)

    def __rsub__(self, other):
        return self.coerce(other) + -self

    def __mul__(self, other):
        b = self.coerce(other)
        ac, ad = self.c
        bc, bd = b.c
        high = ad*bd
        return Quadratic(ac*bc-self.V*high, ac*bd+ad*bc+self.U*high)

    __rmul__ = __mul__

    def inverse(self):
        a,b = self.c
        den = a*a+self.U*a*b+self.V*b*b
        return Quadratic((a+self.U*b)/den, -b/den)

    def __truediv__(self, other):
        return self*self.coerce(other).inverse()

    def __pow__(self, n):
        if n < 0:
            return self.inverse()**(-n)
        out = Quadratic(1)
        for _ in range(n):
            out = out*self
        return out


def inverse3(m, first_column_only=False):
    """Ordinary adjugate inversion, used only for untrusted arithmetic."""
    cof = []
    for i in range(1 if first_column_only else 3):
        row=[]
        for j in range(3):
            rs=[r for r in range(3) if r != i]
            cs=[c for c in range(3) if c != j]
            row.append((-1)**(i+j)*(m[rs[0]][cs[0]]*m[rs[1]][cs[1]]-
                                    m[rs[0]][cs[1]]*m[rs[1]][cs[0]]))
        cof.append(row)
    det=sum(m[0][j]*cof[0][j] for j in range(3))
    invdet=det.inverse()
    if first_column_only:
        return [cof[0][i]*invdet for i in range(3)]
    return [[cof[j][i]*invdet for j in range(3)] for i in range(3)]


class CubicAlgebra:
    """Three coefficients with z^3=product-product*sum_bar*z+sum*z^2."""
    def __init__(self, product, sum_x, sum_bar):
        self.mod = tuple(map(Quadratic.coerce, (product,-product*sum_bar,sum_x)))

    def element(self, coefficients):
        return Cubic(self, tuple(map(Quadratic.coerce, coefficients)))

    def scalar(self, x):
        return self.element((x,0,0))

    def polynomial(self, coefficients):
        z=self.element((0,1,0))
        out=self.scalar(0)
        for c in reversed(coefficients):
            out=out*z+self.scalar(c)
        return out


class Cubic:
    def __init__(self, parent, coefficients):
        assert len(coefficients)==3
        self.parent,self.c=parent,coefficients

    def coerce(self, other):
        if not isinstance(other,Cubic):
            return self.parent.scalar(other)
        assert other.parent is self.parent
        return other

    def __bool__(self):
        return any(self.c)

    def __neg__(self):
        return self.parent.element([-a for a in self.c])

    def __add__(self, other):
        b=self.coerce(other)
        return self.parent.element([a+c for a,c in zip(self.c,b.c)])

    __radd__=__add__

    def __sub__(self, other):
        return self + -self.coerce(other)

    def __rsub__(self, other):
        return self.coerce(other) + -self

    def __mul__(self, other):
        b=self.coerce(other)
        out=[Quadratic() for _ in range(5)]
        for i,a in enumerate(self.c):
            for j,c in enumerate(b.c):
                out[i+j]=out[i+j]+a*c
        for k in [4,3]:
            for j,c in enumerate(self.parent.mod):
                out[k-3+j]=out[k-3+j]+out[k]*c
        return self.parent.element(out[:3])

    __rmul__=__mul__

    def __pow__(self, n):
        if n < 0:
            return self.inverse()**(-n)
        out=self.parent.scalar(1)
        for _ in range(n):
            out=out*self
        return out

    def inverse(self):
        z=self.parent.element((0,1,0))
        columns=[self,(self*z),(self*z*z)]
        matrix=[[columns[j].c[i] for j in range(3)] for i in range(3)]
        answer=self.parent.element(inverse3(matrix, first_column_only=True))
        assert not self*answer-1
        return answer


def load_base(original):
    if CACHE.exists():
        d=json.loads(CACHE.read_text())
        assert d['original_sha256']==SOURCE_HASH
        return {k:([RF.restore(x) for x in v] if k in ('A','B') else RF.restore(v))
                for k,v in d['data'].items()}
    seed=sp.symbols('a b c d', nonzero=True)
    product=sp.Symbol('product', nonzero=True)
    checkpoint('original_fixed_data')
    h=original['fixed_data'](seed,product,original['x'])
    def convert(expression):
        n,d=sp.fraction(sp.cancel(expression))
        def poly(x):
            return CTX.from_dict({e:fmpq(str(c)) for e,c in sp.Poly(x,*seed).terms()})
        return RF(poly(n),poly(d))
    out={k:convert(h[k]) for k in ('U','V','c6','delta','sum_x','sum_x_bar')}
    for k in ('A','B'):
        out[k]=[convert(h[k].nth(i)) for i in range(h[k].degree()+1)]
    CACHE.write_text(json.dumps({'original_sha256':SOURCE_HASH,
        'data':{k:([x.export() for x in v] if isinstance(v,list) else v.export()) for k,v in out.items()},
        'not_a_lean_proof':True,'atlas_certification':False})+'\n')
    return out


def calculate(original, h, prepare_common_denominator=False, fraction_free=False):
    Quadratic.U,Quadratic.V=h['U'],h['V']
    p=Quadratic(0,1)
    v={k:([x.swap_bc() for x in value] if isinstance(value,list) else value.swap_bc())
       for k,value in h.items()}
    kappa=v['delta']*h['c6']/(h['delta']*v['c6'])
    m=(Quadratic(v['U'])-Quadratic(kappa)*(2*p-h['U']))/2
    assert not m*m-m*v['U']+v['V']
    checkpoint('matched_product_quadratic_verified')
    horizontal=CubicAlgebra(p,h['sum_x'],h['sum_x_bar'])
    vertical=CubicAlgebra(m,v['sum_x'],v['sum_x_bar'])
    cache_identity={'original_sha256':SOURCE_HASH,
                    'base_cache_sha256':hashlib.sha256(CACHE.read_bytes()).hexdigest(),
                    'method':'product_quadratic_trace_interpolation_v1'}
    saved=json.loads(WORK_CACHE.read_text()) if WORK_CACHE.exists() else cache_identity|{'values':{}}
    assert all(saved.get(k)==v for k,v in cache_identity.items())
    def cached_cubic(label, parent, compute):
        if label in saved['values']:
            raw=saved['values'][label]
            if isinstance(raw,dict):
                payload=(AUDIT/raw['file']).read_bytes()
                assert hashlib.sha256(payload).hexdigest()==raw['sha256']
                raw=json.loads(payload)
            return parent.element([Quadratic(*(RF.restore(x) for x in q)) for q in raw])
        value=compute()
        payload=json.dumps([[x.export() for x in q.c] for q in value.c]).encode()
        part=AUDIT/f'MATCHED_NORM_INTERMEDIATE_{label}.json'
        part.write_bytes(payload)
        saved['values'][label]={'file':part.name,'sha256':hashlib.sha256(payload).hexdigest()}
        WORK_CACHE.write_text(json.dumps(saved)+'\n')
        return value
    x=horizontal.element((0,1,0))
    z=vertical.element((0,1,0))
    checkpoint('horizontal_companion_inverse')
    inv_y=cached_cubic('horizontal_inverse_y',horizontal,
        lambda: -(horizontal.polynomial(h['B'])*horizontal.polynomial(h['A']).inverse()))
    checkpoint('vertical_companion_reuse')
    def vertical_companion_from_saved_inverse():
        # Swap the two seed coordinates and apply the reciprocal involution
        # to the saved 1/y polynomial. This computes the same -A_v/B_v;
        # its defining relation is checked below, without another inversion.
        minv=m.inverse()
        assert not minv*minv-minv*v['U'].star()+v['V'].star()
        zinv=vertical.element((v['sum_x_bar'],-Quadratic(v['sum_x'])/m,
                              Quadratic(1)/m))
        assert not z*zinv-1
        terms=[]
        for i,q in enumerate(inv_y.c):
            checkpoint('vertical_companion_reuse_term',term=i)
            def term(q=q,i=i):
                coefficient=Quadratic(q.c[0].swap_bc().star())+minv*q.c[1].swap_bc().star()
                return vertical.scalar(coefficient)*zinv**i
            terms.append(cached_cubic(f'vertical_companion_reuse_term_{i}',vertical,term))
        return sum(terms)
    companion=cached_cubic('vertical_companion',vertical,vertical_companion_from_saved_inverse)
    checkpoint('vertical_companion_defining_relation')
    assert not vertical.polynomial(v['B'])*companion+vertical.polynomial(v['A'])
    inverse_x=horizontal.element((h['sum_x_bar'],-Quadratic(h['sum_x'])/p,Quadratic(1)/p))
    assert not x*inverse_x-1
    def trace(value):
        a,b,c=value.c
        return 3*a+b*h['sum_x']+c*(Quadratic(h['sum_x']**2)-2*p*h['sum_x_bar'])
    pairing=[[trace(row*x**k) for k in range(3)] for row in [horizontal.scalar(1),inverse_x,inv_y]]
    checkpoint('trace_pairing_inverse')
    inverse=inverse3(pairing)
    for i in range(3):
        for j in range(3):
            assert not sum(pairing[i][k]*inverse[k][j] for k in range(3))-int(i==j)
    a,b,c,d=map(RF,CTX.gens())
    target=[-(1+z+companion),-(1+z*a.inverse()+companion*b.inverse()),
            -(1+z*c.inverse()+companion*d.inverse())]
    ds=[cached_cubic(f'forced_entry_coefficient_{i}',vertical,
        lambda i=i:sum(target[j]*inverse[i][j] for j in range(3))) for i in range(3)]
    checkpoint('forced_entry_ready',entry_coefficient_sizes=[[x.stats() for q in e.c for x in q.c] for e in ds])
    # Change only the basis of this same quadratic algebra before taking the
    # original cubic norm: p=(U+D*w)/2 and w^2=(U^2-4*V)/D^2.
    # This avoids repeatedly multiplying the expanded U,V denominators.
    old_u,old_v=Quadratic.U,Quadratic.V
    delta=h['delta']/h['c6']
    omega=(old_u**2-4*old_v)/(delta**2)
    def centered(q):
        a,b=q.c
        return Quadratic(a+b*old_u/2,b*delta/2)
    p=centered(p)
    vertical.mod=tuple(centered(q) for q in vertical.mod)
    ds=[cached_cubic(f'centered_entry_coefficient_{i}', vertical,
        lambda e=e: vertical.element([centered(q) for q in e.c]))
        for i,e in enumerate(ds)]
    Quadratic.U,Quadratic.V=RF(),-omega
    assert not p*p-p*old_u+old_v
    basis_star=(2*p.inverse()-old_u.star())/delta.star()
    checkpoint('same_quadratic_centered_basis',centered_entry_sizes=[[x.stats() for q in e.c for x in q.c] for e in ds],
               centered_square_sizes=omega.stats(),reciprocal_basis_sizes=[x.stats() for x in basis_star.c])
    if prepare_common_denominator:
        # Reuse the original fraction_free option's homogeneous cubic norm.
        # This preparation only puts its existing entry coefficients over one
        # denominator; it neither evaluates nor certifies that norm identity.
        coefficients=[x for e in ds for q in e.c for x in q.c]
        cores=[]
        shifts=[]
        for x in coefficients:
            terms=list(x.d.terms())
            shift=tuple(int(min(e[i] for e,_ in terms)) for i in range(4))
            monomial=CTX.from_dict({shift:fmpq(1)})
            cores.append(x.d//monomial)
            shifts.append(shift)
        checkpoint('centered_denominator_cores',
                   same_core=all(c==cores[0] for c in cores),
                   core_terms=len(cores[0]),monomial_shifts=shifts)
        assert all(c==cores[0] for c in cores), 'Different denominator cores; inspect before proceeding.'
        maximum=tuple(max(e[i] for e in shifts) for i in range(4))
        common=cores[0]*CTX.from_dict({maximum:fmpq(1)})
        numerators=[]
        for x in coefficients:
            multiplier=common//x.d
            assert multiplier*x.d==common
            numerators.append(x.n*multiplier)
        def export_poly(p):
            return [[[int(v) for v in e],str(c)] for e,c in p.terms()]
        payload={'original_sha256':SOURCE_HASH,
            'base_cache_sha256':hashlib.sha256(CACHE.read_bytes()).hexdigest(),
            'entry_cache_pins':{f'centered_entry_coefficient_{i}':saved['values'][f'centered_entry_coefficient_{i}'] for i in range(3)},
            'denominator':export_poly(common),
            'numerators':[export_poly(p) for p in numerators],
            'ordering':'d0,d1,d2; then z^0,z^1,z^2; then w^0,w^1',
            'omega':omega.export(),
            'vertical_modulus':[[x.export() for x in q.c] for q in vertical.mod],
            'horizontal_product':[x.export() for x in p.c],
            'norm_computed':False,'not_a_lean_proof':True,'atlas_certification':False}
        target=AUDIT/'MATCHED_NORM_COMMON_DENOMINATOR_CACHE.json'
        target.write_text(json.dumps(payload)+'\n')
        checkpoint('common_denominator_prepared',common_denominator_terms=len(common),
            numerator_terms=[len(n) for n in numerators],cache_file=target.name,
            cache_sha256=hashlib.sha256(target.read_bytes()).hexdigest(),
            norm_computed=False)
        return
    if fraction_free:
        from matched_fraction_free import install
        activate, _ = install(Cubic, Quadratic, RF, CTX, checkpoint)
        activate(vertical)
    qs=list(map(vertical.scalar,(-p,p*h['sum_x_bar'],-h['sum_x'])))
    env={'__builtins__':{}}
    for label,vals in [('d',ds),('q',qs)]:
        for i,x in enumerate(vals):
            env[f'{label}{i}']=x
            checkpoint('original_norm_power',coefficient=f'{label}{i}',power=2)
            env[f'{label}{i}_2']=cached_cubic(f'centered_{label}{i}_power2',vertical,lambda x=x:x*x)
            if label=='d':
                checkpoint('original_norm_power',coefficient=f'{label}{i}',power=3)
                env[f'{label}{i}_3']=cached_cubic(f'centered_{label}{i}_power3',vertical,
                    lambda x=x,label=label,i=i:env[f'{label}{i}_2']*x)
    def vterm(coefficient,*factors):
        out=vertical.scalar(coefficient)
        for f in factors:out=out*f
        return out
    env['vterm']=vterm
    tree=ast.parse(SOURCE.read_text())
    function=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='build_row_norm')
    assignment=next(n for n in ast.walk(function) if isinstance(n,ast.Assign)
        and any(isinstance(t,ast.Name) and t.id=='terms' for t in n.targets))
    expression=ast.fix_missing_locations(ast.Expression(assignment.value))
    checkpoint('original_cubic_norm_formula')
    norm=sum(eval(compile(expression,str(SOURCE),'eval'),env))
    checkpoint('universal_row_product_computed',norm_coefficient_sizes=[x.stats() for q in norm.c for x in q.c])
    zinv=z.inverse()
    def star_quad(q):
        return Quadratic(q.c[0].star())+Quadratic(q.c[1].star())*basis_star
    conjugate=sum(vertical.scalar(star_quad(q))*zinv**i for i,q in enumerate(norm.c))
    residual=norm*conjugate-1
    checkpoint('reciprocal_norm_residual',residual_zero=not residual,
               residual_coefficient_sizes=[x.stats() for q in residual.c for x in q.c])


def main():
    global START
    parser=argparse.ArgumentParser()
    parser.add_argument('--seconds',type=int,default=120)
    parser.add_argument('--prepare-common-denominator',action='store_true',
                        help='Only cache a common denominator for the existing cubic norm inputs.')
    parser.add_argument('--fraction-free',action='store_true',
                        help='Evaluate the same norm using shared-denominator cubic multiplication.')
    args=parser.parse_args()
    require_reuse_review('matched_existence')
    assert hashlib.sha256(SOURCE.read_bytes()).hexdigest()==SOURCE_HASH
    START=time.monotonic()
    STATE.update(status='RUNNING_UNTRUSTED_DIAGNOSTIC',pid=os.getpid(),
        started_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
        source=str(SOURCE.relative_to(ROOT)),original_sha256=SOURCE_HASH,
        adapter_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        fraction_free_arithmetic=args.fraction_free,
        fraction_free_backend_sha256=(hashlib.sha256(
            (AUDIT/'matched_fraction_free.py').read_bytes()).hexdigest()
            if args.fraction_free else None),
        universal_norm_lean_proved=False,lean_certificate=False,atlas_certification=False)
    def expired(*_):
        signal.alarm(0)
        raise TimeoutError('bounded symbolic diagnostic elapsed')
    signal.signal(signal.SIGALRM,expired)
    signal.alarm(args.seconds)
    # A separate hard CPU bound needs no competing Python signal handler.
    resource.setrlimit(resource.RLIMIT_CPU,(args.seconds+120,args.seconds+120))
    checkpoint('loading_existing_algebra')
    try:
        original=runpy.run_path(str(SOURCE),run_name='__diagnostic__')
        h=load_base(original)
        checkpoint('symbolic_base_ready')
        calculate(original,h,prepare_common_denominator=args.prepare_common_denominator,
                  fraction_free=args.fraction_free)
        STATE['status']='DIAGNOSTIC_COMPLETE_NOT_LEAN_PROOF'
    except TimeoutError:
        STATE.update(status='BOUNDED_DIAGNOSTIC_TIMEOUT_NOT_A_PROOF',reason='bounded symbolic diagnostic elapsed')
    except Exception as e:
        STATE.update(status='DIAGNOSTIC_ERROR_NOT_A_PROOF',reason=repr(e))
        raise
    finally:
        signal.alarm(0)
        checkpoint(STATE['phase'])


if __name__=='__main__':
    main()
