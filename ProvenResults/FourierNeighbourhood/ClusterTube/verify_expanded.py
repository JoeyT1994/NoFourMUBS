"""Fresh integer ray-cover replay and exact graph for the F6 radius 1/30.

No numerical root search is used. The 48 rational centres need not be roots;
the exhaustive cover, not their origin or number, proves completeness.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations
import argparse
import hashlib
import importlib.util
import json
import os
import re
import subprocess
import tempfile

HERE = Path(__file__).resolve().parent


def module(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    value = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(value)
    return value


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def graph(raw):
    # Independently check that the larger-radius graph is EXACTLY the
    # already exhaustively enumerated radius-1/6 graph, including loops.
    old = module('base_cluster_graph', HERE/'verify.py')
    report = old.graph(raw)
    def flags(p, rho):
        A = 3*(1-2*rho*rho)**2-F(5,2)+2*p
        return (p <= 4*rho*rho*(1-rho*rho),
                A <= 0 or A*A <= 5*p*(1-p))
    pairs = 0
    for i in range(len(raw)):
        for j in range(i,len(raw)):
            re = sum(x*u+y*v for (x,y),(u,v) in zip(raw[i],raw[j]))
            im = sum(x*v-y*u for (x,y),(u,v) in zip(raw[i],raw[j]))
            p = (re*re+im*im)/36
            assert flags(p,F(5,27)) == flags(p,F(1,6)), (i,j)
            pairs += 1
    assert pairs == 1176
    return dict(report,rho='5/27',exact_pair_comparisons=pairs)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output-dir', type=Path)
    args = parser.parse_args()
    old = module('f6_centres', HERE.parent/'verify.py')
    arithmetic = module('tube_table', HERE.parent/'PracticalTube/verify.py')
    raw, _ = old.load_centers()  # Includes an exact unit-circle check per entry.
    proof_graph = graph(raw)
    expected = (HERE/'cover.cpp').read_text().replace('constexpr int RHO_DEN=6;',
        'constexpr int RHO_DEN=27;').replace('ceildiv(Q,6)','ceildiv(Q,5)').replace(
        '(dist+6*rad)*RHO_DEN<6*Q','(dist+6*rad)*RHO_DEN<30*Q')
    actual = (HERE/'expanded_cover.cpp').read_text().split('\n',1)[1]
    assert actual == expected

    Q = 1 << 26
    assert 30*Q < 2**63 and 27*(6*Q+6*Q) < 2**63
    assert 2*(25*Q+10)**2 < (36*Q)**2
    assert 2*(6*Q+40)**2 < 2**63
    assert 36*Q*Q < 2**63
    assert F(1,30) <= F(1,8) and 6*F(1,30) == F(1,5)
    # The amplitude-transfer inequality is strict at any positive d<=1/8.
    assert F(5,2)/8+F(11,2) < 6
    with tempfile.TemporaryDirectory(prefix='f6-cluster-tube-') as temp:
        work = Path(temp)
        out = args.output_dir.resolve() if args.output_dir else work/'receipt'
        out.mkdir(parents=True, exist_ok=True)
        source = HERE.parent/'PracticalTube/tube.cpp'
        original = source.read_text()
        assert original.count('bool ort_possible(') == 1
        prefix = original.split('bool ort_possible(')[0]
        (work/'arithmetic.hpp').write_text(prefix)
        (out/'arithmetic.hpp').write_text(prefix)
        trig = work/'trig.bin'
        trig_hash = arithmetic.table(trig)
        assert trig_hash == 'fc771aee6c2cdab092dd0c9cc8b261fc7623b5f76279fdf08d4a854d64b7e35a'
        lines = []
        for center in raw:
            assert center[0] == (F(1), F(0))
            for x, y in center[1:]:
                a, b = round(x*Q), round(y*Q)
                assert abs(x*Q-a) < 1 and abs(y*Q-b) < 1
                lines.append(f'{a} {b}')
        centers = work/'centers.txt'
        centers.write_text('\n'.join(lines)+'\n')
        (out/'centers.txt').write_text(centers.read_text())
        binary = work/'cover'
        command = [os.environ.get('CXX','c++'), '-std=c++17', '-O2',
                   '-fsanitize=undefined', '-fno-sanitize-recover=all',
                   '-I',str(work),str(HERE/'expanded_cover.cpp'),'-o',str(binary)]
        subprocess.run(command, check=True)
        result = subprocess.run([str(binary),str(trig),str(centers)],
                                check=True, text=True, capture_output=True)
        (out/'cover.txt').write_text(result.stdout)
        match = re.search(r'PASS nodes (\d+) rejected (\d+) included (\d+)\n$',result.stdout)
        assert match and 'CONTROLS 48\n' in result.stdout
        nodes, rejected, included = map(int, match.groups())
        assert 31*nodes+19**5 == 32*(rejected+included)
        assert len(re.findall(r'^LABEL ',result.stdout,re.M)) == 48
        report = dict(status='PASS', radius='1/30', amplitude_tolerance='1/5',
                      rho='5/27', nodes=nodes,rejected=rejected,included=included,
                      trig_sha256=trig_hash, graph=proof_graph,
                      sources={str(p.relative_to(HERE.parent)):sha(p) for p in
                        (HERE/'expanded_cover.cpp',HERE/'verify_expanded.py',HERE/'verify.py',HERE/'cover.cpp',source,
                         HERE.parent/'verify.py',HERE.parent/'data/centers.json')},
                      arithmetic_sha256=sha(out/'arithmetic.hpp'),
                      centers_sha256=sha(out/'centers.txt'),
                      cover_sha256=sha(out/'cover.txt'))
        (out/'certificate.json').write_text(json.dumps(report,indent=2)+'\n')
        print('PASS: 437760 outward trig inequalities; exact rounded unit-circle centres')
        print('PASS: integer label-error constants and 48 exact chirp controls; UBsan full replay')
        print(f'PASS: complete 5-torus cover; {nodes} nodes, {rejected} rejected, {included} included')
        print('PASS: exact sharp-angle graph; 52 C six-cliques, no compatible D six-clique')
        print('THEOREM: no quartet edge within projector distance 1/30 of the F6 monomial orbit')
        print('SCOPE: F6 orbit; the full Fourier-family radius remains 1/16384')


if __name__ == '__main__':
    main()
