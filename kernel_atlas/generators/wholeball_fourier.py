"""Exact interval evaluation of the finite whole-ball Fourier tensors.

The polynomial conventions mirror PredictorTensors and TensorEnclosure.
Signed terms are summed before taking norms. This is numerical preparation;
only the emitted Lean checks can turn these proposals into certificates.
"""
from dataclasses import dataclass
from fractions import Fraction as Q

import seed_c1 as S
from wholeball_gram import entry_models
from wholeball_jets import prepare_jets, frequencies
from wholeball_matrix import MatrixBox, frozen_normal_basis, sqrt_upper


@dataclass(frozen=True)
class RealInterval:
    mid: Q
    rad: Q

    def __add__(self, b):
        return RealInterval(self.mid + b.mid, self.rad + b.rad)

    def __neg__(self):
        return RealInterval(-self.mid, self.rad)

    def __sub__(self, b):
        return self + -b

    def __mul__(self, b):
        return RealInterval(self.mid * b.mid,
                            abs(self.mid) * b.rad + self.rad * abs(b.mid) + self.rad * b.rad)


def entries(box):
    return [[RealInterval(x, r) for x, r in zip(mx, rx)] for mx, rx in zip(box.mid, box.rad)]


def matrix_box(rows):
    return MatrixBox([[v.mid for v in row] for row in rows], [[v.rad for v in row] for row in rows])


