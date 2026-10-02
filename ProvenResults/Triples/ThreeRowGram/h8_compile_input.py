"""Print exact finite common-ray input for H8. No exclusion inferred."""
import argparse
import itertools as it
import json
import sympy as sp
from exact_q import carrier,Q


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--prime',type=int,default=1009)
    p=parser.parse_args().prime
    assert sp.isprime(p) and p%8==1
    z8=pow(int(sp.primitive_root(p)),(p-1)//8,p)
    ii=pow(z8,2,p);r2=(z8+pow(z8,-1,p))%p
    def val(q):
        assert set(q.c)<={0,1,2,3}
        return sum(v.numerator*pow(v.denominator,-1,p)*pow(ii,k&1,p)
                   *pow(r2,(k>>1)&1,p) for k,v in q.c.items())%p
    hh=carrier();H=[[val(x/row[0]) for x in row] for row in hh]
    for i,j in it.product(range(6),repeat=2):
        assert sum(H[i][k]*pow(H[j][k],-1,p) for k in range(6))%p==6*(i==j)
    m=0
    for R,C in it.product(it.combinations(range(6),2),repeat=2):
        m+=int((H[R[0]][C[0]]*H[R[1]][C[1]]-H[R[0]][C[1]]*H[R[1]][C[0]])%p==0)
    assert m==6
    for R,C in it.product(it.combinations(range(6),3),repeat=2):
        assert int(sp.Matrix([[H[r][c] for c in C] for r in R]).det())%p
    names=[f'x{i}' for i in range(1,6)]+[f'y{i}' for i in range(1,6)]
    polys=[f'x{i}*y{i}-1' for i in range(1,6)]
    for j in range(5):
        terms={}
        for r,s in it.product(range(6),repeat=2):
            mon='*'.join(([f'x{r}'] if r else [])+([f'y{s}'] if s else []))
            terms[mon]=(terms.get(mon,0)+H[s][j]*pow(H[r][j],-1,p))%p
        terms['']=(terms.get('',0)-6)%p
        polys.append('+'.join(str(c)+('*'+mon if mon else '') for mon,c in terms.items() if c))
    print(json.dumps({'evidence_label':'Discovery evidence','prime':p,'zeta8_image':z8,
                      'H':H,'zero2_count':m,'nonzero3_count':400,
                      'variables':10,'equations':10,'expected_affine_length':240,
                      'input':','.join(names)+'\n'+str(p)+'\n'+',\n'.join(polys)+'\n'},sort_keys=True))


if __name__=='__main__':main()
