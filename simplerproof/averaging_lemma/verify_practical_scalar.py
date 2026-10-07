"""Replay exact identities, polynomial basis audits, and certificate hashes."""
from pathlib import Path
import hashlib,inspect,json,math
from fractions import Fraction
import sympy as sp
from flint import arb,ctx
import positive_scalar_rule as rule
from complementary_scalar_rule import verify_identity
HERE=Path(__file__).resolve().parent
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def run():
    ctx.prec=192;assert verify_identity() and rule.verify()
    source=inspect.getsource(rule.bernstein)
    source=source.replace('return min(v.lower() for v in values),max(v.upper() for v in values)','return values')
    ns=vars(rule).copy();exec(source,ns);controls=ns['bernstein']
    p,j,u,v=sp.symbols('p j u v');co=rule.coefficients()
    Q=sum(c*p**a*j**b for (a,b),c in co)
    rectangles=[[(Fraction(0),Fraction(7)),(Fraction(1,4),Fraction(3))],
                [(Fraction(3),Fraction(4)),(Fraction(1),Fraction(2))],
                [(Fraction(5),Fraction(21,4)),(Fraction(1,3),Fraction(5,3))]]
    checks=0
    for rectangle in rectangles:
        rational=lambda x:sp.Rational(x.numerator,x.denominator)
        (pl,ph),(jl,jh)=[[rational(x) for x in pair] for pair in rectangle]
        transformed=sp.Poly(sp.expand(Q.subs({p:pl+(ph-pl)*u,j:jl+(jh-jl)*v})),u,v)
        exact=[]
        for k in range(6):
            for l in range(6):
                exact.append(sum(c*sp.Rational(math.comb(k,a),math.comb(5,a))*sp.Rational(math.comb(l,b),math.comb(5,b)) for (a,b),c in transformed.terms() if a<=k and b<=l))
        boxes=[[arb(x.numerator)/x.denominator for x in pair] for pair in rectangle]
        actual=controls(boxes,co,True)
        for found,wanted in zip(actual,exact):
            target=arb(int(wanted.p))/int(wanted.q)
            assert found.is_finite() and found.overlaps(target)
            # Independent exact rational point lies in the returned ball.
            assert found.lower()<=target.lower() and target.upper()<=found.upper()
            checks+=1
    progress=json.loads((HERE/'CURRENT_PROGRESS.json').read_text())
    for name,h in {**progress['reports'],**progress['new_receipts']}.items():assert digest(HERE/name)==h
    for name in ['global_complementary_extension.json','global_positive_extension.json']:
        result=json.loads((HERE/name).read_text())
        for path,h in {**result['inputs'],**result['sources']}.items():assert digest(HERE/path)==h
    negative=json.loads((HERE/'global_complementary_extension.json').read_text())
    positive=json.loads((HERE/'global_positive_extension.json').read_text())
    assert negative['remaining_open']==positive['base_open']
    assert progress['open']==positive['remaining_open'] and progress['closed']==positive['total_closed']
    result=dict(status='PASS',exact_scalar_identity=True,exact_positive_branch_factorizations=True,
                independent_Bernstein_controls=checks,new_certified_exclusions=negative['new_closed']+positive['new_closed'],
                current_open=progress['open'],current_closed=progress['closed'],global_confinement_proved=False,
                source_and_receipt_hashes_verified=True,
                sources={name:digest(HERE/name) for name in ['verify_practical_scalar.py','PRACTICAL_SCALAR.tex','global_complementary_extension.json','global_positive_extension.json']})
    (HERE/'practical_scalar_receipt.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))

if __name__=='__main__':run()
