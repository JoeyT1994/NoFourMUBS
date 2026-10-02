"""Fail early when the selected C++17 compiler cannot link/run UBSan."""
import json,os,shlex,subprocess,tempfile
from pathlib import Path

def check():
    compiler=shlex.split(os.environ.get('CXX','g++'))
    with tempfile.TemporaryDirectory(prefix='shoulder_cxx_') as d:
        p=Path(d);(p/'probe.cpp').write_text('int main(){volatile int x=1; return x-1;}\n')
        command=compiler+['-O2','-std=c++17','-fno-fast-math','-ffp-contract=off','-fsanitize=undefined','-fno-sanitize-recover=undefined',str(p/'probe.cpp'),'-o',str(p/'probe')]
        built=subprocess.run(command,capture_output=True,text=True)
        if built.returncode:raise RuntimeError('C++17/UBSan unavailable; on rusty load gcc/13.3.0. '+built.stderr)
        subprocess.run([str(p/'probe')],check=True,capture_output=True,text=True)
    return dict(status='PASS',compiler=compiler,version=subprocess.check_output(compiler+['--version'],text=True).splitlines()[0],UBSan_link_and_run=True)
if __name__=='__main__':print(json.dumps(check()))
