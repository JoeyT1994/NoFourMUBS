"""Fresh native build, confined to this additive module."""
from pathlib import Path
import subprocess,tempfile,os,hashlib,json
HERE=Path(__file__).resolve().parent

def compile_engine(order=4):
 from pins import check
 runtime=check()
 if order not in (3,4,5):raise ValueError('unsupported order')
 work=HERE/'work';work.mkdir(exist_ok=True)
 folder=Path(tempfile.mkdtemp(prefix='fresh-',dir=work));binary=folder/'mean_engine.so'
 command=[os.environ.get('CXX','c++'),'-O3',f'-DTM_ORDER={order}','-std=c++17','-fno-fast-math','-ffp-contract=off','-fPIC','-shared',str(HERE/'mean_engine.cpp'),'-o',str(binary)]
 subprocess.run(command,check=True,capture_output=True,text=True,env=dict(os.environ,TMPDIR=str(work)))
 sources=[HERE/'mean_engine.cpp',HERE/'taylor.hpp',HERE/'provider.py',HERE/'search.py',HERE/'verify.py',HERE.parent/'SignedCornerPSDPrune/engine.cpp',HERE.parent/'SignedCornerPSDPrune/determinant_terms.hpp']
 return str(binary),dict(runtime=runtime,sources={str(p.relative_to(HERE.parents[1])):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},command=command,sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),compiler=subprocess.check_output([command[0],'--version'],text=True).splitlines()[0],order=order)
