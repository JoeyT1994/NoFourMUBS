"""Exact independent checks of the moment and determinant formulas compiled
by the division-free reconstruction certificate. Solver data are not used.
"""
import ast,inspect,json,textwrap,hashlib,sys
from pathlib import Path
import sympy as S
from dual_reconstruction import affine_data
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierCornerRigidity'))
from exact_algebra import determinant_terms

def main():
    source=inspect.getsource(affine_data)
    xs=S.symbols('x0:3',nonzero=True);ys=S.symbols('y0:3',nonzero=True)
    def bar(z):return S.sympify(z).subs({x:1/x for x in xs+ys},simultaneous=True)
    s,t=sum(xs),sum(ys);r=sum(y/x for x,y in zip(xs,ys));u,v=S.prod(xs),S.prod(ys)
    Pi=s*t-sum(x*y for x,y in zip(xs,ys))
    block=source[source.index('    m={}'):source.index('    powers=')]
    tree=ast.parse(textwrap.dedent(block))
    class Star(ast.NodeTransformer):
        def visit_Call(self,node):
            node=self.generic_visit(node)
            if isinstance(node.func,ast.Attribute) and node.func.attr=='conjugate':
                return ast.copy_location(ast.Call(func=ast.Name(id='bar',ctx=ast.Load()),args=[node.func.value],keywords=[]),node)
            return node
    tree=ast.fix_missing_locations(Star().visit(tree))
    env=dict(s=s,t=t,r=r,u=u,v=v,w=u/v,Pi=Pi,C1=u*bar(Pi),C2=v*bar(Pi),bar=bar,const=S.sympify)
    exec(compile(tree,'<actual moment formulas>','exec'),env)
    for (a,b),p in env['m'].items():assert S.expand(p-sum(x**a*y**b for x,y in zip(xs,ys)))==0,(a,b)
    assert len(env['m'])==31
    tree=ast.parse(source)
    assignment=next(n for n in ast.walk(tree) if isinstance(n,ast.Assign) and isinstance(n.targets[0],ast.Name) and n.targets[0].id=='ds' and isinstance(n.value,ast.List))
    a,b,c,d=S.symbols('a b c d',nonzero=True)
    ds=eval(compile(ast.Expression(assignment.value),'<actual determinant coefficients>','eval'),dict(A=a,B=c,ai=1/a,bi=1/c))
    star=lambda z:S.sympify(z).subs({a:1/a,c:1/c},simultaneous=True)
    pq=[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)]
    polynomial=sum(v*b**p*d**q-star(v)*b**(-p)*d**(-q) for v,(p,q) in zip(ds,pq))
    D=sum(co*S.prod(z**k for z,k in zip((a,b,c,d),e)) for e,co in determinant_terms().items())
    assert S.expand(polynomial-D)==0
    result=dict(status='PASS',implemented_moments_verified_as_universal_Laurent_identities=31,
        implemented_six_determinant_coefficients_verified=True,
        scope='Exact algebra for the new moment matrices; reconstruction symmetric identities and matching remain stated inputs',
        source_sha256={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in [Path(__file__),HERE/'dual_reconstruction.py']})
    (HERE/'dual_algebra_receipt.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
if __name__=='__main__':main()
