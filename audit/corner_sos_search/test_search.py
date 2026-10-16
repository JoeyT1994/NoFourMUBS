"""Independent normalization and soundness checks for the discovery model."""
import cmath
from itertools import combinations, permutations
import random
import unittest

import search as s


def evaluate(poly, z):
    return sum(c * monomial(e, z) for e, c in poly.items())


def monomial(e, z):
    v = 1
    for i, a in e:
        v *= z[i]**a
    return v


def signature(z):
    vals = [z[6*i+j] for i in range(3) for j in range(3)]
    per = det = 0
    for p in permutations(range(3)):
        term = vals[p[0]]*vals[3+p[1]]*vals[6+p[2]]
        per += term
        det += (-1)**sum(p[i] > p[j] for i in range(3) for j in range(i+1, 3))*term
    prod = 1
    for a in vals:
        prod *= a
    return per*det**2/prod


class SearchTests(unittest.TestCase):
    def test_classification_cases_cover_all_assignments(self):
        from itertools import product
        for bits in product('09',repeat=3):
            direct=''.join(bits)
            swapped=bits[0]+bits[2]+bits[1]
            self.assertTrue(direct in s.CLASSIFICATION_CASES or swapped in s.CLASSIFICATION_CASES)
        self.assertEqual(len(s.CLASSIFICATION_CASES),6)

    def test_classification_adapters_on_upstream_anchors(self):
        import sys
        sys.path.insert(0,str(s.upstream_path()))
        import exact_anchors as A
        roots=A.matrices()
        root=cmath.exp(2j*cmath.pi/12)
        for case in s.CLASSIFICATION_CASES:
            # Row/column phases and permutations exercise the Tao transport,
            # including the cubic-root equations after dephasing at (0,0).
            z=[]
            for b,v in enumerate(case):
                matrix=roots['Tao' if v=='9' else ('D6' if b==0 else 'F6')]
                for i in range(6):
                    for j in range(6):
                        z.append(root**matrix[(5*i+1)%6][(5*j+2)%6]*
                                 cmath.exp(.113j*(i+2*b)-.179j*j))
            for name,f in s.classification_relations(case)[0]:
                self.assertLess(abs(evaluate(f,z)),2e-8,(case,name))

    def test_conjugacy_is_not_unconjugated_equality(self):
        import sys
        sys.path.insert(0,str(s.upstream_path()))
        import exact_anchors as A
        root=cmath.exp(2j*cmath.pi/12)
        D=A.matrices()['D6']
        z=[root**e for _ in range(3) for row in D for e in row]
        data,_,_,_,_,_=s.load_inputs()
        found=False
        for rows in combinations(range(6),3):
            for cols in combinations(range(6),3):
                f={s.monomial(0,rows,cols,e):c for e,c in data['psi']}
                value=evaluate(f,z)
                if abs(value.imag)<1e-6:continue
                cr=tuple(i for i in range(6) if i not in rows)
                cc=tuple(j for j in range(6) if j not in cols)
                g={s.monomial(0,cr,cc,e):c for e,c in data['psi']}
                comp=evaluate(g,z)
                self.assertLess(abs(value-comp.conjugate()),1e-8)
                self.assertGreater(abs(value-comp),1)
                found=True;break
            if found:break
        self.assertTrue(found,'The anchor must detect accidentally assuming same signatures.')

    def test_rational_transition_lift_on_genuine_pair(self):
        w=cmath.exp(2j*cmath.pi/3)
        first=[];second=[]
        for i in range(6):
            for j in range(6):
                a,b,c,d=i//3,i%3,j//3,j%3
                f=(-1)**(a*c)*w**(b*d)
                first.append(f);second.append((1j)**a*w**(b*b)*f)
        def overlap(j,k):
            return sum(first[6*i+j].conjugate()*second[6*i+k] for i in range(6))
        K=[overlap(j,k)*overlap(0,0).conjugate()/6 for j in range(6) for k in range(6)]
        self.assertTrue(all(abs(abs(v)-1)<1e-12 for v in K))
        z=first+second+first+K+[1]*72
        eqs=dict(s.transition_relations()[0])
        for name,f in eqs.items():
            if name.startswith(('transition:3:','orth:3:')):
                self.assertLess(abs(evaluate(f,z)),2e-11,name)
        z[108+7]*=cmath.exp(.4j)
        self.assertGreater(abs(evaluate(eqs['transition:3:0:1:1:1'],z)),1)

    def test_reused_upstream_tao_moment_values(self):
        # Consume the other LLM's existing exact anchor data, without
        # regenerating its 400-block or ordered-triple calculations.
        import json
        from fractions import Fraction
        import sys
        from pathlib import Path
        upstream = s.upstream_path()
        sys.path.insert(0, str(upstream))
        import exact_anchors as A
        data = json.loads((upstream/'certificates/anchor_expectations.json').read_text())
        moments = data['Tao']['row_column_moments']
        self.assertEqual(len(moments), 40)
        for values in moments:
            z = A.Z(tuple(map(Fraction, values)))
            self.assertEqual(z.norm2().rational(), Fraction(1,4))

    def test_entrywise_gram_norms_and_reused_scalar_identity(self):
        import json
        from pathlib import Path
        import sys
        upstream = s.upstream_path()
        sys.path.insert(0, str(upstream))
        import exact_anchors as A
        data = json.loads((upstream/'certificates/anchor_expectations.json').read_text())
        names = ['F6', 'Tao', 'D6']
        root = cmath.exp(2j*cmath.pi/12)
        z = [root**e for name in names for row in A.matrices()[name] for e in row]
        for b, name in enumerate(names):
            for power in (2,3):
                T, _ = s.gram_norm(b, power)
                self.assertLess(abs(evaluate(T,z)-int(data[name][f'T{power}'][0])), 1e-9)
        for name, f in s.moment_norm_relations()[0]:
            self.assertLess(abs(evaluate(f,z)), 1e-8, name)

    def test_fourier_polynomials_and_phase_transport(self):
        E = [[0,0,0,0,0,0], [0,0,1,2,2,1], [0,1,0,1,2,2],
             [0,2,1,0,1,2], [0,2,2,1,0,1], [0,1,2,2,1,0]]
        w = cmath.exp(2j*cmath.pi/3)
        tao = [w**E[i][j] for i in range(6) for j in range(6)]
        fourier = [cmath.exp(2j*cmath.pi*i*j/6) for i in range(6) for j in range(6)]
        row, col = [3,1,5,0,2,4], [2,5,3,0,4,1]
        changed = [cmath.exp(.13j*i)*tao[6*row[i]+col[j]]*cmath.exp(-.19j*j)
                   for i in range(6) for j in range(6)]
        z = fourier+tao+changed
        equations, _, anchors = s.fourier_relations()
        for F, expected in zip(anchors, (0,9,9)):
            self.assertLess(abs(evaluate(F, z)-expected), 1e-10)
        for name, f in equations:
            self.assertLess(abs(evaluate(f, z)), 1e-9, name)

    def test_exact_signature_and_target_on_gaussian_units(self):
        _, psi, _, target, _, seeds = s.load_inputs()
        self.assertEqual(len(psi), 55)
        self.assertEqual(len(seeds), 9)
        randomizer = random.Random(2819)
        for _ in range(40):
            z = [randomizer.choice([1, -1, 1j, -1j]) for _ in range(108)]
            expected = signature(z)
            self.assertEqual(evaluate(psi, z), expected)
            self.assertEqual(evaluate(target, z).real, 4*expected.imag**2)

    def test_all_quartet_equations_against_direct_matrix_formulas(self):
        randomizer = random.Random(9091)
        z = [randomizer.choice([1, -1, 1j, -1j]) for _ in range(108)]
        def h(b, i, j):
            return complex(z[36*b+6*i+j])
        for name, poly in s.quartet_equations():
            labels = name.split(':')
            if labels[0] == 'orth':
                b, tr, i, k, anchor = map(int, labels[1:])
                terms = [h(b, j, i)*h(b, j, k).conjugate() if tr else
                         h(b, i, j)*h(b, k, j).conjugate() for j in range(6)]
                expected = sum(terms)*terms[anchor].conjugate()
            else:
                a, b, j, k = map(int, labels[1:])
                total = sum(h(a, i, j).conjugate()*h(b, i, k) for i in range(6))
                expected = (total*total.conjugate()).real-6
            self.assertEqual(evaluate(poly, z), expected, name)

    def test_genuine_three_basis_control(self):
        # Tensor the explicit I/X/Y bases in dimension two and two chirped
        # Fourier bases in dimension three. This supplies a genuine triple,
        # not a fabricated dimension-six quartet.
        w = cmath.exp(2j*cmath.pi/3)
        first, second = [], []
        for i in range(6):
            for j in range(6):
                a, b, c, d = i//3, i%3, j//3, j%3
                f = (-1)**(a*c)*w**(b*d)
                first.append(f)
                second.append((1j)**a*w**(b*b)*f)
        z = first+second+first
        failures_for_duplicate_basis = 0
        for name, poly in s.quartet_equations():
            value = abs(evaluate(poly, z))
            if name.startswith('orth:') or name.startswith('mixed:0:1:'):
                self.assertLess(value, 2e-12, name)
            elif name.startswith('mixed:0:2:') and value > 1:
                failures_for_duplicate_basis += 1
        self.assertEqual(failures_for_duplicate_basis, 36)

    def test_fold_and_gram_use_conjugation(self):
        a, b = ((0, 2), (7, -1)), ((3, -3), (7, 1))
        self.assertEqual(s.plus(a, s.neg(a)), ())
        z = [cmath.exp(0.27j*i) for i in range(108)]
        p = {a: 3, b: -2}
        squared = s.multiply(p, {s.neg(e): c for e, c in p.items()})
        self.assertAlmostEqual(evaluate(s.fold(squared), z).real,
                               abs(evaluate(p, z))**2, places=11)

    def test_exact_checker_accepts_a_known_identity_and_rejects_tampering(self):
        # Check the coefficient/positivity checker on |f|^2=0, where f is
        # one physical orthogonality equation. This is a small independent
        # positive control; it is NOT a corner-reality certificate.
        import gzip
        import hashlib
        import json
        from pathlib import Path
        import tempfile
        from unittest.mock import patch
        import verify_exact as v
        name, f = s.quartet_equations()[0]
        basis = sorted(f)
        target = s.fold(s.multiply(f, {s.neg(e): c for e,c in f.items()}))
        keys = sorted({s.real_key(s.plus(s.neg(a),b)) for a in basis for b in basis})
        index = {e:i for i,e in enumerate(keys)}
        rows, provenance = [], []
        for e in basis:
            shift = s.neg(e)
            row = s.fold({s.plus(a,shift): c for a,c in f.items()})
            rows.append({index[a]: c for a,c in row.items()})
            provenance.append(dict(equation=name,multiplier=shift,normalization='1'))
        model = dict(metadata={},moments=keys,rows=rows,row_provenance=provenance,
                     blocks=[('control',basis,[[index[s.real_key(s.plus(s.neg(a),b))]
                             for b in basis] for a in basis])],
                     target={index[e]:str(c) for e,c in target.items()})
        raw=json.dumps(model).encode()
        cert=dict(model_sha256=hashlib.sha256(raw).hexdigest(),bound='0',
                  ideal=[[i,'-1'] for i in range(len(rows))])
        with tempfile.TemporaryDirectory() as tmp:
            mp,cp=Path(tmp)/'model.gz',Path(tmp)/'certificate.json'
            with gzip.open(mp,'wb') as out:out.write(raw)
            cp.write_text(json.dumps(cert))
            with patch.object(s,'load_inputs',return_value=({}, {}, {}, target, 1, [])):
                self.assertEqual(v.replay(mp,cp)['status'],'EXACT_RATIONAL_SOS_IDENTITY_CHECKED_NOT_LEAN')
                # A sector result must never be mislabeled unconditional.
                model['metadata']['classification_case']='000'
                raw=json.dumps(model).encode()
                with gzip.open(mp,'wb') as out:out.write(raw)
                cert['model_sha256']=hashlib.sha256(raw).hexdigest()
                cp.write_text(json.dumps(cert))
                with patch.object(s,'classification_relations',return_value=([],[])):
                    answer=v.replay(mp,cp)
                    self.assertIn('other cases still required',answer['conclusion'])
                    self.assertTrue(answer['uses_upstream_fourier_theorem'])
                del model['metadata']['classification_case']
                model['metadata']['uses_upstream_seven_cofactor_moment_norm_identity']=True
                raw=json.dumps(model).encode()
                with gzip.open(mp,'wb') as out:out.write(raw)
                cert['model_sha256']=hashlib.sha256(raw).hexdigest()
                cp.write_text(json.dumps(cert))
                self.assertTrue(v.replay(mp,cp)['uses_upstream_moment_norm_identity'])
                cert['ideal'][0][1]='1'
                cp.write_text(json.dumps(cert))
                with self.assertRaisesRegex(ValueError,'Exact identity failed'):v.replay(mp,cp)
                cert['bound']='1'
                cp.write_text(json.dumps(cert))
                with self.assertRaisesRegex(ValueError,'positive upper bound'):v.replay(mp,cp)
        with self.assertRaises(ValueError):v.rational(0.0)

    def test_reuse_guard_does_not_refresh_other_scopes(self):
        import json
        from pathlib import Path
        import tempfile
        import time
        from unittest.mock import patch
        import sys
        sys.path.insert(0,str(Path(__file__).resolve().parent.parent))
        import reuse_preflight as guard
        with tempfile.TemporaryDirectory() as tmp:
            p=Path(tmp)
            (p/'REPOSITORY_WATCH_STATUS.json').write_text(json.dumps(dict(
                ok=True,checked_epoch=time.time(),branches={'main':'new'})))
            (p/'REUSE_REVIEW.json').write_text(json.dumps(dict(repository_commit='old',
                scopes={'old':{'reviewed':True},'new':{'reviewed':True,'repository_commit':'new'}})))
            with patch.object(guard,'AUDIT',p):
                self.assertTrue(guard.require_reuse_review('new')['reviewed'])
                with self.assertRaisesRegex(RuntimeError,'does not match'):guard.require_reuse_review('old')
                (p/'REPOSITORY_REVIEW_REQUIRED.json').touch()
                with self.assertRaisesRegex(RuntimeError,'updates require'):guard.require_reuse_review('new')

    def test_target_frontier_keeps_complete_equations(self):
        _, f = s.quartet_equations()[0]
        target = s.fold(s.multiply(f, {s.neg(e):c for e,c in f.items()}))
        selected, count = s.target_frontier(f,target,{()},8,12)
        self.assertGreater(count,0)
        self.assertLessEqual(len(selected),8)
        for shift,row in selected:
            self.assertEqual(row,s.fold({s.plus(e,shift):c for e,c in f.items()}))
            self.assertTrue(set(row) & set(target))
            self.assertLessEqual(max(sum(max(v,0) for _,v in e) for e in row),12)


if __name__ == '__main__':
    unittest.main()
