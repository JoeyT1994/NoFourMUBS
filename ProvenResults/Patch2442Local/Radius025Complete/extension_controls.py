"""Exact controls specific to the radius-1/40 extension; no numerical sampling."""
from __future__ import annotations
from fractions import Fraction as Q
from pathlib import Path
from itertools import product
import gzip, json, tempfile
import box_interface as geo
HERE = Path(__file__).resolve().parent

def independent_cover(path: Path) -> dict:
    """Use complete binary tries instead of the main verifier's Kraft equality."""
    trees = {}
    counts = {2: 0, 4: 0}
    deepest = 0
    with gzip.open(path, 'rt', encoding='utf-8') as stream:
        for line in stream:
            rec = json.loads(line)
            root = tuple(v % 6 for v in rec['root'])
            pathbits = rec['path']; degree = rec['degree']
            assert type(degree) is int and degree in counts
            assert isinstance(pathbits, str) and set(pathbits) <= {'0', '1'}
            node = trees.setdefault(root, {})
            for bit in pathbits:
                assert 'leaf' not in node, 'overlapping terminal prefix'
                node = node.setdefault(bit, {})
            assert not node, 'duplicate terminal or terminal prefix'
            node['leaf'] = True
            counts[degree] += 1
            deepest = max(deepest, len(pathbits))
    internal = leaves = 0
    for tree in trees.values():
        stack = [tree]
        while stack:
            node = stack.pop()
            if 'leaf' in node:
                assert set(node) == {'leaf'}
                leaves += 1
            else:
                assert set(node) == {'0', '1'}, 'missing closed child'
                internal += 1
                stack.extend((node['0'], node['1']))
    initial = {(a % 6, b, c % 6, d) for a, b, c, d in product((-1, 0, 1), range(6), (-1, 0, 1), range(6))}
    covered = set()
    for root in trees:
        seen = {root}; todo = [root]
        while todo:
            a,b,c,d = todo.pop()
            for v in ((c,d,a,b),((-b)%6,(-a)%6,(-c)%6,(-d)%6),((-a)%6,(-b)%6,(-d)%6,(-c)%6)):
                if v not in seen:
                    seen.add(v); todo.append(v)
        part = seen & initial
        assert covered.isdisjoint(part), 'duplicate root orbit'
        covered |= part
    assert covered == initial and len(initial) == 324 and len(trees) == 102
    assert leaves == sum(counts.values()) and internal == leaves - 102
    return {'status':'PASS', 'algorithm':'complete binary tries', 'initial_cells':324,
            'representative_roots':102, 'terminals':leaves, 'internal_nodes':internal,
            'by_degree':{str(k):v for k,v in counts.items()}, 'maximum_depth':deepest}

def check(cover_parser) -> dict:
    assert geo.RADIUS == Q(1,40)
    assert geo.RADIUS / Q(1,100) == Q(5,2)
    assert not (HERE/'geometry.py').exists(), 'obsolete helper must not be reintroduced'
    examples = [json.loads(l) for l in (HERE/'examples/inside.jsonl').read_text().splitlines()]
    assert len(examples) == 8
    beyond = 0
    for row in examples:
        result = geo.certify(row)
        assert result['ok'] and result['radius_radians'] == '1/40'
        if row.get('coordinate_system') == 'seed_radius_units':
            c, r = geo.vectors(row)
            assert any(geo.RADIUS*(abs(x)-y) > Q(1,100) for x,y in zip(c,r))
        else:
            assert any(Q(v['offset_lower']) > Q(1,100) or Q(v['offset_upper']) < -Q(1,100)
                       for v in result['membership'])
        beyond += 1
    pl, ph = geo.pi_bounds()
    assert 2*pl/3-geo.RADIUS > Q(1,100)  # Not in the other stationary seed's old ball either.
    rejected = 0
    # Only a shape check is requested from the parser; no artificial record is accepted as a cover.
    with tempfile.TemporaryDirectory(prefix='radius025-degree-controls-') as td:
        path = Path(td)/'invalid.jsonl.gz'
        for value in (None, '4', True, 0, 3, 6):
            row = {'root':[0,0,0,0], 'path':'', 'kind':1, 'degree':value}
            with gzip.open(path, 'wt', encoding='utf-8') as stream:
                stream.write(json.dumps(row)+'\n')
            try:
                cover_parser(path)
            except ValueError:
                rejected += 1
            else:
                raise AssertionError('invalid Taylor degree accepted')
    assert rejected == 6
    return {'status':'PASS', 'positive_boxes':len(examples), 'boxes_wholly_outside_old_balls':beyond,
            'invalid_degree_cases_rejected':rejected, 'obsolete_helper_removed':True,
            'independent_cover':independent_cover(HERE/'data/phase_cover.jsonl.gz')}
