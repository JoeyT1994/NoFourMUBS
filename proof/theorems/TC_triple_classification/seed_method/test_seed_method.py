"""Independent matrix-form checks and fail-closed tests for the seed method."""
import gzip
import json
import sys
import unittest
from pathlib import Path

from flint import acb,arb,arb_mat,ctx

HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[3]
sys.path[:0]=[str(HERE),str(ROOT/'proof/seed_atlas/cert')]
import seedcert as SC
import patches as P
import wholeball as Z
import anchor_model as AM
import known_family as KF
import column_models as CM
import reduced as R
import seed_cover as C
import replay_ball as RB


def matrix_equations(q,v,dq=None):
    """Different formulation from the certifier's pair-frequency expansion."""
    x=[acb(1)]+[acb(0,z).exp() for z in v]
    f=arb_mat(6,1);j=arb_mat(6,5);dw=arb_mat(6,4)
    for c in range(6):
        z=[x[r]*acb(0,-q[6*r+c,0]).exp() for r in range(6)]
        s=sum(z,acb(0));f[c,0]=(s*s.conjugate()).real-6
        for r in range(1,6):j[c,r-1]=2*(s.conjugate()*acb(0,1)*z[r]).real
        if dq is not None:
            for k in range(4):
                ds=sum((-acb(0,dq[6*r+c,k])*z[r] for r in range(6)),acb(0))
                dw[c,k]=2*(s.conjugate()*ds).real
    return f,j,dw


class SeedMethodTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        ctx.prec=160
        d=json.loads(gzip.decompress((ROOT/'proof/seed_atlas/results/seed_atlas_certificate.json.gz').read_bytes()))
        cls.ball=SC.Ball(d['seeds'][1879]);cls.model=AM.build(cls.ball,arb(1)/160)
        cls.proposals=json.loads((HERE/'anchor_proposals.json').read_text())
        cls.prepared=RB.prepare(cls.model,cls.proposals)

    def test_matrix_form_remainders_and_derivatives(self):
        """Certify point roots independently and check the predicted error bounds."""
        for index,u in ((0,[1,0,0,0]),(16,[0,1,0,0]),(48,[1,-1,1,-1])):
            p=self.prepared[index];w=arb_mat([[arb(k)*self.model['r']/3] for k in u])
            q,dq,_=P.centre_jet(self.model,w)
            pred=arb_mat([[v] for v in p['v0']])+p['T']*w+P.tensor_at(p['V2'],w)*w/2
            v=pred.mid()
            for _ in range(6):
                f,j,_=matrix_equations(q,[v[i,0] for i in range(5)])
                v=(v-(p['pre']*j).solve(p['pre']*f)).mid()
            tiny=arb(2)**-80;vb=[v[i,0]+arb(0,tiny) for i in range(5)]
            f0,j0,_=matrix_equations(q,[v[i,0] for i in range(5)])
            _,jt,dwt=matrix_equations(q,vb,dq)
            b=(p['pre']*j0).inv().mid()
            qi=KF.norm_inf(Z.eye(5)-b*p['pre']*jt)
            e=max(abs((b*p['pre']*f0)[i,0]).upper() for i in range(5))
            self.assertTrue(qi<1 and e+qi*tiny<tiny)
            actual=arb_mat([[z] for z in vb])
            self.assertTrue(Z.frob(actual-pred)<p['epsilon'])
            dv=-(p['pre']*jt).solve(p['pre']*dwt)
            dz=dv-p['T']-P.tensor_at(p['V2'],w)
            self.assertTrue(Z.spectral(dz)<p['normal_derivative'])

    def test_all_template_phase_and_gauge_formulas(self):
        p=[arb(1)/10000,-arb(1)/13000,arb(1)/17000,-arb(1)/19000]
        for template in self.proposals['templates']:
            h,k=KF.matrices(p,template);h0,k0=KF.matrices([arb(0)]*4,template)
            coeff=KF.phase_coefficients(template);kp=KF.k_phase_box(p,template)
            for i,(r,c) in enumerate(KF.H_POS):
                expected=sum((coeff[i][j]*p[j] for j in range(4)),arb(0))
                self.assertTrue(((h[r][c]/h0[r][c]).arg()-expected).contains(0))
            for i,(r,c) in enumerate(KF.K_POS):
                self.assertTrue(((k[r][c]/k0[r][c]).arg()-kp[i]).contains(0))

    def test_projection_and_every_clique(self):
        adj=R.graph(self.prepared);cs,_=C.all_cliques(adj)
        self.assertEqual(len(cs),10)
        for clique in cs:
            receipt=R.classify_clique(clique,self.prepared,self.proposals['templates'])
            self.assertEqual(receipt['status'],'CERTIFIED')
            self.assertTrue(arb(receipt['normal_q'])<1)

    def test_incomplete_column_cover_is_not_accepted(self):
        model=self.model;p=self.prepared[0];m=1536
        phases=[p['v0'][j]-(model['Q0'][6*(j+1),0]-model['Q0'][0,0]) for j in range(5)]
        # A proposal only: assign_bins must verify any resulting inclusion.
        import math
        bins=[[int(math.floor((float(v)/(2*math.pi)%1)*m)) for v in phases]]
        assignment,missing=RB.assign_bins(bins,m,self.prepared)
        self.assertFalse(missing)
        others=[x for i,x in enumerate(self.prepared) if i!=assignment[0]]
        _,missing=RB.assign_bins(bins,m,others)
        self.assertEqual(missing,bins)

    def test_oversized_domains_and_exhausted_search_reject(self):
        with self.assertRaises(ArithmeticError):AM.build(self.ball,arb(1)/16)
        self.assertFalse(CM.uniqueness_cube(self.prepared[0],arb(1))<1)
        k6=[((1<<6)-1)^(1<<i) for i in range(6)]
        with self.assertRaises(RuntimeError):C.all_cliques(k6,clique_cap=0)
        with self.assertRaises(ValueError):C.all_cliques([2,0])


if __name__=='__main__':unittest.main()
