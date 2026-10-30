#!/usr/bin/env python3
"""PR #4's whole-cell check (plane_cell_certificate.check) with one more pattern witness: the separable projector of
the TC_joint_kw response (projector/, PROJECTOR_REPORT.md).

Everything else is the pinned check, copied unchanged: the cover, C1, the H normal form and Stage C are rebuilt from
the cell's H record; every column's proof tree is replayed (verify_tree) to give its tubes; every pattern needs a
witness. Two witnesses are added. The moving-frame secant witness {'colours', 'columns', 'secant'} names one column
and two anchors of the pattern; moving_secant_certificate.check_columns rebuilds the anchors' tubes from their phase
balls and proves, in Arb, a whole-phase-ball secant bound and a positive transverse margin (REPORT.md). The projector
witness {'colours', 'columns', 'projector'} names the pattern's six colours (columns = the
pattern itself, in the witness's order) and a stored 86-number proposal; projector_union_hook.replay checks, in Arb,
that one common row functional and six unbiasedness multipliers give a strictly positive sum of the six columns'
minimum lower bounds over every tube of every column (projector_joint_certificate.certify). No tube tuple is
enumerated and nothing numerical is accepted.

The pinned checker tree is TC_ROOT (required). install() replaces plane_cell_certificate.check by this check in the
calling process, so plane_frontier_certificate.run (a replay) and plane_tree_certificate.check (a tree) use it.
"""
import hashlib, os, sys, time
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = Path(os.environ['TC_ROOT']).resolve()
for d in (str(HERE / 'projector'), str(ROOT / 'TripleClassification/code')):   # the pinned tree first; never this
    if d in sys.path: sys.path.remove(d)                                            # file's folder (other versions
    sys.path.insert(0, d)                                                           # of some pinned modules)
import plane_cell_certificate as Whole
P_ = Path(Whole.__file__).resolve()
if ROOT not in P_.parents: raise ImportError('plane_cell_certificate is not from TC_ROOT: %s' % P_)
import anchored_column_certificate as _A
if ROOT not in Path(_A.__file__).resolve().parents: raise ImportError('anchored_column_certificate is not from TC_ROOT')
import plane_column_certificate as P
import plane_joint_certificate as Joint
import projector_union_hook as Hook
import projector_joint_certificate as Proj
import moving_secant_certificate as Secant
from flint import arb

EXTENSION = [HERE / 'ext_cell_certificate.py', HERE / 'projector/projector_union_hook.py',
             HERE / 'projector/projector_joint_certificate.py', HERE / 'projector/moving_secant_certificate.py']        # the acceptance path added to the pinned check


def extension_sha256():
    return {('TripleClassification/code/' + str(p.relative_to(HERE))): hashlib.sha256(p.read_bytes()).hexdigest() for p in EXTENSION}


def validate_witnesses(cliques, witnesses, keys):
    """Whole.validate_witnesses, plus the projector witness: its columns are the whole pattern, each once."""
    P.require(len(witnesses) == len(cliques), 'incomplete pattern accounting')
    used = set()
    for clique, w in zip(cliques, witnesses):
        P.require(w['colours'] == clique, 'complete-cover pattern changed')
        chosen = w['columns']
        if 'projector' in w:
            P.require(set(w) == {'colours', 'columns', 'projector'} and sorted(chosen) == sorted(clique) and len(chosen) == 6 and
                      all(type(c) is int for c in chosen) and w['projector'].get('order') == chosen, 'invalid projector witness')
        elif 'secant' in w:                     # its anchor tubes are rebuilt from the cover; no column proof is used
            x = w['secant']; idx = [x.get('column'), *(x.get('anchors') or [])]
            P.require(set(w) == {'colours', 'columns', 'secant'} and len(idx) == 3 and all(type(i) is int and 0 <= i < 6 for i in idx)
                      and len(set(idx)) == 3 and chosen == [clique[i] for i in idx], 'invalid secant witness')
            continue
        else:
            P.require((1 <= len(chosen) <= 6 if 'joint' in w else len(chosen) in (1, 2)) and len(set(chosen)) == len(chosen) and
                      all(type(c) is int and c in clique for c in chosen), 'invalid pattern witness')
        used.update(chosen)
    P.require(keys == {str(c) for c in used}, 'missing or unused column proof')


