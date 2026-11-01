#!/usr/bin/env python3
"""Build a source-bound offline deployment archive; no network access."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import tarfile
import run


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    if args.output.exists():parser.error('output already exists')
    manifest=run.binding(run.DEFAULT_ATLAS)
    paths=[*run.source_paths(),run.HERE/'README.md',run.DEFAULT_ATLAS]
    paths+=sorted((run.HERE/'results').glob('*')) if (run.HERE/'results').exists() else []
    paths=[p for p in sorted(set(paths)) if p.is_file()]
    files={str(p.relative_to(run.ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}
    archive_manifest=dict(binding=manifest,files=files,
        command='python proof/theorems/TC_triple_classification/family_neighbourhoods/run.py --index-file remaining-indices.txt --workers 8 --output receipts.jsonl')
    args.output.parent.mkdir(parents=True,exist_ok=True)
    with tarfile.open(args.output,'w:gz') as archive:
        for path in paths:archive.add(path,arcname=str(path.relative_to(run.ROOT)),recursive=False)
        data=(json.dumps(archive_manifest,indent=2)+'\n').encode();info=tarfile.TarInfo('DEPLOYMENT_MANIFEST.json');info.size=len(data)
        archive.addfile(info,io.BytesIO(data))
    digest=hashlib.sha256(args.output.read_bytes()).hexdigest()
    args.output.with_suffix(args.output.suffix+'.sha256').write_text(digest+'  '+args.output.name+'\n')
    print(json.dumps(dict(path=str(args.output.resolve()),sha256=digest,files=len(files),binding=manifest['id'])))


if __name__=='__main__':main()
