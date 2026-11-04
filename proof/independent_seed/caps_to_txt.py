"""Write a cap certificate (FORMAT.md sections 4a and 8a; ZC's CAP_FORMAT.md, ZC2b's T3 fields) as text lines for the
Julia checker (src/caps.jl, read_caps):
    CAPS <ncaps> <nfacets> <schema> <dimension> <cap_count>
    CAP <group_index> <v1> <v2> <v3> <v4> <h> <mode> <lambda> <mu> <s> <a1> <a2> <a3> <a4> <weighted_target 0|1>
    CAPT3 <group_index> <v1..v4> <h> <mode> <weighted_target 0|1> <psi_remainder> P <lambda mu s a1..a4>
          D <lambda mu s a1..a4> AL <rows 6> <cols 6> <wind 36>                      (one line; theorem ZC2b)
    FACET <i1> <i2> <i3> <i4> <denominator> <n1> <n2> <n3> <n4>     (schema rational-s3-cap-cover-v1)
    SIMPLEX <i1> <i2> <i3> <i4>                                      (schema rational-s3-cap-cover-index-v1)
A cap is written as CAPT3 exactly when it carries T3 witnesses; the checker requires that its group is of kind T3.
Scalars are exact integers or binary64 hex strings, copied verbatim; nothing is rounded."""
import json, sys


def scalar(x):
    if type(x) is int or (isinstance(x, str) and x.lower().lstrip('+-').startswith('0x')):
        return str(x)
    raise ValueError('cap scalar must be an integer or a float.hex string')


def witness(w):
    a = w.get('multiplier_vec', [0, 0, 0, 0])
    if len(a) != 4: raise ValueError('multiplier_vec')
    return [scalar(w.get('lambda', w.get('lambda_'))), scalar(w['mu']), scalar(w['s'])] + [scalar(x) for x in a]


def lines(caps):
    cl = caps['caps']; cov = caps['coverage']; compact = cov['schema'] == 'rational-s3-cap-cover-index-v1'
    fl = cov['simplices'] if compact else cov['facets']
    out = ['CAPS %d %d %s %d %d' % (len(cl), len(fl), cov['schema'], cov['dimension'], cov['cap_count'])]
    for c in cl:
        v = c['v']
        if len(v) != 4 or any(type(a) is not int for a in v): raise ValueError('cap v')
        wt = c.get('weighted_target', False)
        if type(wt) is not bool: raise ValueError('weighted_target')
        head = [str(int(c['group_index']))] + [str(x) for x in v] + [scalar(c['h']), c.get('mode', 'polynomial')]
        if 't3_parameter' in c:
            al = c['t3_alignment']
            rows, cols, wind = al['rows'], al['cols'], al['wind']
            if len(rows) != 6 or len(cols) != 6 or len(wind) != 36: raise ValueError('t3_alignment')
            out.append(' '.join(['CAPT3'] + head + [str(int(wt)), c.get('psi_remainder', 'global'), 'P'] +
                                witness(c['t3_parameter']) + ['D'] + witness(c['t3_distance']) + ['AL'] +
                                [str(int(x)) for x in list(rows) + list(cols) + list(wind)]))
        else:
            out.append(' '.join(['CAP'] + head + witness(c) + [str(int(wt))]))
    for f in fl:
        if compact:
            out.append(' '.join(['SIMPLEX'] + [str(int(i)) for i in f]))
        else:
            out.append(' '.join(['FACET'] + [str(int(i)) for i in f['vertices']] + [str(int(f['denominator']))] +
                                [str(int(n)) for n in f['numerator']]))
    return out


if __name__ == '__main__':
    open(sys.argv[2], 'w').write('\n'.join(lines(json.load(open(sys.argv[1])))) + '\n')
