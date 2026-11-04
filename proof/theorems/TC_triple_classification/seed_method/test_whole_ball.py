"""Check coverage, native-domain retention and classification away from the anchor."""
import gzip
import json
import unittest

from flint import acb,arb,arb_mat,ctx
import whole_ball as W


class WholeBallTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        ctx.prec=160
        cls.templates=json.loads((W.HERE/'anchor_proposals.json').read_text())['templates']
        doc=json.loads(gzip.decompress((W.ROOT/'proof/seed_atlas/results/seed_atlas_certificate.json.gz').read_bytes()))
        cls.model=W.P.normal_form(W.SC.Ball(doc['seeds'][1879]),prec=160)
        cls.native=W.native_data(cls.model)

    def test_off_anchor_family_and_transverse_injectivity(self):
        free=(0,1)
        target=[arb(arb(1)/100,arb(1)/1000000),arb(-arb(1)/125,arb(1)/1000000)]
        family=W.local_family(self.templates[0],free,target)
        # G is enclosed at the implicit family, and the chosen H coordinates
        # range over the entire requested nonzero-centred rectangle.
        x=family['phases']
        out=W.family_test(x,self.templates[0],free)
        self.assertTrue(arb(out['normal_q'])<1)
        self.assertTrue(arb(out['family_q'])<1)
        narrowed=W.contract(x,free)
        self.assertIsNotNone(narrowed)
        self.assertEqual(len(narrowed),55)

    def test_all_ten_templates_at_nonzero_parameters(self):
        for template in self.templates:
            for free in ((0,1),(0,5),(0,6),(1,5),(1,6),(5,6)):
                try:
                    family=W.local_family(template,free,
                        [arb(arb(1)/1000,arb(1)/1000000),arb(-arb(7)/10000,arb(1)/1000000)])
                    out=W.family_test(family['phases'],template,free)
                except (ArithmeticError,ZeroDivisionError):continue
                self.assertTrue(arb(out['normal_q'])<1)
                f,_=W.equations(family['phases'])
                self.assertTrue(all(v.contains(0) for v in f))
                break
            else:self.fail('no off-anchor box classified for a known template')

    def test_native_filter_keeps_the_whole_original_input_and_centre(self):
        x=list(self.native['hp'])+[arb(0,4)]*30
        filtered=W.native_filter(x,self.native)
        self.assertIsNotNone(filtered)
        q=self.model['Qbase']
        for i,(r,c) in enumerate(W.H_POS):
            self.assertTrue(filtered[i].overlaps(q[6*r+c,0]))
        # The original ball contains zero; abs(interval).lower() must never be
        # squared as a distance lower bound when an interval straddles zero.
        self.assertEqual(arb(0,self.native['r']).abs_lower(),0)
        outside=list(x)
        outside[0]=self.native['theta'][0,0]+10
        self.assertIsNone(W.native_filter(outside,self.native))

    def test_all_native_centre_jets_survive_the_model_filter(self):
        for direction in ([0,0,0,0],[1,0,0,0],[-1,1,-1,1]):
            c=W.P.col([self.model['r']*arb(i)/3 for i in direction])
            q,_,_=W.P.centre_jet(self.model,c)
            g=W.Z.mat(W.np.array(W.SC.gauge_matrix(),dtype=float))
            q=g*q
            x=[q[6*r+c,0]+arb(0,arb(2)**-70) for r,c in W.H_POS]+[arb(0,4)]*30
            self.assertIsNotNone(W.native_filter(x,self.native))

    def test_complete_cover_gauge_includes_every_known_anchor_basis(self):
        cover=json.loads(gzip.decompress((W.HERE/'results/seed1879_native_cover.json.gz').read_bytes()))
        cliques={tuple(c) for c in cover['cliques']}
        level=cover['levels'][-1]['level']
        for template in self.templates:
            h,k=W.KF.matrices([arb(0)]*4,template)
            qg=arb_mat(36,1)
            for a,b in W.H_POS:
                qg[6*a+b,0]=W.lift_near(W.phase_lift(h[a][b]),self.model['Qbase'][6*a+b,0])
            qa=W.Z.horizontal_vector(qg)
            shifts=[qa[6*a,0]-self.model['Q0'][6*a,0]-qa[0,0]+self.model['Q0'][0,0] for a in range(1,6)]
            assigned=[]
            for c in range(6):
                actual=[W.phase_lift(k[a][c])+shifts[a-1] for a in range(1,6)]
                for i,label in enumerate(cover['labels']):
                    radius=arb(float.fromhex(label['radius_cycles_upper_hex']))*2*arb.pi()
                    centre=[arb(2*v+1)*arb.pi()/level for v in label['bin']]
                    delta=[arb(0)]+[acb(0,actual[a]-centre[a]).exp().arg() for a in range(5)]
                    mean=sum(delta,arb(0))/6
                    distance=W.Z.frob(arb_mat([[v-mean] for v in delta]))
                    if distance<radius:
                        assigned.append(i);break
                else:self.fail('known column missing from saved outer cover')
            order=sorted(range(6),key=lambda c:assigned[c]);clique=tuple(assigned[c] for c in order)
            self.assertEqual(len(set(clique)),6)
            self.assertIn(clique,cliques)
            box=W.native_phase_box(self.model,cover['labels'],clique,level,self.native)
            for i,(a,b) in enumerate(W.H_POS):
                self.assertTrue(box[i].overlaps(qg[6*a+b,0]))
            for i,(a,c) in enumerate(W.K_POS):
                self.assertTrue(box[25+i].overlaps(W.lift_near(W.phase_lift(k[a][order[c]]),box[25+i])))

    def test_splits_cover_and_resource_caps_do_not_certify(self):
        family=W.local_family(self.templates[0],(0,1),[arb(0,arb(1)/100000)]*2)
        x=family['phases'];a,b=W.split_box(x,3)
        self.assertTrue(W.hull(a[3],b[3]).contains(x[3]))
        capped=W.solve_boxes([('original',x)],self.templates,max_nodes=0)
        self.assertEqual(capped['status'],'NOT ESTABLISHED')
        self.assertEqual(len(capped['unresolved']),1)
        done=W.solve_boxes([('original',x)],self.templates,max_nodes=1)
        self.assertEqual(done['status'],'CERTIFIED')
        self.assertFalse(done['unresolved'])
        self.assertEqual(done['closed'][0]['kind'],'known family')

    def test_false_triple_excluded_and_large_box_not_identified(self):
        bad=[arb(0)]*55
        self.assertIsNone(W.contract(bad,(0,1)))
        with self.assertRaises(ArithmeticError):
            W.family_test([arb(0,1)]*55,self.templates[0],(0,1))


if __name__=='__main__':unittest.main()
