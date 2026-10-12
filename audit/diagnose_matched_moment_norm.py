"""Bounded feasibility check of the SAME forced-row product, before substitution.

Reuse the existing RF arithmetic, seed cache, product quadratic and intrinsic
row-moment identities. No Lean proof, atlas work or replacement certificate.
The diagnostic first collects the product in the physical basis 1,x,y.
"""
from pathlib import Path
import argparse
import datetime
import hashlib
import json
import os
import resource
import signal
import time

from diagnose_matched_universal_norm import (
    RF, Quadratic as Q, Cubic, CubicAlgebra, CTX, inverse3, load_base, CACHE, WORK_CACHE)
from reuse_preflight import require_reuse_review

AUDIT = Path(__file__).resolve().parent
STATUS = AUDIT / 'MATCHED_MOMENT_NORM_DIAGNOSTIC.json'
OUT = AUDIT / 'MATCHED_MOMENT_NORM_COEFFICIENT_CACHE.json'
STATE = {}
START = 0


def checkpoint(phase, **extra):
    STATE.update(phase=phase, elapsed_seconds=time.monotonic()-START, **extra)
    STATUS.write_text(json.dumps(STATE, indent=2)+'\n')
    print(phase, round(STATE['elapsed_seconds'], 2), flush=True)


def mul(a, b):
    out = {}
    for e, x in a.items():
        for f, y in b.items():
            g = tuple(i+j for i,j in zip(e,f))
            out[g] = out.get(g, RF()) + x*y
    return {e:x for e,x in out.items() if x}


def side_moments(s,t,r):
    sb,tb,rb = s.star(),t.star(),r.star()
    q0,q1,q2 = 9-r*rb,9-t*tb,9-s*sb
    p0 = r*s*s+rb*t*t+(3-r*rb)*s*t
    p1 = t*sb*sb+tb*r*r+(3-t*tb)*sb*r
    p2 = s*tb*tb+sb*rb*rb+(3-s*sb)*tb*rb
    return (sb,tb,rb),(q0,q1,q2),(p0,p1,p2)


def calculate():
    assert CACHE.exists(), 'Reuse the existing cache; do not regenerate it.'
    h=load_base(None)
    a,b,c,d=map(RF,CTX.gens())
    s,t,r=-(1+a+b),-(1+c+d),-(1+c/a+d/b)
    (sb,tb,rb),(q0,q1,q2),(p0,p1,p2)=side_moments(s,t,r)
    delta=h['delta']/h['c6']
    omega=(h['U']**2-4*h['V'])/(delta**2)
    Q.U,Q.V=RF(),-omega
    p=Q(h['U']/2,delta/2)
    assert not p*p-p*h['U']+h['V']
    # Derived from the existing three actual_intrinsic_lambda_identities.
    # These divisions are generic guards, not claims about all physical sides.
    permanent=(Q(p0)-p*p1)/(q0-q1)
    conjugate_permanent=(p*p0.star()-p1.star())/(p*(q0-q1))
    product_y=Q(p2.star())/(Q(p0.star())-conjugate_permanent*(q0-q2))
    checkpoint('intrinsic_moments_collected',
        permanent_sizes=[x.stats() for x in permanent.c],
        product_y_sizes=[x.stats() for x in product_y.c])
    gram=[[RF(3),sb,tb],[s,RF(3),rb],[t,r,RF(3)]]
    inverse=inverse3(gram)
    E=[[RF(1),RF(1),RF(1)],[RF(1),a,b],[RF(1),c,d]]
    N=[[-sum(E[k][i].star()*inverse[k][j] for k in range(3))
        for j in range(3)] for i in range(3)]
    # Each row of D is (1,z,v) N (1,x,y)^T.
    linear=[{(0,0):N[0][j],(1,0):N[1][j],(0,1):N[2][j]} for j in range(3)]
    checkpoint('gram_coefficients_ready',coefficient_sizes=[[x.stats() for x in row] for row in N])
    terms=[((3,0,0),Q(1)),((2,1,0),Q(s)),((2,0,1),Q(t)),
           ((1,2,0),p*sb),((1,1,1),permanent),((1,0,2),product_y*tb),
           ((0,3,0),p),((0,2,1),p*r),((0,1,2),product_y*rb),((0,0,3),product_y)]
    coefficients={}
    for index,(powers,coefficient) in enumerate(terms):
        polynomial={(0,0):RF(1)}
        for factor,power in zip(linear,powers):
            for _ in range(power): polynomial=mul(polynomial,factor)
        for e,x in polynomial.items():
            coefficients[e]=coefficients.get(e,Q())+coefficient*x
        checkpoint('collect_cubic_before_companion',term=index+1)
    payload={'method':'same_forced_row_product_in_physical_moment_basis',
        'base_cache_sha256':hashlib.sha256(CACHE.read_bytes()).hexdigest(),
        'coefficient_order':'z_exponent,v_exponent; then w^0,w^1',
        'coefficients':[[list(e),[x.export() for x in v.c]] for e,v in sorted(coefficients.items())],
        'horizontal_product_y':[x.export() for x in product_y.c],
        'horizontal_permanent':[x.export() for x in permanent.c],
        'not_a_lean_proof':True,'atlas_certification':False}
    OUT.write_text(json.dumps(payload)+'\n')
    checkpoint('collected_cubic_ready',coefficient_sizes={str(e):[x.stats() for x in v.c] for e,v in coefficients.items()},
        cache_sha256=hashlib.sha256(OUT.read_bytes()).hexdigest(),norm_computed=False)


