"""Re-key certificates by exact JOB, LEVEL and binary64 coordinates.

Never transfer by old ID alone. Only cells in the frozen guarded survivor
inventory enter the new ledger. The campaign's ID map can additionally be
checked when available; coordinate binding is mandatory either way.
"""
import argparse,copy,hashlib,json
from pathlib import Path
from guarded_batch import APPROVED
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def rows(p):return [json.loads(l) for l in p.open()] if p.exists() else []
def key(r):return (r['job'],r['level'],*(float(x).hex() for x in r['theta']))
def parse(line):
    f=line.split();return dict(cell=int(f[0]),job=int(f[1]),level=int(f[2]),theta=list(map(float,f[3:])))
def main():
    p=argparse.ArgumentParser();p.add_argument('old_ledger',type=Path);p.add_argument('guarded_inventory',type=Path);p.add_argument('output',type=Path)
    p.add_argument('--id-map',type=Path,help='Optional TSV with old_id and new_id header columns')
    a=p.parse_args();m=json.loads((a.guarded_inventory/'manifest.json').read_text())
    assert m['run_of_record']=='guarded_2026-09-29' and m['fasttm_sha256']==APPROVED
    assert sha(a.guarded_inventory/'survivors.txt')==m['survivors_sha256']
    old={};old_ids=set();sources={}
    for folder in sorted(a.old_ledger.iterdir()):
        if not folder.is_dir() or not (folder/'done.json').exists():continue
        data={n:rows(folder/(n+'.jsonl')) for n in ('second','cover','t2','sideleaf','replayed')}
        for n in data:
            f=folder/(n+'.jsonl')
            if f.exists():sources[str(f.resolve())]=sha(f)
        for row in data['second']:
            assert key(row) not in old and row['cell'] not in old_ids
            old_ids.add(row['cell']);old[key(row)]=(row,data,folder)
    matches={};seen_ids=set()
    for index,line in enumerate((a.guarded_inventory/'survivors.txt').open(),1):
        row=parse(line);assert row['cell'] not in seen_ids;seen_ids.add(row['cell'])
        k=key(row)
        if k in old:
            assert k not in matches,'Duplicate coordinate key in guarded inventory'
            matches[k]=(index,row)
    assert len(seen_ids)==m['survivors']
    if a.id_map:
        import csv
        needed={old[k][0]['cell']:new['cell'] for k,(_,new) in matches.items()};found={}
        for r in csv.DictReader(a.id_map.open(),delimiter='\t'):
            oid,nid=int(r['old_id']),int(r['new_id'])
            if oid in needed:
                assert oid not in found and nid==needed[oid];found[oid]=nid
        assert found==needed
    a.output.mkdir(parents=True,exist_ok=False);mapping=[]
    for k,(idx,new) in matches.items():
        original,data,folder=old[k];oid=original['cell'];nid=new['cell']
        dst=a.output/('cell_'+str(nid));dst.mkdir()
        for name,records in data.items():
            selected=[]
            for r in records:
                if r['cell']!=oid:continue
                r=copy.deepcopy(r);r['cell']=nid;selected.append(r)
            with (dst/(name+'.jsonl')).open('x') as f:
                for r in selected:f.write(json.dumps(r)+'\n')
        (dst/'header.json').write_text(json.dumps(dict(input_sha256=m['survivors_sha256'],first=idx,last=idx,
                                                      old_id=oid,coordinate_bound_migration=True))+'\n')
        (dst/'done.json').write_text(json.dumps(dict(cells=1,derived_witness=True))+'\n')
        mapping.append(dict(old_id=oid,new_id=nid,job=new['job'],level=new['level'],theta=new['theta']))
    report=dict(status='REKEYED_REQUIRES_AUDIT',transferred=len(matches),old_processed=len(old),
                not_in_new_survivors=[r[0]['cell'] for k,r in old.items() if k not in matches],
                inventory_manifest_sha256=sha(a.guarded_inventory/'manifest.json'),
                id_map_sha256=sha(a.id_map) if a.id_map else None,sources=sources,mapping=mapping)
    (a.output/'migration.json').write_text(json.dumps(report,indent=2)+'\n')
    print('Re-keyed',len(matches),'coordinate-identical witnesses; run audit.py --replay')
if __name__=='__main__':main()
