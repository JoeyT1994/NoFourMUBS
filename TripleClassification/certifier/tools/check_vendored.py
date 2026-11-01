#!/usr/bin/env python3
"""Check this package's provenance against the NoFourMUBS repository.

  python tools/check_vendored.py [--repo PATH] [--pinned 914919b] [--approved HEAD]

1. Every file the package loads from the repository (certifier/PINNED.sha256) is byte-identical to the same path at
   the pinned commit (PR #4's checker tree), and so is each of the five PR #4 files kept in certifier/pr4/.
2. TripleClassification/code/gamma_exact.py, which the package loads at its approved hash (pinned.APPROVED), is the
   approved revision's.
3. Every function the package says it took unchanged from the approved one-tree checker has the same syntax tree
   (docstrings and names aside) as the original: overlap.py (branch_overlap.py), witnesses/gamma.py
   (ext_cell_certificate.py), witnesses/secant.py and search/plane.py's propose_secant (moving_secant_certificate.py),
   column_proofs.py's prove_column (fast_search.py).
"""
import argparse, ast, hashlib, os, subprocess, sys

PKG = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'certifier')
CODE = 'TripleClassification/code/'
SAME = [  # (package file, function, approved file, function)
    *[('overlap.py', f, 'branch_overlap.py', f) for f in ('model', 'seeds', 'predictor', 'permutation', 'horizontal', 'integer_lift',
                                                          'attempt', 'witness', 'witness_with')],
    ('witnesses/gamma.py', 'context', 'ext_cell_certificate.py', 'gamma_context'),
    ('witnesses/gamma.py', 'bound', 'ext_cell_certificate.py', 'gamma_bound'),
    *[('witnesses/secant.py', f, 'projector/moving_secant_certificate.py', f) for f in ('linear_parameter_map', 'moving_parameters',
                                                                                        'secant_gap', 'decode', 'check_columns')],
    ('search/plane.py', 'propose_secant', 'projector/moving_secant_certificate.py', 'propose_columns'),
    ('column_proofs.py', 'prove_column', 'fast_search.py', 'prove_column'),
]


def git_show(repo, rev, path):
    return subprocess.run(['git', '-C', repo, 'show', '%s:%s' % (rev, path)], capture_output=True, check=True).stdout


def function(src, name):
    """The syntax tree of function `name` (at any depth), without its docstring and name."""
    for node in ast.walk(ast.parse(src)):
        if isinstance(node, ast.FunctionDef) and node.name == name:
            body = node.body[1:] if body_doc(node) else node.body
            return ast.dump(ast.Module(body=body, type_ignores=[])) + ast.dump(node.args)
    raise KeyError(name)


def body_doc(node):
    return node.body and isinstance(node.body[0], ast.Expr) and isinstance(getattr(node.body[0], 'value', None), ast.Constant) \
        and isinstance(node.body[0].value.value, str)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--repo', default=os.path.join(PKG, '..', '..', '..'))
    ap.add_argument('--pinned', default='914919b'); ap.add_argument('--approved', default='HEAD')
    a = ap.parse_args(); bad = 0
    lines = open(os.path.join(PKG, 'PINNED.sha256')).read().splitlines()
    pr4 = {'TripleClassification/code/' + f: os.path.join(PKG, 'pr4', f) for f in os.listdir(os.path.join(PKG, 'pr4')) if f.endswith('.py')}
    for line in lines:
        digest, rel = line.split('  ', 1)
        same = git_show(a.repo, a.pinned, rel) == open(pr4.get(rel, os.path.join(a.repo, rel)), 'rb').read()
        ok = same and hashlib.sha256(git_show(a.repo, a.pinned, rel)).hexdigest() == digest
        bad += not ok
        if not ok: print('DIFFERS  %s' % rel)
    print('%d of %d pinned files (%d read from the repository, %d in certifier/pr4) byte-identical to %s' % (
        len(lines) - bad, len(lines), len(lines) - len(pr4), len(pr4), a.pinned))
    ok = git_show(a.repo, a.approved, CODE + 'gamma_exact.py') == open(os.path.join(a.repo, CODE, 'gamma_exact.py'), 'rb').read()
    bad += not ok; print('%s  gamma_exact.py byte-identical to %s' % ('OK' if ok else 'DIFFERS', a.approved))
    for mine, f, theirs, g in SAME:
        ok = function(open(os.path.join(PKG, mine)).read(), f) == function(git_show(a.repo, a.approved, CODE + theirs).decode(), g)
        bad += not ok; print('%-8s %s:%s  =  %s:%s' % ('OK' if ok else 'DIFFERS', mine, f, theirs, g))
    print('%d difference(s)' % bad); return 1 if bad else 0


if __name__ == '__main__': sys.exit(main())