def reduce_collected(check_reciprocal=False):
    """Insert the existing companion only after collecting the same product."""
    raw=json.loads(OUT.read_text())
    assert raw['base_cache_sha256']==hashlib.sha256(CACHE.read_bytes()).hexdigest()
    h=load_base(None)
    delta=h['delta']/h['c6']
    omega=(h['U']**2-4*h['V'])/(delta**2)
    Q.U,Q.V=RF(),-omega
    m=Q(h['U'].swap_bc()/2,-delta.swap_bc()/2)
    a,b,c,d=map(RF,CTX.gens())
    s,t,r=-(1+a+c),-(1+b+d),-(1+b/a+d/c)
    (sb,tb,rb),(q0,q1,q2),(p0,p1,p2)=side_moments(s,t,r)
    perbar=(m*p0.star()-p1.star())/(m*(q0-q1))
    product_y=Q(p2.star())/(Q(p0.star())-perbar*(q0-q2))
    vertical=CubicAlgebra(m,s,sb)
    z=vertical.element((0,1,0))
    saved=json.loads(WORK_CACHE.read_text())
    entry=saved['values']['vertical_companion']
    if isinstance(entry,dict):
        data=(AUDIT/entry['file']).read_bytes()
        assert hashlib.sha256(data).hexdigest()==entry['sha256']
        entry=json.loads(data)
    def centered(q):
        A,B=map(RF.restore,q)
        return Q(A+B*h['U']/2,B*delta/2)
    companion=vertical.element([centered(q) for q in entry])
    coefficients={tuple(e):Q(*(RF.restore(x) for x in q)) for e,q in raw['coefficients']}
    f=[vertical.scalar(0) for _ in range(4)]
    for (i,j),q in coefficients.items():
        f[j]=f[j]+vertical.scalar(q)*z**i
    # The existing intrinsic product determines the second vertical row cubic.
    # Reduce v^3 = product_y - product_y*conj(t)*v + t*v^2 before substitution.
    f[0]=f[0]+f[3]*product_y
    f[1]=f[1]-f[3]*(product_y*tb)
    f[2]=f[2]+f[3]*t
    checkpoint('collected_vertical_cubic_reduced',
        reduced_input_sizes=[[[x.stats() for x in q.c] for q in e.c] for e in f[:3]])
    from matched_fraction_free import install
    activate,_=install(Cubic,Q,RF,CTX,checkpoint)
    activate(vertical)
    def saved_step(label,compute):
        path=AUDIT/('MATCHED_MOMENT_NORM_'+label+'.json')
        if path.exists():
            data=json.loads(path.read_text())
            assert data['input_sha256']==hashlib.sha256(OUT.read_bytes()).hexdigest()
            return vertical.element([Q(*(RF.restore(x) for x in q)) for q in data['value']])
        result=compute()
        path.write_text(json.dumps({'input_sha256':hashlib.sha256(OUT.read_bytes()).hexdigest(),
            'value':[[x.export() for x in q.c] for q in result.c],
            'not_a_lean_proof':True,'atlas_certification':False})+'\n')
        return result
    first=saved_step('HORNER_FIRST',lambda:activate.mul_add(f[2],companion,f[1]))
    checkpoint('first_collected_horner_step',
        first_step_sizes=[[x.stats() for x in q.c] for q in first.c])
    norm=saved_step('ROW_PRODUCT',lambda:activate.mul_add(first,companion,f[0]))
    checkpoint('universal_row_product_computed',
        row_product_sizes=[[x.stats() for x in q.c] for q in norm.c],norm_computed=True)
    if not check_reciprocal:
        return
    p=Q(h['U']/2,delta/2)
    basis_star=(2*p.inverse()-h['U'].star())/delta.star()
    assert not basis_star*basis_star-omega.star()
    zinv=vertical.element((sb,-Q(s)/m,Q(1)/m))
    assert not z*zinv-1
    def star_quad(q):
        return Q(q.c[0].star())+basis_star*q.c[1].star()
    def conjugate_product():
        result=vertical.scalar(star_quad(norm.c[2]))
        for q in reversed(norm.c[:2]):
            result=activate.mul_add(result,zinv,vertical.scalar(star_quad(q)))
        return result
    conjugate=saved_step('CONJUGATE_ROW_PRODUCT',conjugate_product)
    checkpoint('reciprocal_row_product_computed',
        reciprocal_sizes=[[x.stats() for x in q.c] for q in conjugate.c])
    residual=saved_step('RECIPROCAL_RESIDUAL',
        lambda:activate.mul_add(norm,conjugate,vertical.scalar(-1)))
    checkpoint('universal_reciprocal_norm_residual',residual_zero=not residual,
        residual_sizes=[[x.stats() for x in q.c] for q in residual.c],
        universal_norm_lean_proved=False)


