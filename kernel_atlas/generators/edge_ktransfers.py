"""FORMAT T1 sphere groups for edge_kball, including fine-core and target links."""
import itertools
import json
import math
from pathlib import Path
import numpy as np

import edge_c1e as E
import edge_enclosure as En
import edge_overlap as O
import seed_c1 as S
import seed_exact as X
import seed_kball as K
import seed_transfer as T


def gauge_maps(source, xb):
    """Predict the fixed bottom row/column ordering; exact T1 checks verify every use."""
    q = En.phases(xb, np.zeros(4)).reshape(6, 6)
    p = np.array([K.fh(x) for x in source['P']]).reshape(6, 6)
    candidates = []
    for rb in itertools.permutations(range(3, 6)):
        for cb in itertools.permutations(range(3, 6)):
            rr, cc = (0, 1, 2)+rb, (0, 1, 2)+cb
            err = np.max(np.abs(np.exp(1j*q[np.ix_(rr, cc)])-np.exp(1j*p)))
            candidates.append((err, rr, cc))
    error, rr, cc = min(candidates)
    if error > 1e-7:
        raise RuntimeError('centre phases do not match the F6-012 chart ordering')
    return rr, cc


def transferBoxOK(r, D, s, b):
    level, *idx = b
    if r % (1 << level):
        return False
    h = r >> level
    return s['h'] == [h]*4 and all(D['wc'][a]+s['c'][a] == (2*idx[a]+1-(1 << level))*h for a in range(4))


def sourceLinkOK(D, parent):
    return T.boxIn(parent['hb'], O.boxShift(D, parent), D['hb']) and O.overlapOK(D, parent)


def sourceOK(B, r, parent, D, s, b):
    ok, qm, km, _ = E.core(B, D)
    td = s['t1']
    permutations = (sorted(td['rows']) == list(range(6)) and sorted(td['cols']) == list(range(6)))
    return (ok and 0 <= td['g'] < 4 and permutations and E.labelOK(B, D) and sourceLinkOK(D, parent) and
            T.boxIn(D['hb'], s['c'], s['h']) and transferBoxOK(r, D, s, b) and
            T.t1OK(s['h'], T.shiftL(s['c'], s['h'], qm), T.shiftL(s['c'], s['h'], km),
                   s['t1'], s['ball'], s['radius']))


def prepare_source(B, xb, parent, group, target, b):
    level, *idx = b
    h = xb.rz >> level
    wc = [(2*i+1-(1 << level))*h for i in idx]
    hb = [int(h*(1+xb.margin))]*4
    D = E.tune(B, E.box_data_at(xb, wc, hb))
    ok, qm, km, _ = E.core(B, D)
    if not ok:
        raise RuntimeError('fine edge core failed')
    hs, c = [h]*4, [0]*4
    td, bl, ok, why = K.SBt1(group, target, T.shiftL(c, hs, qm), T.shiftL(c, hs, km), hs)
    if not ok:
        raise RuntimeError(f'T1 failed: {why}')
    s = dict(c=c, h=hs, t1=td, ball=bl, radius=target['r'])
    if not sourceOK(B, xb.rz, parent, D, s, b):
        raise RuntimeError('source link or transfer coordinate check failed')
    return D, s


def emit_source(destination, module, ns, index, parent_index, D, s, b, target_index, inputs="Cert"):
    prefix = f'noncomputable section\n\nnamespace {ns}.S{index}\n\nopen NoFourMUBs.KernelAtlas.Seed NoFourMUBs.KernelAtlas.Edge\n\n'
    data = f'import {module}.{inputs}\nimport KernelAtlas.Edge.Source\n\n'+prefix
    data += E.lean_ebox('box', D)+'\n'+S.lean_ball('targetBall', s['ball'])+'\n'+T.lean_t1('targetT1', s['t1'])
    data += f"\ndef transfer : TransferD := ⟨{E.lean_int_list(s['c'])}, {E.lean_nat_list(s['h'])}, targetT1, targetBall, {s['radius']}⟩\n"
    data += (f'def source : SourceD {parent_index[1]} := ⟨⟨{parent_index[0]}, by decide⟩, box, transfer, '
             '⟨'+', '.join(map(str, b))+'⟩, '+str(target_index)+'⟩\n')
    data += f'\nend {ns}.S{index}\n'
    (destination/f'SourceData{index}.lean').write_text(data)
    check = f'import {module}.SourceData{index}\n\n'+prefix
    check += ('set_option maxRecDepth 100000 in\nset_option maxHeartbeats 0 in\n'
              'theorem checked : sourceOK ball radius Ds source = true := by decide +kernel\n')
    check += f'\nend {ns}.S{index}\n'
    (destination/f'SourceCheck{index}.lean').write_text(check)


def transfer_groups(source, xb):
    """Translate FORMAT corner indices to the kernel chart's fixed ordering."""
    rr, cc = gauge_maps(source, xb)
    for group in source['transfers']:
        if group['kind'] != 'T1':
            raise ValueError('only T1 edge sphere groups are supported')
        g = dict(group)
        transposed = g['g'] in ('T', 'conjT')
        rmap, cmap = (cc, rr) if transposed else (rr, cc)
        g['rows'] = [rmap[i] for i in group['rows']]
        g['cols'] = [cmap[i] for i in group['cols']]
        yield g