def polynomial_boxes(sbox, tbox):
    r3, i3, r4, i4 = [], [], [], []
    for s, t in zip(entries(sbox), entries(tbox)):
        tr = lambda a, b: t[4 * a + b]
        r3.append([])
        i3.append([])
        for j in range(64):
            a, b, c = ((j // 4**k) % 4 for k in range(3))
            r3[-1].append(-(tr(a, b)*s[c] + tr(a, c)*s[b] + tr(b, c)*s[a]))
            i3[-1].append(-(s[a]*s[b]*s[c]))
        r4.append([])
        i4.append([])
        for j in range(256):
            a, b, c, d = ((j // 4**k) % 4 for k in range(4))
            r4[-1].append(s[a]*s[b]*s[c]*s[d] -
                          (tr(a, b)*tr(c, d) + tr(a, c)*tr(b, d) + tr(a, d)*tr(b, c)))
            i4[-1].append(-(tr(a, b)*s[c]*s[d] + tr(a, c)*s[b]*s[d] +
                           tr(a, d)*s[b]*s[c] + tr(b, c)*s[a]*s[d] +
                           tr(b, d)*s[a]*s[c] + tr(c, d)*s[a]*s[b]))
    return tuple(matrix_box(rows) for rows in (r3, i3, r4, i4))


def imaginary_box(b, d):
    from itertools import combinations
    e = [[S.ivc(d['hb'], v) for v in row] for row in entry_models(b, d)]
    terms = [S.ivI(S.ivm(e[i][k], S.ivConj(e[j][k])))
             for i, j in combinations(range(6), 2) for k in range(6)]
    return MatrixBox(
        [[Q(z[0 if a < 15 else 1], S.SC) if a % 15 == t // 6 else Q(0)
          for t, (z, r) in enumerate(terms)] for a in range(30)],
        [[Q(r, S.SC) if a % 15 == t // 6 else Q(0)
          for t, (z, r) in enumerate(terms)] for a in range(30)])


def frobenius_bound(box):
    bound = sqrt_upper(sum(((abs(x) + r)**2 for mx, rx in zip(box.mid, box.rad)
                            for x, r in zip(mx, rx)), Q(0)))
    if not box.norm_check(bound):
        raise ArithmeticError('exact Frobenius bound rejected')
    return bound


def prepare_fourier(seed, basis):
    from wholeball_centre import prepare
    jets, v, m = prepare_jets(seed, basis)
    b, d = prepare(seed)
    zi = imaginary_box(b, d).rounded()
    k0 = jets['W'].mul(jets['Z']).rounded()
    k1 = jets['W'].mul(zi).rounded()
    n = MatrixBox.exact(frequencies())
    t = n.mul(jets['H']).rounded()
    dx = n.mul(MatrixBox.exact(frozen_normal_basis(basis))).rounded()
    r3, i3, r4, i4 = polynomial_boxes(jets['S'], t)
    cubic = k0.mul(r3).add(k1.mul(i3)).rounded()
    quartic = k0.mul(r4).add(k1.mul(i4)).rounded()
    c = k0.mul(jets['S'].row_tensor(dx)).neg().rounded()
    normal = k0.mul(dx.row_tensor(dx)).neg().rounded()
    a2 = k0.mul(t.row_tensor(dx)).add(k1.mul(jets['S'].row_tensor(jets['S']).row_tensor(dx))).neg().rounded()
    return dict(Zi=zi, K0=k0, K1=k1, T=t, D=dx, cubic=cubic, quartic=quartic,
                mixed=c, normal=normal, a2=a2), jets


def prepare_bounds(seed, boxes, jets):
    """Conservative rational bounds; no floating-point acceptance decisions."""
    from wholeball_jets import norm_certificate
    from wholeball_scalar import rational
    from wholeball_matrix import upper_grid
    cn, sn, tn, dn = [], [], [], []
    for i in range(90):
        cn.append(frobenius_bound(MatrixBox(
            [[boxes[k].mid[a][i] for k in ('K0', 'K1')] for a in range(21)],
            [[boxes[k].rad[a][i] for k in ('K0', 'K1')] for a in range(21)])))
        sn.append(frobenius_bound(MatrixBox([jets['S'].mid[i]], [jets['S'].rad[i]])))
        tn.append(frobenius_bound(MatrixBox(
            [boxes['T'].mid[i][4*a:4*a+4] for a in range(4)],
            [boxes['T'].rad[i][4*a:4*a+4] for a in range(4)])))
        dn.append(frobenius_bound(MatrixBox([boxes['D'].mid[i]], [boxes['D'].rad[i]])))
    r = rational(seed['r'])
    u = norm_certificate(jets['U'])[0]
    beta = norm_certificate(jets['H'])[0]
    x = Q(1000001, 1000000)
    bound = dict(r=r, x=x, u=u, beta=beta)
    for name, key in [('t3', 'cubic'), ('t4', 'quartic'), ('c', 'mixed'),
                      ('d', 'normal'), ('a2', 'a2')]:
        bound[name] = frobenius_bound(boxes[key])
    an = [s + r*t for s, t in zip(sn, tn)]
    bound['L5'] = sum((c*(a**5 + 10*t*a**3 + 15*t*t*a)
                       for c, t, a in zip(cn, tn, an)), Q(0))
    bound['L3a'] = sum((c*d*(a**3 + 3*t*a)
                        for c, d, t, a in zip(cn, dn, tn, an)), Q(0))
    base = u*r + beta*r*r/2
    tube_variation = sum((c*d*d*(s*r+t*r*r/2)
                          for c, d, s, t in zip(cn, dn, sn, tn)), Q(0))
    tube_two = sum((c*d**3 for c, d in zip(cn, dn)), Q(0))
    bound['L3'] = upper_grid(max(2*sqrt_upper(Q(2))*sum(cn),
                                 tube_variation/(x*x*base), tube_two/x**3), 60)
    # Round the scalar proposals outward too, keeping the emitted numbers small.
    for name in ('L5', 'L3a'):
        bound[name] = upper_grid(bound[name], 60)
    b0 = bound['t3']*r**3/6 + bound['t4']*r**4/24 + bound['L5']*r**5/120
    qbase = bound['c']*r + bound['a2']*r*r/2 + bound['L3a']*r**3/6
    tau = b0
    for _ in range(100):
        q = qbase + (bound['d'] + bound['L3']*x*x*base)*tau + bound['L3']*x**3*tau*tau/2
        if q >= 1:
            raise ArithmeticError('contraction proposal has q >= 1')
        proposal = upper_grid(b0/(1-q)*Q(1001, 1000), 60)
        if proposal <= tau:
            break
        tau = proposal
    else:
        raise ArithmeticError('normal tube proposal did not settle')
    if not b0 + q*tau < tau:
        raise ArithmeticError('strict contraction inequality rejected')
    bound.update(tau=tau, epsP=Q(0), epsU=Q(0), n=rational(seed['n']))
    if beta*r*r/2 + x*tau >= bound['n']:
        raise ArithmeticError('no recorded-radius headroom remains')
    return bound, dict(cn=cn, sn=sn, tn=tn, dn=dn)


def array_box_expr(box):
    """Array literals reduce the measured cost relative to nested Fin vectors.

    Kernel reduction still uses the logical list-backed array definitions;
    this does not rely on the runtime's constant-time array implementation.
    """
    from wholeball_matrix import matrix_expr
    def matrix(a):
        return 'fun i j => (('+matrix_expr(a).replace('![', '#[')+' : Array (Array ℚ))[i.val]!)[j.val]!'
    return '{ mid := '+matrix(box.mid)+', rad := '+matrix(box.rad)+' }'


def equal_columns(boxes):
    """Discover shared columns by exact midpoint AND radius equality."""
    representatives, expansion, seen = [], [], {}
    for column in range(len(boxes[0].mid[0])):
        key = tuple(row[column] for box in boxes for table in (box.mid, box.rad) for row in table)
        if key not in seen:
            seen[key] = len(representatives)
            representatives.append(column)
        expansion.append(seen[key])
    return representatives, expansion


def balanced_lookup(values, variable, offset=0):
    if len(values) == 1:
        return values[0]
    half = len(values)//2
    space = '\n    ' if variable == 'i' else ' '
    return (f'(if {variable}.val < {offset+half} then'+space+
            balanced_lookup(values[:half],variable,offset)+' else'+space+
            balanced_lookup(values[half:],variable,offset+half)+')')


def balanced_box_expr(box):
    """Finite literal lookup with logarithmic branch depth in the kernel."""
    from wholeball_scalar import lean_rational
    def matrix(table):
        rows = [balanced_lookup([lean_rational(v) for v in row],'j') for row in table]
        return 'fun i j => '+balanced_lookup(rows,'i')
    return '{\n  mid := '+matrix(box.mid)+',\n  rad := '+matrix(box.rad)+'\n}'


def emit_shared_columns(output, name, ns, prelude, boxes, label, target):
    from wholeball_scalar import write_module
    pick, expand = equal_columns(boxes)
    n, k = len(expand), len(pick)
    low = label.lower()
    if label == 'Second':
        compact = (f'import KernelAtlas.WholeBall.{name}SecondImagCheck\n'
                   'import KernelAtlas.WholeBall.MatrixExpansion\n\n'+prelude+f'namespace {ns}\n\n')
        for part, box in zip(('Real','Imag'),boxes):
            small = MatrixBox([[row[j] for j in pick] for row in box.mid],
                              [[row[j] for j in pick] for row in box.rad])
            # These tables are reduced by the kernel, never native evaluation.
            # Avoid generating enormous unused C functions for the branch tree.
            compact += f'noncomputable def compact{label}{part} : MatrixBox 90 {k} := '+balanced_box_expr(small)+'\n\n'
        compact += f'end {ns}\n'
        write_module(output.parent/(name+label+'CompactData.lean'),compact)
    source = ''.join(f'import KernelAtlas.WholeBall.{name}{label}{part}Data\n' for part in ('Real', 'Imag'))
    if label == 'Second':
        source += f'import KernelAtlas.WholeBall.{name}SecondCompactData\n'
    source += ('import KernelAtlas.WholeBall.MatrixColumns\n\n'+prelude+
               'set_option Elab.async false\n\n'+f'namespace {ns}\n\n')
    def index_array(values, size):
        if label == 'Second':
            return balanced_lookup([f'({v} : Fin {size})' for v in values],'j')
        return '(#['+', '.join(str(v) for v in values)+f'] : Array (Fin {size}))[j.val]!'
    source += f'def {low}Pick : Fin {k} → Fin {n} := fun j => '+index_array(pick,n)+'\n'
    source += f'def {low}Expand : Fin {n} → Fin {k} := fun j => '+index_array(expand,k)+'\n\n'
    for part, expr, rows in [('Real',f'poly{label}Real',90), ('Imag',f'poly{label}Imag',90), ('Target',target,21)]:
        small = (f'(compact{label}{part}.columns {low}Expand)' if label == 'Second' and part != 'Target'
                 else f'(({expr}.columns {low}Pick).columns {low}Expand)')
        for row in range(rows):
            source += f'theorem {low}{part}_columns_{row} : {small}.exactRowCheck {expr} {row} = true := by decide +kernel\n\n'
        source += f'theorem {low}{part}_columns : {small} = {expr} := by\n  apply MatrixBox.eq_of_exact_rows\n  intro i\n  fin_cases i\n'
        source += ''.join(f'  · exact {low}{part}_columns_{row}\n' for row in range(rows))+'\n'
    source += f'end {ns}\n'
    write_module(output.parent/(name+label+'Columns.lean'),source)
    return k


def emit_norms(output, name, ns, prelude, boxes):
    """Bound kernel state by certifying exact row-square sums independently."""
    from wholeball_scalar import write_module
    from wholeball_matrix import vector_expr
    header = (f'import KernelAtlas.WholeBall.{name}Data\n'
              'import KernelAtlas.WholeBall.MatrixRowNorms\n\n'+prelude+
              'set_option Elab.async false\n\n'+f'namespace {ns}\n\n')
    term = ('(data.fourier.coeff {i}).normCheck (data.cn {i}) && '
            '(data.fourier.S.reindex (fun _ : Fin 1 => {i}) id).normCheck (data.sn {i}) && '
            '(data.fourier.quadratic {i}).normCheck (data.tn {i}) && '
            '(data.fourier.D.reindex (fun _ : Fin 1 => {i}) id).normCheck (data.dn {i})')
    source = header
    for row in range(90):
        source += f'theorem term_norm_{row} : ({term.format(i=row)}) = true := by decide +kernel\n\n'
    source += f'theorem term_norms_checked : ((List.finRange 90).all fun i => {term.format(i="i")}) = true := by\n'
    source += '  simp only [List.all_eq_true, List.mem_finRange, forall_const]\n  intro i\n  fin_cases i\n'
    source += ''.join(f'  · exact term_norm_{row}\n' for row in range(90))+f'\nend {ns}\n'
    write_module(output.parent/(name+'TermNorms.lean'),source)
    specs = [('Cubic','cubic','cubic','t3'),('Quartic','quartic','quartic','t4'),
             ('Mixed','mixed','mixed','c'),('Second','a2','normalSecond','a2'),
             ('Normal','normal','normalTensor','d')]
    for label,key,field,bound in specs:
        box=boxes[key]
        sums=[sum(((abs(x)+r)**2 for x,r in zip(mid,rad)),Q(0)) for mid,rad in zip(box.mid,box.rad)]
        low=label.lower()
        source=header+f'def {low}Squares : Fin 21 → ℚ := '+vector_expr(sums)+'\n\n'
        for row in range(21):
            source+=f'theorem {low}_square_{row} : data.{field}.squareRowCheck {low}Squares {row} = true := by decide +kernel\n\n'
        source+=f'theorem {low}_norm_checked : data.{field}.normCheck bounds.{bound} = true := by\n'
        source+=f'  apply MatrixBox.normCheck_of_square_rows _ _ {low}Squares\n'
        source+='  · intro i\n    fin_cases i\n'
        source+=''.join(f'    · exact {low}_square_{row}\n' for row in range(21))
        source+='  · decide +kernel\n\n'+f'end {ns}\n'
        write_module(output.parent/(name+label+'Norm.lean'),source)
    write_module(output.parent/(name+'Sums.lean'),header+
                 'theorem sums_checked : data.sumCheck bounds = true := by decide +kernel\n\n'+f'end {ns}\n')
    source=''.join(f'import KernelAtlas.WholeBall.{name}{label}\n' for label in
                   ('TermNorms','CubicNorm','QuarticNorm','MixedNorm','SecondNorm','NormalNorm','Sums'))
    source+='\n'+prelude+f'namespace {ns}\n\n'
    source+='theorem norms_checked : data.normCheck bounds = true := by\n'
    source+='  simp only [FiniteData.normCheck, Bool.and_eq_true]\n'
    source+='  exact ⟨⟨⟨⟨⟨term_norms_checked, cubic_norm_checked⟩, quartic_norm_checked⟩, mixed_norm_checked⟩, second_norm_checked⟩, normal_norm_checked⟩\n\n'
    source+=f'end {ns}\n'
    write_module(output.parent/(name+'Norms.lean'),source)


def emit(seed, index, basis, output):
    """Emit the finite tensor stage as independent row-sized kernel leaves."""
    from pathlib import Path
    from wholeball_scalar import OUTPUT_ROOT, lean_rational, write_module
    from wholeball_matrix import vector_expr
    box_expr = array_box_expr
    output = Path(output).resolve()
    rel = output.relative_to(OUTPUT_ROOT.resolve()).with_suffix('')
    if len(rel.parts) != 1 or not rel.name.isidentifier() or not rel.name.isascii():
        raise ValueError('Fourier module must be directly in the WholeBall folder')
    boxes, jets = prepare_fourier(seed, basis)
    bounds, term = prepare_bounds(seed, boxes, jets)
    name = rel.name
    ns = 'NoFourMUBs.KernelAtlas.WholeBall.' + name
    prelude = 'set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n\n'
    fields = ('r', 'tau', 'x', 'u', 'beta', 'c', 'd', 'L3', 't3', 't4', 'L5', 'a2', 'L3a', 'epsP', 'epsU', 'n')
    source = ('import KernelAtlas.WholeBall.FiniteChecks\n\n' + prelude +
              f'namespace {ns}\n\n' +
              '-- Finite centre bounds only. Record errors and side margins are checked separately.\n' +
              'def bounds : SeedAtlas.Method.WholeBall.Bounds ℚ :=\n  {\n' +
              ',\n'.join('    '+k+' := '+lean_rational(bounds[k]) for k in fields) + '\n  }\n\n' +
              ''.join('def box'+k+' : MatrixBox '+str(len((jets['S'] if k == 'S' else boxes[key]).mid))+' '+str(len((jets['S'] if k == 'S' else boxes[key]).mid[0]))+' := '+box_expr(jets['S'] if k == 'S' else boxes[key])+'\n\n'
                      for k,key in [('K0','K0'),('K1','K1'),('S','S'),('T','T'),('D','D'),
                                    ('Cubic','cubic'),('Quartic','quartic'),('Mixed','mixed'),
                                    ('Second','a2'),('Normal','normal')]) +
              'def data : FiniteData 90 21 :=\n  {\n    fourier := {\n' +
              ',\n'.join('      '+k+' := box'+k
                         for k in ('K0', 'K1', 'S', 'T', 'D')) + '\n    },\n' +
              ',\n'.join('    '+k+' := box'+key for k, key in
                         [('cubic','Cubic'),('quartic','Quartic'),('mixed','Mixed'),
                          ('normalSecond','Second'),('normalTensor','Normal')]) + ',\n' +
              ',\n'.join('    '+k+' := '+vector_expr(term[k]) for k in ('cn','sn','tn','dn')) +
              '\n  }\n\n' + f'end {ns}\n')
    write_module(output.parent / (name+'Data.lean'), source)
    polynomial = polynomial_boxes(jets['S'], boxes['T']) + (
        boxes['T'].row_tensor(boxes['D']), jets['S'].row_tensor(jets['S']).row_tensor(boxes['D']))
    poly_expr = {
        'CubicReal': 'intervalMatrix fun i j => cubicRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j',
        'CubicImag': 'intervalMatrix fun i j => cubicImagI (data.fourier.S.entry i) j',
        'QuarticReal': 'intervalMatrix fun i j => quarticRealI (data.fourier.S.entry i) (data.fourier.T.entry i) j',
        'QuarticImag': 'intervalMatrix fun i j => quarticImagI (data.fourier.S.entry i) (data.fourier.T.entry i) j',
        'SecondReal': 'data.fourier.T.rowTensor data.fourier.D',
        'SecondImag': '(data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D',
    }
    for label, box in zip(poly_expr, polynomial):
        poly = f'import KernelAtlas.WholeBall.{name}Data\nimport KernelAtlas.WholeBall.MatrixBlocks\n'
        if label == 'SecondImag':
            poly += f'import KernelAtlas.WholeBall.{name}SecondRealData\n'
        poly += '\n'+prelude+f'namespace {ns}\n\n'
        literal = box_expr(box)
        if not label.startswith('Cubic'):
            # A field continued after a long array must not fall to the left
            # of the first field's layout column on the declaration line.
            literal = literal.replace('{ mid :=', '{\n  mid :=').replace(', rad :=', ',\n  rad :=')
        poly += f'def poly{label} : MatrixBox 90 {len(box.mid[0])} := '+literal+f'\n\nend {ns}\n'
        write_module(output.parent/(name+label+'Data.lean'), poly)
        proof = f'import KernelAtlas.WholeBall.{name}{label}Data\n'
        split = not label.startswith('Cubic')
        if split:
            proof += 'import KernelAtlas.WholeBall.MatrixColumns\n'
        if label == 'SecondReal':
            proof += f'import KernelAtlas.WholeBall.{name}SecondImagData\n'
        if label == 'SecondImag':
            proof += f'import KernelAtlas.WholeBall.{name}SecondRealCheck\n'
        proof += '\n'+prelude
        if split:
            proof += 'set_option Elab.async false\n\n'
        proof += f'namespace {ns}\n\n'
        if split:
            width = 32 if label.startswith('Quartic') else 48
            blocks = len(box.mid[0]) // width
            for row in range(90):
                for block in range(blocks):
                    proof += f'theorem poly{label}_{row}_{block} : MatrixBox.exactBlockCheck (k := {blocks}) (b := {width}) ({poly_expr[label]}) poly{label} {row} {block} = true := by decide +kernel\n\n'
                proof += f'theorem poly{label}_{row} (j : Fin {blocks}) : MatrixBox.exactBlockCheck (k := {blocks}) (b := {width}) ({poly_expr[label]}) poly{label} {row} j = true := by\n  fin_cases j\n'
                proof += ''.join(f'  · exact poly{label}_{row}_{block}\n' for block in range(blocks))+'\n'
            proof += f'theorem poly{label}_eq : ({poly_expr[label]}) = poly{label} := by\n  apply MatrixBox.eq_of_exact_blocks (k := {blocks}) (b := {width})\n  intro i j\n  fin_cases i\n'
            proof += ''.join(f'  · exact poly{label}_{row} j\n' for row in range(90))
        else:
            for row in range(90):
                proof += f'theorem poly{label}_{row} : ({poly_expr[label]}).exactRowCheck poly{label} {row} = true := by decide +kernel\n\n'
            proof += f'theorem poly{label}_eq : ({poly_expr[label]}) = poly{label} := by\n  apply MatrixBox.eq_of_exact_rows\n  intro i\n  fin_cases i\n'
            proof += ''.join(f'  · exact poly{label}_{row}\n' for row in range(90))
        proof += f'\nend {ns}\n'
        write_module(output.parent/(name+label+'Check.lean'), proof)
    shared_columns = {
        'Quartic': emit_shared_columns(output,name,ns,prelude,
                    (polynomial[2],polynomial[3],boxes['quartic']),'Quartic','data.quartic'),
        'Second': emit_shared_columns(output,name,ns,prelude,
                    (polynomial[4],polynomial[5],boxes['a2']),'Second','data.normalSecond'),
    }
    expressions = {
        'Cubic': '(cubicBox data.fourier.K0 data.fourier.K1 data.fourier.S data.fourier.T)',
        'Quartic': '(quarticBox data.fourier.K0 data.fourier.K1 data.fourier.S data.fourier.T)',
        'Mixed': '(data.fourier.K0.mul (data.fourier.S.rowTensor data.fourier.D)).neg',
        'Second': '((data.fourier.K0.mul (data.fourier.T.rowTensor data.fourier.D)).add '
                  '(data.fourier.K1.mul ((data.fourier.S.rowTensor data.fourier.S).rowTensor data.fourier.D))).neg',
        'Normal': '(data.fourier.K0.mul (data.fourier.D.rowTensor data.fourier.D)).neg',
    }
    targets = dict(Cubic='cubic', Quartic='quartic', Mixed='mixed', Second='normalSecond', Normal='normalTensor')
    dimensions = dict(Cubic=64, Quartic=256, Mixed=84, Second=336, Normal=441)
    for suffix, original in expressions.items():
        expr = (f'((data.fourier.K0.mul poly{suffix}Real).add (data.fourier.K1.mul poly{suffix}Imag))'
                if suffix in ('Cubic', 'Quartic') else original)
        target = 'data.'+targets[suffix]
        width = 7 if suffix == 'Normal' else 4
        dimension = dimensions[suffix]
        if suffix in shared_columns:
            low = suffix.lower()
            expr = f'((data.fourier.K0.mul (poly{suffix}Real.columns {low}Pick)).add (data.fourier.K1.mul (poly{suffix}Imag.columns {low}Pick)))'
            if suffix == 'Second':
                expr = '((data.fourier.K0.mul compactSecondReal).add (data.fourier.K1.mul compactSecondImag)).neg'
            target = f'(data.{targets[suffix]}.columns {low}Pick)'
            dimension = shared_columns[suffix]
            width = next(w for w in (4,5,3,2,1) if dimension % w == 0)
        blocks = dimension // width
        for row in range(21):
            chains = 3 if suffix == 'Second' else 1
            body = (f'import KernelAtlas.WholeBall.{name}Data\n'
                    'import KernelAtlas.WholeBall.MatrixBlocks\n' +
                    (f'import KernelAtlas.WholeBall.{name}{suffix}Row{row-chains}\n' if row >= chains else '') +
                    (''.join(f'import KernelAtlas.WholeBall.{name}{suffix}{part}Data\n' for part in ('Real','Imag')) if suffix in ('Cubic','Quartic','Second') else '') +
                    (f'import KernelAtlas.WholeBall.{name}{suffix}Columns\n' if suffix in shared_columns else '') +
                    '\n'+prelude+('set_option Elab.async false\n\n' if suffix == 'Second' else '')+f'namespace {ns}\n\n')
            for block in range(blocks):
                body += (f'theorem {suffix.lower()}_{row}_{block} :\n'
                         f'    MatrixBox.enclosesBlockCheck (k := {blocks}) (b := {width}) '
                         f'{expr} {target} {row} {block} = true := by decide +kernel\n\n')
            body += (f'theorem {suffix.lower()}_row_{row} (j : Fin {blocks}) :\n'
                     f'    MatrixBox.enclosesBlockCheck (k := {blocks}) (b := {width}) '
                     f'{expr} {target} {row} j = true := by\n  fin_cases j\n' +
                     ''.join(f'  · exact {suffix.lower()}_{row}_{block}\n' for block in range(blocks)) +
                     f'\nend {ns}\n')
            write_module(output.parent / (name+suffix+f'Row{row}.lean'), body)
        body = ''.join(f'import KernelAtlas.WholeBall.{name}{suffix}Row{row}\n' for row in range(21))
        if suffix in ('Cubic','Quartic','Second'):
            body += ''.join(f'import KernelAtlas.WholeBall.{name}{suffix}{part}Check\n' for part in ('Real','Imag'))
        body += '\n'+prelude+f'namespace {ns}\n\n'
        body += (f'theorem {suffix.lower()}_checked : {original}.enclosesCheck data.{targets[suffix]} = true := by\n' +
                 (f'  rw [{suffix.lower()}Box, poly{suffix}Real_eq, poly{suffix}Imag_eq]\n' if suffix in ('Cubic','Quartic') else '') +
                 ('  rw [polySecondReal_eq, polySecondImag_eq]\n' if suffix == 'Second' else '') +
                 ('  apply MatrixBox.negSumProducts_encloses_of_expansion _ _ _ _ _ _ _ _ secondExpand\n'
                  '    secondReal_columns secondImag_columns secondTarget_columns\n' if suffix == 'Second' else
                  (f'  apply MatrixBox.sumProducts_encloses_of_columns _ _ _ _ _ {low}Pick {low}Expand\n'
                   f'    {low}Real_columns {low}Imag_columns {low}Target_columns\n' if suffix in shared_columns else '')) +
                 f'  apply MatrixBox.enclosesCheck_of_blocks (k := {blocks}) (b := {width})\n'
                 '  intro i j\n  fin_cases i\n' +
                 ''.join(f'  · exact {suffix.lower()}_row_{row} j\n' for row in range(21)) +
                 f'\nend {ns}\n')
        write_module(output.parent / (name+suffix+'.lean'), body)
    emit_norms(output,name,ns,prelude,boxes)
    final = ''.join(f'import KernelAtlas.WholeBall.{name}{suffix}\n' for suffix in expressions)
    final += f'import KernelAtlas.WholeBall.{name}Norms\n'
    final += '\n'+prelude+f'namespace {ns}\n\n'
    final += ('theorem tensors_checked : data.tensorCheck = true := by\n'
              '  simp only [FiniteData.tensorCheck, Bool.and_eq_true]\n'
              '  exact ⟨⟨⟨⟨cubic_checked, quartic_checked⟩, mixed_checked⟩, second_checked⟩, normal_checked⟩\n\n'
              f'end {ns}\n')
    write_module(output, final)
    return dict(index=index, bounds={k:float(v) for k,v in bounds.items()},
                direct=float(bounds['beta']*bounds['r']**2/2 + bounds['x']*bounds['tau']))


def main():
    import argparse
    import gzip
    import json
    from pathlib import Path
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('certificate', type=Path)
    parser.add_argument('index', type=int)
    parser.add_argument('--basis', type=Path, default=Path('proof/seed_atlas/cert/wholeball_basis.json'))
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    opener = gzip.open if args.certificate.suffix == '.gz' else open
    with opener(args.certificate, 'rt') as stream:
        seeds = json.load(stream)['seeds']
    if not 0 <= args.index < len(seeds):
        parser.error('seed index out of range')
    print(json.dumps(emit(seeds[args.index], args.index, args.basis, args.output), sort_keys=True))


if __name__ == '__main__':
    main()
