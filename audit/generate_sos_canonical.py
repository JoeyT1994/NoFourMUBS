"""Generate only the NEW canonicalization witnesses for the selected SOS.

OAI's existing canonical equalities remain reused by the normalization plan.
For each new equality, produce two permutations and transpose/sign bits.
The Lean kernel checks the transformed exponent arrays; Python is a witness
finder, not part of the trusted proof. --limit makes a pilot, not a full claim.
"""
from pathlib import Path
import argparse
import ast
import hashlib
import itertools
import json
import re
import runpy
from reuse_preflight import require_reuse_review

require_reuse_review('moment_normalization')

ROOT = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--limit', type=int)
args = parser.parse_args()
plan = json.loads((ROOT / 'audit/sos/NORMALIZATION_PENDING_PLAN.json').read_text())
module = runpy.run_path(str(ROOT.parent / 'lean_proof_2026_10_09/verify_one_identity.py'),
                       run_name='canonical_witness_generator')
canon = module['canon']
matrix = lambda a: tuple(map(tuple, a))
new_inputs = [matrix(A) for A in plan['new_canonical_inputs']]
if args.limit is not None:
    assert args.limit > 1
    # Spread the pilot across shapes and magnitudes instead of testing only
    # the first few lexicographically adjacent arrays.
    ids = [i * (len(new_inputs)-1) // (args.limit-1) for i in range(args.limit)]
    new_inputs = [new_inputs[i] for i in ids]
prefix = 'NoFourMUBs.Step2.SOS'
ns = prefix + '.Normalization'
dst = ROOT / 'lean/NoFourMUBs/Step2/SOS'
upstream = ROOT / 'lean/vendor/fourier/OAI/Analysis/MutuallyUnbiased'


def vector(a):
    return '![' + ', '.join(map(str, a)) + ']'


def code(A):
    return ('⟨' + str(len(A)) + ', ' + str(len(A[0]) if A else 0) + ', ![' +
            ', '.join(vector(a) for a in A) + ']⟩')


def padded(A):
    r, c = len(A), len(A[0]) if A else 0
    return ((0,) * 6,) * (6-r) + tuple((0,) * (6-c) + a for a in A)


def witness(A, B):
    """Match sorted rows after each possible column relabeling, with zeros."""
    P, Q = padded(A), padded(B)
    target_columns = [tuple(sorted(row[j] for row in Q)) for j in range(6)]
    target_row_multiset = sorted(Q)
    for transpose, negate in itertools.product((False, True), repeat=2):
        C = tuple(zip(*P)) if transpose else P
        if negate:
            C = tuple(tuple(-x for x in a) for a in C)
        column_options = [tuple(j for j in range(6)
                                if tuple(sorted(row[j] for row in C)) == target)
                          for target in target_columns]
        if any(not a for a in column_options):
            continue
        for cp in itertools.product(*column_options):
            if len(set(cp)) != 6:
                continue
            D = tuple(tuple(a[j] for j in cp) for a in C)
            if sorted(D) != target_row_multiset:
                continue
            unused = list(range(6))
            rp = []
            for row in Q:
                i = next(i for i in unused if D[i] == row)
                rp.append(i)
                unused.remove(i)
            assert tuple(D[i] for i in rp) == Q
            return transpose, negate, tuple(rp), tuple(cp)
    raise AssertionError(('No canonical witness', A, B))


known_permutations = {}
for relative, namespace in [
    ('PairSemantics/Permutations', 'OAI.MUB6.Certificate.PairSemantics'),
    ('PairTargets/ExtraPermutations', 'OAI.MUB6.Certificate.PairTargetSemantics')]:
    p = upstream / (relative + '.lean')
    for m in re.finditer(r'def (\w+) : Equiv.Perm \(Fin 6\) where\s+toFun := (!\[[^\n]+)',
                         p.read_text()):
        perm = tuple(ast.literal_eval(m[2].replace('!', '')))
        known_permutations.setdefault(perm, (namespace+'.'+m[1],
            'OAI.Analysis.MutuallyUnbiased.' + relative.replace('/', '.')))

known_nodes = {}
for p in (upstream / 'PairSemantics').glob('Nodes*.lean'):
    for m in re.finditer(r'def (node\d+) : Matrix \(Fin \d+\) \(Fin \d+\) ℤ := (.*)',
                         p.read_text()):
        A = matrix(ast.literal_eval(m[2].replace('!', '')))
        known_nodes[A] = (f'⟨{len(A)}, {len(A[0]) if A else 0}, '
                          f'OAI.MUB6.Certificate.PairSemantics.{m[1]}⟩',
                          'OAI.Analysis.MutuallyUnbiased.PairSemantics.'+p.stem)

suffix = 'Pilot' if args.limit is not None else ''
header = (f'namespace {ns}\nopen OAI.MUB6 OAI.MUB6.Certificate\n'
          'set_option maxRecDepth 10000\nset_option maxHeartbeats 800000\n\n')
node_files = []
if args.limit is None:
    # Share actual-coordinate definitions and every new intermediate array.
    # Later contraction proofs refer to these same declarations.
    moment_manifest = json.loads((ROOT / 'audit/sos/LEAN_ARITHMETIC_MANIFEST.json').read_text())
    for i, A in enumerate(moment_manifest['coordinates']):
        known_nodes.setdefault(matrix(A), (prefix+f'.Semantics.code{i}',
            prefix+f'.MomentCodes{i//64:02d}'))
    additional = [matrix(s['exponents']) for s in plan['new_steps']
                  if matrix(s['exponents']) not in known_nodes]
    for start in range(0, len(additional), 256):
        name = f'NormalizationNodes{start//256:03d}'
        content = f'import {prefix}.CanonicalCheck\n\n' + header
        for i, A in enumerate(additional[start:start+256], start):
            label = f'normalNode{i}'
            content += f'def {label} : ExponentCode := {code(A)}\n\n'
            known_nodes[A] = (label, prefix+'.'+name)
        content += f'end {ns}\n'
        (dst/(name+'.lean')).write_text(content)
        node_files.append(name+'.lean')

records = []
extra_permutations = {}
for i, A in enumerate(new_inputs):
    B = canon(A)
    t, n, rp, cp = witness(A, B)
    for p in (rp, cp):
        if p not in known_permutations and p not in extra_permutations:
            extra_permutations[p] = len(extra_permutations)
    records.append((A, B, t, n, rp, cp))
    if (i+1) % 1000 == 0:
        print('Witnesses found:', i+1, flush=True)

perm_module = 'CanonicalPermutations' + suffix
content = f'import {prefix}.CanonicalCheck\n\n' + header
for p, i in extra_permutations.items():
    inv = tuple(p.index(j) for j in range(6))
    name = f'canonicalPermutation{suffix}{i}'
    content += (f'def {name} : Equiv.Perm (Fin 6) where\n'
                f'  toFun := {vector(p)}\n  invFun := {vector(inv)}\n'
                '  left_inv := by decide +kernel\n  right_inv := by decide +kernel\n\n')
    known_permutations[p] = (name, prefix+'.'+perm_module)
content += f'end {ns}\n'
(dst/(perm_module+'.lean')).write_text(content)
files = node_files + [perm_module+'.lean']
for start in range(0, len(records), 64):
    group = records[start:start+64]
    name = f'Canonical{suffix}{start//64:03d}'
    imports = {prefix+'.CanonicalCheck', prefix+'.'+perm_module}
    for A, B, t, n, rp, cp in group:
        imports.update(known_permutations[p][1] for p in (rp, cp))
        if B in known_nodes:
            imports.add(known_nodes[B][1])
    content = ''.join('import '+m+'\n' for m in sorted(imports)) + '\n' + header
    for i, (A, B, t, n, rp, cp) in enumerate(group, start):
        raw = f'canonicalInput{suffix}{i}'
        target = f'canonicalOutput{suffix}{i}'
        content += f'def {raw} : ExponentCode := {code(A)}\n\n'
        content += f'def {target} : ExponentCode := {known_nodes[B][0] if B in known_nodes else code(B)}\n\n'
        w = ('⟨' + str(t).lower() + ', ' + str(n).lower() + ', ' +
             known_permutations[rp][0] + ', ' + known_permutations[cp][0] + '⟩')
        content += (f'theorem canonicalSound{suffix}{i} {{H : CMatrix}} (hH : IsHadamard H) :\n'
                    f'    {raw}.moment H = {target}.moment H :=\n'
                    f'  canonical_of_padded {raw} {target} (by decide) (by decide)\n'
                    f'    {w} (by decide +kernel) hH\n\n')
    content += f'end {ns}\n'
    (dst/(name+'.lean')).write_text(content)
    files.append(name+'.lean')
manifest = {
    'status': 'GENERATED_NOT_YET_KERNEL_CHECKED',
    'pilot': args.limit is not None,
    'canonical_equalities': len(records),
    'full_plan_new_equalities': len(plan['new_canonical_inputs']),
    'new_permutations': len(extra_permutations),
    'shared_node_files': len(node_files),
    'files': {f: hashlib.sha256((dst/f).read_bytes()).hexdigest() for f in files},
}
(ROOT / f'audit/sos/CANONICAL{suffix.upper()}_MANIFEST.json').write_text(
    json.dumps(manifest, indent=2)+'\n')
print({k:v for k,v in manifest.items() if k!='files'}, flush=True)
if args.limit is None:
    # Keep the complete-closure reuse audit part of regeneration itself.
    from reuse_canonical_overlaps import rewrite
    rewrite()
