"""Check the signed cubic identity and its full nonlinear remainder."""
import unittest
import numpy as np
import test_continuation as fixture
from load_native import C,MS
import chordal_support as CS
import cubic_chordal as CC


class CubicTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        fixture.ContinuationTests.setUpClass();f=fixture.ContinuationTests
        cls.model=f.model;cls.pp=f.pp;cls.bb=f.bb
        cls.d=CC.prepare(f.model,f.pp,f.bb,list(range(6)))

    def test_cubic_coefficient_identity(self):
        rng=np.random.default_rng(195)
        for _ in range(20):
            w=rng.normal(size=4);e=rng.normal(size=12);v=np.r_[w,e]
            a=int(rng.integers(6));b=int(rng.integers(6))
            h,k=self.d['h'][a],self.d['k'][b]
            h0=CS.cn(h['h0'])[:,0];h1=CS.cn(h['h1'])@w
            h2=CS.cn(h['h2'])@np.outer(w,w).ravel()/2
            k0=CS.cn(k['k0'])[:,0];kb=CS.cn(k['b'])[:,list(range(4))+self.d['groups'][b+1]]@v
            s0=h0.conj()@k0;s1=h0.conj()@kb+h1.conj()@k0
            s2=h1.conj()@kb+h2.conj()@k0;s3=h2.conj()@kb
            actual=2*np.real(s1.conjugate()*s2+s0.conjugate()*s3)/6
            t0,t1,t2=[MS.numeric(t) for t in self.d['cubics'][b][a]]
            found=w@t0@np.outer(w,w).ravel()+np.outer(w,w).ravel()@t1@e+w@t2@np.outer(e,e).ravel()
            self.assertLess(abs(actual-found),1e-12)

    def test_combined_nonlinear_remainder(self):
        rng=np.random.default_rng(10191);m=self.model
        for _ in range(20):
            seed=rng.normal(size=4);seed*=.99/np.linalg.norm(seed);w=.1*seed
            normal=rng.normal(size=3);normal*=.00099/np.linalg.norm(normal)
            phases=(MS.numeric(m['Q0'])[:,0]+MS.numeric(m['U'])@w+
                MS.numeric(m['H2'])@np.outer(w,w).ravel()/2+MS.numeric(m['X'])@normal).reshape(6,6)
            phases-=phases.mean(axis=0,keepdims=True);h=np.exp(1j*phases)
            k=np.empty((6,6),complex);v=np.zeros(76);v[:4]=seed
            for c in range(6):
                p=self.pp[c];error=rng.normal(size=6);error-=error.mean();error*=.0299/np.linalg.norm(error)
                k[:,c]=np.exp(1j*(MS.numeric(p['v0'])[:,0]+MS.numeric(p['T'])@w+error))
                kk=self.d['k'][c];eta=float(kk['eta'])
                residual=k[:,c]-CS.cn(kk['k0'])[:,0]-CS.cn(kk['b'])[:,:4]@seed
                v[4+12*c:16+12*c:2]=residual.real/eta;v[5+12*c:16+12*c:2]=residual.imag/eta
            gram=k.conj().T@k
            actual=np.r_[(abs(k)**2-1).T.ravel(),[gram[a,b].real for a,b in C.PAIRS],
                [gram[a,b].imag for a,b in C.PAIRS],((abs(h.conj().T@k)**2-6)/6).ravel()]
            y=rng.normal(size=102);c,q,g,tail=CC.scalar(self.d,y.tolist())
            polynomial=float(c)+MS.numeric(g)[:,0]@v+v@MS.numeric(q)@v/2
            self.assertLessEqual(abs(y@actual-polynomial),float(tail)+1e-11)


if __name__=='__main__':unittest.main()