def check(path, proposal):
    start = time.monotonic(); s, model, C, binding, columns, cliques = Whole.complete_cover(path)
    P.require(proposal.get('schema') == 'tc-plane-cell-proposal-v1' and
              proposal.get('snapshot_sha256') == binding['snapshot_sha256'] and
              proposal.get('record_sha256') == s['record_sha256'], 'whole-cell proposal binding mismatch')
    validate_witnesses(cliques, proposal['witnesses'], set(proposal['columns']))
    tubes = {}; summaries = []
    for key, item in proposal['columns'].items():
        c = int(key); col = P.Column(model, columns[c], P.hex_array(item['weak'], (2, 5)))
        stats, tubes[c] = P.verify_tree(col, item['tree'], item['roots'], C, root_modes=item.get('root_modes'))
        summaries.append(dict(colour=c, leaves=stats, source_radius=str(col.radius), epsilons=[str(e) for p, e in tubes[c].values()]))
    checked = {}; rows = []; root_pairs = {}; root_scalars = {}; projector = []
    for n, (clique, w) in enumerate(zip(cliques, proposal['witnesses'])):
        chosen = w['columns']
        if 'projector' in w:                    # the added witness: every tube of the six complete column covers
            r = Hook.replay(model, {c: tubes[c] for c in chosen}, w['projector'])
            P.require(r['status'] == 'EXCLUDED_GIVEN_TUBE_COVERS', 'projector witness does not exclude this pattern')
            projector.append(dict(number=n, colours=clique, margin=r['margin'], tubes=r['tube_count']))
        elif 'secant' in w:                     # the pattern's six phase balls, from the rebuilt cover
            cols = [dict(v0=list(columns[c]['v0']), radius=arb(columns[c]['phase_radius']), colour=c) for c in clique]
            r = Secant.check_columns(model, cols, w['secant'])         # raises unless the pattern is excluded
            projector.append(dict(number=n, colours=clique, secant_margin=r['transverse_margin']))
        elif 'joint' in w: Joint.exclude(model, tubes, chosen, w['joint'], pair_cache=root_pairs, scalar_cache=root_scalars, allow_known=True)
        elif len(chosen) == 1: P.require(not tubes[chosen[0]], 'claimed empty column has surviving tubes')
        else:
            key = tuple(sorted(chosen))
            if key not in checked:
                margins = [P.pair_margin(a, ea, b, eb) for a, ea in tubes[key[0]].values() for b, eb in tubes[key[1]].values()]
                if not all(m > 0 for m in margins): raise ArithmeticError('a captured pair may be orthogonal')
                checked[key] = [str(m) for m in margins]
        rows.append(dict(number=n, colours=clique, columns=chosen,
                         status='CLASSIFIED' if w.get('joint', {}).get('known') else 'EXCLUDED'))
    classified = any(row['status'] == 'CLASSIFIED' for row in rows)
    binding['dependencies_sha256'].update(extension_sha256())
    return dict(schema='tc-plane-cell-receipt-v1', status='CERTIFIED_CLASSIFIED_RECORDED_H_CELL' if classified else
                'CERTIFIED_EMPTY_RECORDED_H_CELL', **binding,
                subatlas=s['subatlas'], sub=s['sub'], complete_K_cover_rebuilt=True, patterns_total=len(cliques),
                patterns=rows, columns=summaries, pairs=[dict(colours=list(k), margins=v) for k, v in sorted(checked.items())],
                projector_patterns=projector, seconds=time.monotonic() - start,
                scope=('Every completing basis K on the entire recorded H cell has the certified balanced order-three symmetry. '
                       if classified else 'Every completing basis K on the entire recorded H cell is excluded. ') +
                      'C1, H normal form, Stage C preconditions and the complete K cover are rebuilt. Some patterns may be '
                      'excluded by the separable projector witness (ext_cell_certificate.py). Original-ball closure '
                      'additionally requires the external geometric cover of that original ball.')


def install():
    """Use this check wherever the pinned code calls plane_cell_certificate.check in this process."""
    Whole.check = check
