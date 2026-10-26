"""Write a return-ZC cap certificate (CAP_FORMAT.md JSON) as text lines for the Julia checker (src/caps.jl, read_caps):
    CAPS <ncaps> <nfacets> <schema> <dimension> <cap_count>
    CAP <group_index> <v1> <v2> <v3> <v4> <h> <mode> <lambda> <mu> <s> <a1> <a2> <a3> <a4> <weighted_target 0|1>
    FACET <i1> <i2> <i3> <i4> <denominator> <n1> <n2> <n3> <n4>
Scalars are exact integers or binary64 hex strings, copied verbatim; nothing is rounded."""
import json, sys


def scalar(x):
    if type(x) is int or (isinstance(x, str) and x.lower().lstrip('+-').startswith('0x')):
        return str(x)
    raise ValueError('cap scalar must be an integer or a float.hex string')


def lines(caps):
    cl = caps['caps']; cov = caps['coverage']
    out = ['CAPS %d %d %s %d %d' % (len(cl), len(cov['facets']), cov['schema'], cov['dimension'], cov['cap_count'])]
    for c in cl:
        v = c['v']
        if len(v) != 4 or any(type(a) is not int for a in v): raise ValueError('cap v')
        wt = c.get('weighted_target', False)
        if type(wt) is not bool: raise ValueError('weighted_target')
        a = c.get('multiplier_vec', [0, 0, 0, 0])
        out.append(' '.join(['CAP', str(int(c['group_index']))] + [str(x) for x in v] + [scalar(c['h']), c.get('mode', 'polynomial'),
                   scalar(c.get('lambda', c.get('lambda_'))), scalar(c['mu']), scalar(c['s'])] + [scalar(x) for x in a] + [str(int(wt))]))
    for f in cov['facets']:
        out.append(' '.join(['FACET'] + [str(int(i)) for i in f['vertices']] + [str(int(f['denominator']))] + [str(int(n)) for n in f['numerator']]))
    return out


if __name__ == '__main__':
    open(sys.argv[2], 'w').write('\n'.join(lines(json.load(open(sys.argv[1])))) + '\n')
