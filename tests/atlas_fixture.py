"""A small sub-certificate of the atlas certificate, for tests.  Standard library only.

subcertificate(ids, extra) keeps the Records `ids` of proof/atlas/results/atlas_certificate.json.gz as closed Records
0..k-1 (with their boundary-transfer targets, renumbered), appends every target that is not itself among `ids` as a
non-closed Record with no targets, and then the Records `extra` (non-closed, no targets).  Every Record is copied
verbatim apart from the target indices and the closed flag, so a closed Record of the sub-certificate passes exactly
when it passes in the atlas:
    cd proof/atlas && python3 certify.py SUB.json.gz 0 k        checks the k closed Records
    cd proof/independent && julia check.jl SUB.json.gz OUT      Step 3 on the closed Records and their targets,
                                                                Step 4 on the closed Records
f6_certificate() is the one-Record certificate of atlas Record 877, which contains F6:
    cd proof/atlas && python3 nonempty.py F6.json.gz            finds F6 in it
Usage: python3 tests/atlas_fixture.py OUT.json.gz [F6.json.gz]
"""
import copy, gzip, json, sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
ATLAS = ROOT / 'proof/atlas/results/atlas_certificate.json.gz'
IDS = [11992]          # the Record of the atlas with the fewest boundary-transfer targets (21)
F6_RECORD = 877        # the Record that contains F6 (nonemptiness)


def load_atlas(path=ATLAS):
    with gzip.open(path, 'rt') as f:
        return json.load(f)


def subcertificate(ids=IDS, extra=(), atlas=None):
    d = atlas or load_atlas()
    recs = d['records']
    order = list(ids)
    for i in ids:
        for t in recs[i]['targets']:
            if t[0] not in order: order.append(t[0])
    order += [i for i in extra if i not in order]
    new = {old: k for k, old in enumerate(order)}
    out = []
    for k, old in enumerate(order):
        r = copy.deepcopy(recs[old])
        if k < len(ids):
            r['closed'] = True
            r['targets'] = [[new[t[0]]] + t[1:] for t in r['targets']]
        else:
            r['closed'] = False; r['targets'] = []
        r['atlas_index'] = old                     # provenance; ignored by both checkers
        out.append(r)
    return dict(format=d['format'], records=out, failed={})


def f6_certificate(atlas=None):
    return subcertificate([], [F6_RECORD], atlas)


def write(cert, path):
    with gzip.open(path, 'wt') as f: json.dump(cert, f, separators=(',', ':'))


if __name__ == '__main__':
    d = load_atlas(); c = subcertificate(atlas=d); write(c, sys.argv[1])
    print('wrote %s: closed Records %s (atlas indices), %d targets' % (sys.argv[1], IDS, len(c['records']) - len(IDS)))
    if len(sys.argv) > 2:
        write(f6_certificate(d), sys.argv[2]); print('wrote %s: atlas Record %d' % (sys.argv[2], F6_RECORD))
