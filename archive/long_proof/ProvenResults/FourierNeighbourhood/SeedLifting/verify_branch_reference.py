"""Exact convention and outward tube-transfer controls."""
from fractions import Fraction as Q
from flint import arb,ctx
from branch_reference_lift import radius_certificate,certify_box
from moving_reference_lift import reference_certificate
from verify_moving_reference import identities
def main():
    assert identities()==396
    for i in range(6):
        for j in range(6):
            source=j//2+3*(j%2);s,r=divmod(source,3);t,k=divmod(i,3)
            a,b=s*int(k==1),s*int(k==2)
            constant=Q(r*k,3)+Q(s*t,2)+s*(Q(1,6) if k==1 else Q(1,3) if k==2 else 0)
            assert a==int(i%3==1)*(j%2) and b==int(i%3==2)*(j%2)
            assert (constant-Q(i*j,6)).denominator==1
    for precision in (96,160):
        ctx.prec=precision
        for a,b in ((Q(0),Q(0)),(Q(7,360),Q(0)),(Q(1,100000),Q(0)),(Q(1,4),Q(1,5))):
            out=radius_certificate(a,b);base=reference_certificate(a,b)
            assert out['radius']>=arb(str(base['radius'])).lower()
            assert out['radius']>0 and out['radius']<=arb(1)/30
        assert radius_certificate(Q(1,100000),0)['radius']>arb(3)/100
        # Incomplete side covers cannot authorize a whole-box lift.
        c=[arb(n)*arb.pi()/3 for n in (4,5,0,3)]
        assert not certify_box(c,[arb(1)/100]*4,0,0,budget=0)['ok']
        parent=list(map(arb,[-0.9265243958829271,1.1474176293384595,1.1596894756415446,-0.9387962421860124]))
        h=(arb.pi()/512+arb(2)**-40)/2
        negative=certify_box([x-h for x in parent],[h]*4,0,0,budget=0)
        assert negative['ok'] and negative['domain_test']=='strict_negative_R' and arb(negative['R_cap'])<0
        print('PASS:',precision,'bit radius and incomplete-cover controls')
    print('PASS: exact parameter-convention identity and 396 reference symmetries')
if __name__=='__main__':main()
