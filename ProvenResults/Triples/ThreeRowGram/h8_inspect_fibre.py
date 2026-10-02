"""Inspect this finite fibre; exact characteristic-zero lifting is separate."""
import argparse
from collections import Counter
from itertools import combinations
import json
from pathlib import Path
from flint import fq_default_ctx,fq_default_poly_ctx,fmpz_mod_poly_ctx


def main():
    parser=argparse.ArgumentParser();parser.add_argument('input');parser.add_argument('--output',required=True)
    args=parser.parse_args();data=json.loads(Path(args.input).read_text());p=data['prime'];H=data['H'];shape=data['shape']
    assert pow(5,(p-1)//2,p)==p-1
    field=fq_default_ctx(modulus=fmpz_mod_poly_ctx(p)([-5,0,1]),check_modulus=True)
    pol=fq_default_poly_ctx(field);q=pol(shape['q']);roots=q.roots()
    assert len(roots)==216 and all(m==1 for r,m in roots)
    encoded=lambda x:tuple(list(map(int,x.to_list()))+[0]*(2-len(x.to_list())))
    roots=sorted((r for r,m in roots),key=encoded)
    xp=[pol(a) for a in shape['x']];yp=[pol(a) for a in shape['y']]
    xx=[[field(1)]+[a(r) for a in xp] for r in roots];yy=[[field(1)]+[a(r) for a in yp] for r in roots]
    for x,y in zip(xx,yy):
        assert all(a*b==1 for a,b in zip(x,y))
        assert all(sum((x[r]/H[r][j] for r in range(6)),field(0))*sum((y[r]*H[r][j] for r in range(6)),field(0))==6 for j in range(6))
    ts=[r for r,m in pol([1,4,1]).roots()];assert len(ts)==2
    fake={tuple(encoded(field(H[r][j])*t**(int(r==k)-int(k==0))) for r in range(6))
          for j in range(6) for k in range(6) for t in ts}
    assert len(fake)==72
    discarded=[k for k,x in enumerate(xx) if tuple(map(encoded,x)) in fake];assert len(discarded)==72
    def rank(A):
        A=[row[:] for row in A];r=0
        for j in range(len(A[0])):
            k=next((k for k in range(r,len(A)) if A[k][j]!=0),None)
            if k is None:continue
            A[r],A[k]=A[k],A[r];c=1/A[r][j];A[r]=[c*v for v in A[r]]
            for k in range(r+1,len(A)):
                c=A[k][j];A[k]=[u-c*v for u,v in zip(A[k],A[r])]
            r+=1
        return r
    jac_ranks=[]
    for x,y in zip(xx,yy):
        ll=[sum((x[r]/H[r][j] for r in range(6)),field(0)) for j in range(5)]
        gg=[sum((y[r]*H[r][j] for r in range(6)),field(0)) for j in range(5)]
        jac_ranks.append(rank([[x[r]/H[r][j]*gg[j]-y[r]*H[r][j]*ll[j]
                               for r in range(1,6)] for j in range(5)]))
    print('full Jacobian ranks',dict(Counter(jac_ranks)),
          'fake ranks',dict(Counter(jac_ranks[k] for k in discarded)),flush=True)
    assert all(jac_ranks[k]==5 for k in discarded), 'Do not remove a nonsimple fake evaluation'
    kept=[k for k in range(216) if k not in discarded];xx=[xx[k] for k in kept];yy=[yy[k] for k in kept]
    N=len(xx);assert N==144
    overlap=[[sum((a*b for a,b in zip(y,x)),field(0)) for x in xx] for y in yy]
    adj=[{j for j in range(N) if overlap[i][j]==overlap[j][i]==0} for i in range(N)]
    eligible=[i for i in range(N) if len(adj[i])>=5]
    cliques=[]
    def extend(prefix,available):
        if len(prefix)==6:cliques.append(prefix);return
        if len(prefix)+len(available)<6:return
        for k,v in enumerate(available):extend(prefix+[v],[w for w in available[k+1:] if w in adj[v]])
    extend([],eligible)
    quartets=[];failures=[]
    for a,b in combinations(range(len(cliques)),2):
        witness=next(((i,j,encoded(overlap[i][j]*overlap[j][i])) for i in cliques[a] for j in cliques[b]
                      if overlap[i][j]*overlap[j][i]!=6),None)
        if witness is None:quartets.append([a,b])
        else:failures.append({'bases':[a,b],'witness':witness})
    # Test an explicit small unit-phase alphabet as a possible exact lift.
    from sympy import primitive_root
    z24=field(pow(int(primitive_root(p)),(p-1)//24,p));ii=z24**6
    lam=(2+ii)/field([0,1]);alphabet={}
    for a in range(24):alphabet[encoded(z24**a)]=[a,0]
    for a in range(8):
        for b in [-1,1]:alphabet[encoded(z24**(3*a)*lam**b)]=[3*a,b]
    unknown=Counter(encoded(v) for x in xx for v in x if encoded(v) not in alphabet)
    print('nonfake roots',N,'degree histogram',dict(Counter(len(a) for a in adj)),
          'eligible',len(eligible),'bases',len(cliques),'quartets',len(quartets),flush=True)
    print('unrecognized alphabet entries',len(unknown),'occurrences',sum(unknown.values()),flush=True)
    result={'evidence_label':'Discovery evidence','prime':p,'extension_modulus':[-5,0,1],
            'full_jacobian_ranks':jac_ranks,'fake_indices':discarded,
            'roots':[[encoded(x) for x in row] for row in xx],'source_primitive_root_indices':kept,
            'degrees':[len(a) for a in adj],'bases':cliques,'quartets':quartets,'failed_pairs':failures,
            'alphabet':{'zeta24_image':encoded(z24),'lambda_definition':'(2+i)/sqrt(5)',
                        'covered':not unknown,'unrecognized':[[list(k),v] for k,v in unknown.items()]},
            'phase_labels':[[alphabet.get(encoded(v)) for v in x] for x in xx]}
    target=Path(args.output);assert not target.exists();target.write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')


if __name__=='__main__':main()
