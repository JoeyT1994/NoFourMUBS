"""Compress the exact strip identity using elementary symmetric polynomials."""
import json,time
from flint import fmpq_mpoly
from strip_scalar_exact import HERE,CTX,F,X,Y,Z,J

def symmetric(poly):
    x,y,z,j=CTX.gens();generators=[x+y+z,x*y+x*z+y*z,x*y*z,j]
    powers=[{0:CTX.constant(1)} for _ in range(4)]
    def power(i,n):
        if n not in powers[i]:powers[i][n]=generators[i]**n
        return powers[i][n]
    remainder=poly;out={};count=0
    while remainder:
        ex,c=next(iter(remainder.terms()));a,b,d,e=ex
        assert a>=b>=d,(ex,'not symmetric')
        index=(a-b,b-d,d,e)
        product=CTX.constant(c)
        for i,n in enumerate(index):product*=power(i,n)
        out[index]=out.get(index,0)+c;remainder-=product;count+=1
    result=CTX.from_dict(out)
    # The zero remainder above is an exact certificate, not interpolation.
    return result

def run():
    start=time.monotonic();raw=json.loads((HERE/'strip_scalar_exact.json').read_text())['coefficients']
    values={k:F(fmpq_mpoly(r['numerator'],CTX),fmpq_mpoly(r['denominator'],CTX),False) for k,r in raw.items()}
    assert not (2*Y*values['2']+J*values['3']).n
    assert not (2*Y*values['4']+J*values['5']).n
    assert not values['1'].n and not values['7'].n
    delta=(X-Y)*(X-Z)*(Y-Z)
    targets={'A':values['0'],'Bplus':-values['3']/(2*Y*delta),
             'Bminus':-values['5']/(2*Y*delta),'C':-values['6']}
    output={}
    for name,v in targets.items():
        n=symmetric(v.n);d=symmetric(v.d)
        output[name]=dict(numerator=str(n),denominator=str(d),numerator_terms=len(n),denominator_terms=len(d))
        print(name,len(n),len(d),'seconds',time.monotonic()-start,flush=True)
        (HERE/'strip_scalar_symmetric.json').write_text(json.dumps(dict(variable_order=['p','e2','K','J'],formula='S = A + Delta*tau*(Bplus*qplus+Bminus*qminus) + C*qplus*qminus; signed qplus^2=Rplus, qminus^2=Rminus; tau^2=4K-J^2',coefficients=output,complete=name=='C'),indent=2)+'\n')

if __name__=='__main__':run()
