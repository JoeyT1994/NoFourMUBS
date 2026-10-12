"""Read-only arithmetic/size diagnostic for the existing sum expression.

This is not a Lean certificate. It writes counts and the zero/nonzero result,
never a replacement for the supplied numerator or an expanded final sum.
"""
from pathlib import Path
import json
from collections import Counter

from prepare_nonzero_moment_clearing import CTX, FACTORS, fmpq_mpoly

ROOT = Path(__file__).resolve().parent.parent
AUDIT = ROOT / 'audit'
ORIGINAL = ROOT.parent / 'full_repair_2026_10_09/MinimalConstruction/Proofs/Research/critical_nonzero_J_moments.json'


def values(max_nodes=None, include_old=False):
    dag = json.loads((AUDIT / 'CRITICAL_NONZERO_SUM_DAG.json').read_text())
    old = json.loads((AUDIT / 'CRITICAL_NONZERO_P2P2_EXPRESSION_DAG.json').read_text())
    candidates = json.loads((AUDIT / 'CRITICAL_NONZERO_PAIRED_COEFFICIENT_CANDIDATES.json').read_text())['records']
    scales = json.loads((AUDIT / 'CRITICAL_NONZERO_SUM_CLEARING_EXPRESSIONS.json').read_text())['scales']
    X, Y, k, _ = CTX.gens()
    old_values = []
    for n in old['nodes']:
        op = n['kind']
        if op == 'leaf':
            p = sum((int(c) * k**a * X**b * Y**v for a, row in enumerate(n['rows'])
                     for b, r in enumerate(row) for v, c in enumerate(r)), CTX.constant(0))
        elif op == 'neg':
            p = -old_values[n['a']]
        elif op == 'pow':
            p = old_values[n['a']]**n['exponent']
        else:
            a, b = old_values[n['a']], old_values[n['b']]
            p = {'add': lambda: a+b, 'sub': lambda: a-b, 'mul': lambda: a*b}[op]()
        old_values.append(p)
    factors = dict(zip(['X','Y','H','FXp','FXm','FYp','FYm','FZp','FZm'], FACTORS.values()))
    factors.update(k=k, two=CTX.constant(2))
    polys, lengths = [], []
    for n in dag['nodes'][:max_nodes]:
        op = n['kind']
        if op == 'reuse':
            p, length = old_values[n['old_index']], n['length']
        elif op == 'leaf':
            key = n['key']
            if key.startswith('N_'):
                tag, c = key[2:].rsplit('_',1)
                p = scales[key[2:]] * fmpq_mpoly(candidates[tag][c]['numerator'], CTX)
            else:
                p = factors[key]
            length = int(p.degrees()[2])+1
        elif op == 'int':
            p, length = CTX.constant(n['integer']), 1
        elif op == 'neg':
            p, length = -polys[n['a']], lengths[n['a']]
        elif op == 'pow':
            p, length = polys[n['a']]**n['exponent'], n['exponent']*(lengths[n['a']]-1)+1
        else:
            a, b = n['a'], n['b']
            p = polys[a]+polys[b] if op == 'add' else polys[a]*polys[b]
            length = max(lengths[a],lengths[b]) if op == 'add' else lengths[a]+lengths[b]-1
        polys.append(p)
        lengths.append(length)
    return (dag, polys, lengths, old_values) if include_old else (dag, polys, lengths)


def main():
    dag, polys, lengths = values()
    original = json.loads(ORIGINAL.read_text())
    # Subtract the existing terms from the supplied target; do not emit a sum.
    residual = 32 * fmpq_mpoly(original['a']['numerator'], CTX) * polys[dag['multiplier']]
    for root in dag['roots']:
        residual -= polys[root]
    sizes = []
    for threshold in [20000,100000,500000]:
        cuts, costs = [], []
        for i,n in enumerate(dag['nodes']):
            kind = n['kind']
            if kind in ['leaf','reuse','int']:
                cost = len(polys[i])
            elif kind == 'neg':
                cost = costs[n['a']]
            elif kind == 'pow':
                cost = costs[n['a']]*n['exponent'] + len(polys[n['a']])**n['exponent']
            else:
                a,b=n['a'],n['b']
                cost=costs[a]+costs[b]+(len(polys[a])*len(polys[b]) if kind=='mul' else len(polys[i]))
            if kind not in ['leaf','reuse','int'] and cost > threshold:
                cuts.append(i)
                cost=len(polys[i])
            costs.append(cost)
        sizes.append({'threshold':threshold,'checkpoints':len(cuts),'coefficient_rows':sum(lengths[i] for i in cuts),
                      'expanded_nonzero_entries':sum(len(polys[i]) for i in cuts),'first_checkpoints':cuts[:15],
                      'kinds':dict(Counter(dag['nodes'][i]['kind'] for i in cuts))})
    result={'status':'READ_ONLY_DIAGNOSTIC_NOT_LEAN_PROOF','nodes':len(polys),
            'residual_zero':not residual,'residual_terms':len(residual),
            'largest_node_terms':max(map(len,polys)), 'max_outer_length':max(lengths),
            'stage_size_estimates':sizes,'original_numerator_unchanged':True,'atlas_certification':False}
    (AUDIT/'CRITICAL_NONZERO_SUM_DAG_DIAGNOSTIC.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result))


if __name__=='__main__':main()
