"""Measure compact versus original exact coverage encodings without saving expansion.

The full witness representation is reconstructed from the same cap indices
and exact rational cap rows.  Counts use minified UTF-8 JSON and gzip level9.
No floating calculation or geometry acceptance is made by this size report.
"""
import argparse
import gzip
from hashlib import sha256
import json
from pathlib import Path
import sys
import time
import zlib
sys.path.insert(0,str(Path(__file__).resolve().parent))
import cap_coverage as C


class CountCompressed:
    def __init__(self):
        self.raw=0;self.compressed=0
        self.compressor=zlib.compressobj(level=9,wbits=31)
    def write(self,text):
        data=text.encode('utf-8') if isinstance(text,str) else text
        self.raw+=len(data);self.compressed+=len(self.compressor.compress(data))
    def finish(self):
        self.compressed+=len(self.compressor.flush())
        return {'json_bytes':self.raw,'gzip_level9_bytes':self.compressed}


def encode(x):return json.dumps(x,separators=(',',':'))


def measure(certificate):
    started=time.perf_counter()
    caps=certificate['caps'];coverage=certificate['coverage']
    if coverage['schema']==C.SCHEMA:
        compact=C.compact_coverage_certificate(coverage)
    elif coverage['schema']==C.COMPACT_SCHEMA:
        compact=coverage
    else:raise ValueError('unsupported coverage schema')
    small=CountCompressed();small.write(encode(compact));small=small.finish()
    large=CountCompressed()
    header={'schema':C.SCHEMA,'dimension':4,'cap_count':len(caps)}
    large.write(encode(header)[:-1]+',"facets":[')
    rows=C.integer_rows([{'v':cap['v'],'h':cap['h']} for cap in caps])
    max_bits=0
    for fi,indices in enumerate(compact['simplices']):
        num,den=C.exact_dual_vertex(rows,indices)
        max_bits=max(max_bits,den.bit_length(),*(abs(a).bit_length() for a in num))
        if fi:large.write(',')
        large.write(encode({'vertices':indices,'numerator':num,'denominator':den}))
    large.write(']}');large=large.finish()
    return dict(status='CERTIFIED byte counts of exact encodings',cap_count=len(caps),
                facet_count=len(compact['simplices']),compact_coverage=small,
                original_vertex_coverage=large,max_regenerated_vertex_integer_bits=max_bits,
                json_reduction_factor=large['json_bytes']/small['json_bytes'],
                gzip_reduction_factor=large['gzip_level9_bytes']/small['gzip_level9_bytes'],
                seconds=time.perf_counter()-started)


if __name__=='__main__':
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('certificate')
    ap.add_argument('--output',type=Path)
    a=ap.parse_args();raw=Path(a.certificate).read_bytes()
    d=json.loads(gzip.decompress(raw) if a.certificate.endswith('.gz') else raw)
    if 'edge' in d:d=d['edge'][0]['caps']
    result=measure(d);result['certificate_sha256']=sha256(raw).hexdigest()
    text=json.dumps(result,indent=2)+'\n'
    if a.output:a.output.write_text(text)
    print(text,end='')