def main():
    global START
    parser=argparse.ArgumentParser()
    parser.add_argument('--seconds',type=int,default=180)
    parser.add_argument('--reduce-collected',action='store_true')
    parser.add_argument('--check-reciprocal',action='store_true')
    args=parser.parse_args()
    require_reuse_review('matched_existence')
    START=time.monotonic()
    STATE.update(status='RUNNING_UNTRUSTED_DIAGNOSTIC',pid=os.getpid(),
        started_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
        source_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        universal_norm_lean_proved=False,lean_certificate=False,atlas_certification=False)
    def expired(*_):
        signal.alarm(0)
        raise TimeoutError('bounded diagnostic elapsed')
    signal.signal(signal.SIGALRM,expired)
    signal.alarm(args.seconds)
    resource.setrlimit(resource.RLIMIT_CPU,(args.seconds+120,args.seconds+120))
    checkpoint('loading_existing_moment_inputs')
    try:
        if args.reduce_collected or args.check_reciprocal:
            reduce_collected(check_reciprocal=args.check_reciprocal)
        else:
            calculate()
        STATE['status']='DIAGNOSTIC_COMPLETE_NOT_LEAN_PROOF'
    except TimeoutError:
        STATE.update(status='BOUNDED_DIAGNOSTIC_TIMEOUT_NOT_A_PROOF')
    except Exception as e:
        STATE.update(status='DIAGNOSTIC_ERROR_NOT_A_PROOF',reason=repr(e))
        raise
    finally:
        signal.alarm(0)
        checkpoint(STATE['phase'])


if __name__=='__main__':
    main()