def sphere_geometry(certificate, source, max_level=None):
    """Check the full input sphere before spending time on its analytic witnesses."""
    boxes = [tuple(b) for g in source['transfers'] for b in g['boxes']]
    if not boxes:
        raise ValueError('edge sphere transfers are empty')
    if any(len(b) != 5 or any(type(x) is not int or x < 0 for x in b) or
           any(i >= 1 << b[0] for i in b[1:]) for b in boxes):
        raise ValueError('malformed dyadic sphere cell')
    depth = max(b[0] for b in boxes)
    if max_level is None:
        max_level = max(depth, certificate.get('max_level', depth))
    if type(max_level) is not int or max_level < depth:
        raise ValueError('transfer depth is less than the input sphere depth')
    boxes.sort(key=X.preorder_key)
    ok, nodes = X.walk(X.sphMiss, depth, boxes)
    if not ok:
        raise RuntimeError('input edge sphere groups do not cover the complete sphere')
    return dict(groups=len(source['transfers']), cells=len(boxes), input_depth=depth,
                max_level=max_level, traversal_nodes=nodes)


def parent_index(parents, b):
    """Find the containing leaf of a possibly adaptively refined ball cover."""
    for level in range(b[0], -1, -1):
        ancestor = (level, *(i >> (b[0]-level) for i in b[1:]))
        if ancestor in parents:
            return parents[ancestor]
    return None


def generate_transfers(certificate, source, destination, context, max_level=None):
    destination = Path(destination)
    B, xb, ds, cells, module, ns = context
    geometry = sphere_geometry(certificate, source, max_level)
    max_level = geometry['max_level']
    grid_depth = (xb.rz & -xb.rz).bit_length()-1
    if max_level > grid_depth-4:
        raise ValueError('transfer depth must preserve a positive interior grid margin')
    parents = {tuple(b): i for i,b in enumerate(cells)}
    seeds = certificate['seeds']
    targets = {}
    todo = [(g, tuple(b)) for g in transfer_groups(source, xb) for b in g['boxes']]
    entries = {}
    while todo:
        group, b = todo.pop()
        if X.sphMiss(b) or b in entries:
            continue
        pi = parent_index(parents, b)
        if pi is None:
            if b[0] >= max_level:
                raise RuntimeError(f'sphere cell has no containing chart at maximum depth: {b}')
            todo.extend((group, ch) for ch in K.children(b))
            continue
        target_id = group['target']
        if target_id not in targets:
            raw = seeds[str(target_id)] if isinstance(seeds, dict) else seeds[target_id]
            targets[target_id] = K.kseed(raw)[0]
        try:
            D, tr = prepare_source(B, xb, ds[pi], group, targets[target_id], b)
        except (RuntimeError, AssertionError, np.linalg.LinAlgError) as exc:
            if b[0] >= max_level:
                raise RuntimeError(f'cannot certify edge source {b}: {exc}') from exc
            todo.extend((group, ch) for ch in K.children(b))
            continue
        index = len(entries)
        emit_source(destination, module, ns, index, (pi,len(ds)), D, tr, b, target_id)
        # Keep only the emitted source index, not a million large predictor/model dictionaries.
        entries[b] = index
        if (index+1) % 1000 == 0:
            print(f'transfer sources: {index+1}', flush=True)
    ordered = sorted(entries, key=X.preorder_key)
    if not X.walk(X.sphMiss, max_level, ordered)[0]:
        raise RuntimeError('refined edge sources do not cover the complete sphere')
    count = len(ordered)
    emit_boundary(destination, module, ns, len(ds), count, max_level, [entries[b] for b in ordered])
    emit_final(destination, module, ns)
    return dict(sources=count, sphere_checked=True)


def emit_boundary(destination, module, ns, box_count, count, max_level, order=None):
    if order is None:
        order = range(count)
    text = f'import {module}.Cert\nimport KernelAtlas.Edge.Source\n'+''.join(f'import {module}.SourceCheck{i}\n' for i in range(count))+'\n'
    text += f'noncomputable section\n\nnamespace {ns}\n\nopen NoFourMUBs.KernelAtlas.Edge NoFourMUBs.KernelAtlas.Seed NoFourMUBs.SeedAtlas\n\n'
    text += f'def sourceTable : List {{s : SourceD {box_count} // sourceOK ball radius Ds s = true}} := [\n'
    text += ',\n'.join(f'  ⟨S{i}.source, S{i}.checked⟩' for i in order)+'\n]\n'
    text += f'theorem source_length : sourceTable.length = {count} := by decide +kernel\n'
    text += f'def checkedSource (i : Fin {count}) := sourceTable.get ⟨i, by rw [source_length]; exact i.2⟩\n'
    text += f'def sources (i : Fin {count}) := (checkedSource i).1\n'
    text += 'theorem sources_checked (i) : sourceOK ball radius Ds (sources i) = true := (checkedSource i).2\n'
    text += f'''set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem sphere_checked : sphereOK radius {max_level} ((List.finRange {count}).map fun i => (sources i).cell) = true := by
  decide +kernel

/-- Target links are supplied by the seed atlas's shared certificate table. -/
theorem boundary {{σs ιr ιe : Type}} (S : σs → SeedBallCert) (A : ιr → NoFourMUBs.RecordCert)
    (E : ιe → EdgeX.EdgeBallCert) (e : ιe) (ofS : ℕ → σs)
    (hX : XExclusion (xRadius : ℝ)) (hE : E e = cert hX)
    (hl : ∀ i, (sources i).transfer.TargetLink (S (ofS (sources i).target))) :
    Nonempty (EdgeX.EdgeBoundaryCover S A E e) := by
  apply sourceBoundary_of S A E e ofS globalChart
    (fun i => (fullBox_sound (all_checked i)).core) ?_ ?_ sources sources_checked hl sphere_checked
  · rw [hE]; rfl
  · rw [hE]; exact cert_Q hX

end {ns}
'''
    (destination/'Boundary.lean').write_text(text)


