"""Select one replayable witness per cell from overlapping diagnostic runs.

Does not combine incompatible partitions. The downstream audit replays the
selected witnesses. Selection by unresolved volume never supplies acceptance.
"""
import argparse,hashlib,json,math
from fractions import Fraction
from pathlib import Path

def rows(p):return list(map(json.loads,p.open())) if p.exists() else []
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def main():
    p=argparse.ArgumentParser();p.add_argument('inventory',type=Path);p.add_argument('output',type=Path)
    p.add_argument('--trials',nargs='*',type=Path,default=[]);p.add_argument('--second',nargs='*',type=Path,default=[])
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    manifest=json.loads((a.inventory/'manifest.json').read_text())
    indices={int(line.split()[0]):i for i,line in enumerate((a.inventory/'survivors.txt').open(),1)}
    candidates={};sources={}
    def offer(cid,record,cover,t2,side,julia,source):
        if record['certificate']['ok']:score=Fraction(0);cover=[];t2=[];side=[];julia=[]
        else:
            accepted={tuple(r['path']) for r in t2 if r['result'] is not None}
            accepted.update(tuple(r['path']) for r in side if r['certificate']['ok'])
            score=sum((Fraction(1,16**len(r['path'])) for r in cover if r.get('status')=='open' and tuple(r['path']) not in accepted),Fraction(0))
        quality=(score,len(cover))
        if cid not in candidates or quality<candidates[cid][0]:candidates[cid]=(quality,record,cover,t2,side,julia,source)
    for parent in a.trials:
        for folder in sorted(parent.iterdir()):
            if not (folder/'done.json').exists():continue
            data={name:rows(folder/(name+'.jsonl')) for name in ('second','cover','t2','sideleaf','replayed')}
            for name in data:
                path=folder/(name+'.jsonl')
                if path.exists():sources[str(path.resolve())]=digest(path)
            for r in data['second']:
                cid=r['cell'];parts=[[x for x in data[name] if x['cell']==cid] for name in ('cover','t2','sideleaf','replayed')]
                offer(cid,r,*parts,str(folder.resolve()))
    for path in a.second:
        data=rows(path);sources[str(path.resolve())]=digest(path)
        assert data[0]['input_sha256'] in (manifest['sample_sha256'],manifest['survivors_sha256'])
        for r in data[1:]:
            cid=r['cell']
            # A root-only unresolved record carries no mathematical acceptance.
            rho=math.nextafter(math.pi/2**r['level']+2**-40,math.inf)
            cover=[dict(cell=cid,evidence_only=True,nD0=None,Rmin=None,Rmax=None,RD0min=None,not_sampled_in_this_record=True),
                dict(cell=cid,theta=r['theta'],radius=rho,path=[],status='open',method='second_pass_unresolved'),
                dict(cell=cid,done=True,wall_seconds=0.)]
            t2=[dict(cell=cid,path=[],result=None,cpu_seconds=0.)]
            offer(cid,r,cover,t2,[],[],str(path.resolve()))
    selection={}
    for cid,(_,r,cover,t2,side,julia,source) in sorted(candidates.items()):
        idx=indices[cid];folder=a.output/('cell_'+str(cid));folder.mkdir()
        (folder/'header.json').write_text(json.dumps(dict(input_sha256=manifest['survivors_sha256'],first=idx,last=idx,derived_from=source)))
        for name,data in [('second',[r]),('cover',cover),('t2',t2),('sideleaf',side),('replayed',julia)]:
            with (folder/(name+'.jsonl')).open('x') as f:
                for row in data:f.write(json.dumps(row)+'\n')
        (folder/'done.json').write_text(json.dumps(dict(cells=1,derived_witness=True)))
        selection[cid]=source
    (a.output/'selection.json').write_text(json.dumps(dict(sources=sources,selection=selection),indent=2)+'\n')
    print('Selected',len(selection),'cell witnesses; mathematical acceptance requires audit --replay')

if __name__=='__main__':main()
