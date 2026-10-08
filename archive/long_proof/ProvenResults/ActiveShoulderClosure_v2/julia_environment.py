"""SHA-256 inventory for the pinned Julia package sources and artifact metadata.

The package manifests also pin binary artifact archives by SHA-256. Julia's
stdlib/runtime is version constrained and its local executable is receipted.
Capture is an explicit release action; check never rewrites the inventory.
"""
import argparse,hashlib,json,os,subprocess
from functools import lru_cache
from pathlib import Path
from geometry import HERE,ROOT

PRODUCTION_HASH='577018ebd9e3b0cee1134680a3d0302f3d972ff3211c3cf0cbacc5a6c09f961d'
BUNDLE_SOURCES='fasttm fastcoeffs single_radical single_radical_tm ctm fasthplus hform fastexcl lsred complete gram domain cover box_capacity cartesian_cover cover_labels cover_accelerated'.split()

def profile():
    name=os.environ.get('SHOULDER_JULIA_PROFILE','production')
    versions={'production':'1.12.7','local-1.12.1':'1.12.1'}
    if name not in versions:raise ValueError('unknown Julia profile')
    return name,versions[name]

def production_sources():
    # Match build_bundle.sh's file census and driver.jl's lexical ordering,
    # including its unnormalized Campaign/../Certification path component.
    base=ROOT/'NumericalCampaign/Campaign'
    files=sorted([base/'../Certification'/(n+'.jl') for n in BUNDLE_SOURCES]+[base/'driver.jl'],key=str)
    digest=hashlib.sha256(b'\0'.join(p.read_bytes() for p in files)).hexdigest()
    if digest!=PRODUCTION_HASH:raise ValueError('frozen production bundle SHA-256 mismatch')
    return dict(sha256=digest,files={str(p.resolve().relative_to(ROOT)):sha(p) for p in files})

CODE='''using TOML
d=TOML.parsefile(joinpath(dirname(Base.active_project()),"Manifest.toml"))
println("JULIA\\t",VERSION,"\\t",joinpath(Sys.BINDIR,Base.julia_exename()))
for (name,rs) in sort(collect(d["deps"]);by=first)
 r=only(rs);haskey(r,"git-tree-sha1") || continue
 p=Base.locate_package(Base.PkgId(Base.UUID(r["uuid"]),name))
 p===nothing && error("missing package: "*name)
 println(name,"\\t",r["version"],"\\t",p)
end
'''
def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()

def inventory():
    env=ROOT/'NumericalCampaign/Certification/jlenv_cluster'
    command=[os.environ.get('JULIA_BIN','julia'),'--startup-file=no','--compiled-modules=existing','--project='+str(env),'-e',CODE]
    out=subprocess.run(command,text=True,capture_output=True,check=True,timeout=120).stdout.splitlines()
    head=out.pop(0).split('\t')
    name,version=profile()
    if head[:2]!=['JULIA',version]:raise ValueError(f'Julia {version} required for {name}')
    packages={}
    for line in out:
        name,version,source=line.split('\t');base=Path(source).parent.parent
        files={}
        for p in sorted(base.rglob('*')):
            if p.is_file() and '.git' not in p.parts:
                files[str(p.relative_to(base))]=sha(p)
        packages[name]=dict(version=version,files=files)
    return dict(julia_version=head[1],project_sha256=sha(env/'Project.toml'),manifest_sha256=sha(env/'Manifest.toml'),packages=packages),dict(executable=head[2],executable_sha256=sha(head[2]))

@lru_cache(1)
def check():
    actual,runtime=inventory();expected=json.loads((HERE/'data/julia_dependencies.json').read_text())
    # The frozen manifest was generated with 1.12.1. Compare every package
    # byte under either explicit runtime profile; never rewrite the manifest.
    if {k:v for k,v in actual.items() if k!='julia_version'}!={k:v for k,v in expected.items() if k!='julia_version'}:raise ValueError('Julia package source/manifest SHA-256 mismatch')
    return dict(status='PASS',profile=profile()[0],julia_version=actual['julia_version'],production_runtime=profile()[0]=='production',production_sources=production_sources(),packages=len(actual['packages']),source_files=sum(len(p['files']) for p in actual['packages'].values()),**runtime)

if __name__=='__main__':
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--capture',action='store_true');a=ap.parse_args()
    if a.capture:
        inv,_=inventory();(HERE/'data/julia_dependencies.json').write_text(json.dumps(inv,indent=2,sort_keys=True)+'\n')
    print(json.dumps(check(),indent=2))