def emit_final(destination, module, ns):
    text = f'''import {module}.Boundary
import KernelAtlas.Edge.Final

open Hadamard6 NoFourMUBs.SeedAtlas NoFourMUBs.Step2 NoFourMUBs.Step2Topology

namespace {ns}

open NoFourMUBs.KernelAtlas.Edge

/-- The generated edge's remaining inputs come from the seed/record atlas and the X theorem. -/
theorem no_four_mubs {{σs ιr : Type}} [Finite σs] [Finite ιr]
    (S : σs → SeedBallCert) (A : ιr → NoFourMUBs.RecordCert) (ofS : ℕ → σs)
    (hX : XExclusion (xRadius : ℝ))
    (hl : ∀ i, (sources i).transfer.TargetLink (S (ofS (sources i).target)))
    (hseed : ∀ j, Nonempty (EdgeX.SeedBoundaryCoverE S A (fun _ : Unit => cert hX) j))
    (hrec : ∀ l, Nonempty (EdgeX.RecBoundaryCoverE S A (fun _ : Unit => cert hX) l))
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hfourier : CoveredMatrix (cert hX).Ball fourierHadamard.1) : ¬ NoFourMUBs.FourMUBs :=
  no_four_mubs_of_edge S A (cert hX) hseed hrec
    (boundary S A (fun _ : Unit => cert hX) () ofS hX rfl hl) htao hfourier

end {ns}
'''
    (destination/'Final.lean').write_text(text)


def fixture():
    """Check one real dyadic source against the existing radius-0.1 sphere fixture."""
    root = Path(__file__).resolve().parents[2]
    fixtures = root/'proof/seed_atlas/cert/tests/data'
    raw = json.loads((fixtures/'edgeseeds.json').read_text())['sphere']
    xb = E.XBall(0.1)
    source = json.loads((fixtures/'edgeballs.json').read_text())['0.1']
    xb.Mz = [E.gz(K.fh(x)) for x in source['Mth']]
    xb.Mq = np.array(xb.Mz, float).reshape(4, 4)/E.SC
    B = xb.ball_dict()
    D = E.tune(B, E.box_data_at(xb, [E.gz(x) for x in raw['wstar']], [math.ceil(0.0004*E.SC)]*4))
    b = (9, 256, 256, 256, 511)
    h = xb.rz >> b[0]
    wc = [(2*i+1-(1 << b[0]))*h for i in b[1:]]
    c, hs = [wc[i]-D['wc'][i] for i in range(4)], [h]*4
    target = K.kseed(raw)[0]
    _,qm,km,_ = E.core(B,D)
    td,bl,ok,why = K.SBt1(dict(g='id', rows=[0,3,5], cols=[0,1,2]), target,
                         T.shiftL(c,hs,qm), T.shiftL(c,hs,km),hs)
    if not ok:
        raise RuntimeError(why)
    s = dict(c=c,h=hs,t1=td,ball=bl,radius=target['r'])
    if not sourceOK(B,xb.rz,D,D,s,b):
        raise RuntimeError('fixture source mirror failed')
    destination = root/'kernel_atlas/lean/KernelAtlas/Edge/SourceFixture'
    destination.mkdir(exist_ok=True)
    module = 'KernelAtlas.Edge.SourceFixture'
    ns = 'NoFourMUBs.'+module
    (destination/'Inputs.lean').write_text(f'''import KernelAtlas.Edge.Baseline.TransferData
import KernelAtlas.Edge.Source

namespace {ns}

open NoFourMUBs.KernelAtlas.Edge

abbrev ball := Baseline.transferBall
def radius : ℕ := {xb.rz}
def Ds (_ : Fin 1) : EBoxD := Baseline.transferBox

end {ns}
''')
    emit_source(destination,module,ns,0,(0,1),D,s,b,0,inputs='Inputs')
    print('dyadic source fixture:',b,'T1 bound:',td['m']/E.SC)


if __name__ == '__main__':
    fixture()
