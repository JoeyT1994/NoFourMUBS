"""Assembly must replay plane proofs and preserve every other discharge route."""
import contextlib, io, json, subprocess, sys, tempfile, unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch
import assemble
import verify_ball
from plane_column_certificate import digest


class AssemblyTests(unittest.TestCase):
    def test_both_manifest_layouts_bypass_cache_and_keep_mixed_dependencies(self):
        for nested in (False, True):
            with self.subTest(nested=nested), tempfile.TemporaryDirectory() as tmp:
                root=Path(tmp)
                for name in ('split','work','gamma','anchored','graph','plane','checker'):
                    (root/name).mkdir()
                def write(name,text='fixture'):
                    p=root/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(text);return str(p)
                row=dict(index=0,status='NOT ESTABLISHED')
                write('split/b825_l2.jsonl',json.dumps(row)+'\n');write('split/b825_l2.json.gz')
                auditor=write('auditor.py');builder=write('builder.py');lower=write('lower.json')
                write('gamma/b825.jsonl','{}\n')
                write('anchored/b825.jsonl','{"status":"EXCLUDED_GIVEN_INPUT_ENCLOSURES"}\n')
                write('graph/b825.jsonl','{"status":"PROVED_PATTERN_EXCLUSION"}\n')
                a=SimpleNamespace(tree_auditor=auditor,tree_auditor_sha=digest(auditor),work=str(root/'work'),
                    split_version=[builder],split_dir=str(root/'split'),l3_dir=[],chain_dir=[],cache=str(root/'cache.json'),
                    plane_dir=None,plane_root=str(root/'checker'),tc_tree=str(root),workers=1,
                    gamma=[],gamma_dir=str(root/'gamma'),gamma_sha='g',gamma_lower=lower,
                    gamma_rules='fourier,anchored,graph',anchored_dir=str(root/'anchored'),anchored_sha='a',
                    anchored_runner_sha='ar',graph_receipts=str(root/'graph'),graph_dir=str(root/'graph'),
                    graph_sha='g',graph_runner_sha='gr')
                rc=SimpleNamespace(sha_file=digest,CLOSED={'CERTIFIED','CERTIFIED EMPTY'},
                    load_split=lambda p:([{}],None,'s'),read_jsonl=lambda p:[row],record_sha=lambda r:'r')
                verdict=dict(status='GEOMETRY_AND_RECEIPTS_VERIFIED',layers=[dict(closed=1)],
                             tangent_cells=0,discharged=[],gamma={})
                def answer():return SimpleNamespace(returncode=0,stdout=json.dumps(verdict),stderr='')
                with patch.object(subprocess,'run',return_value=answer()):
                    first=assemble.trees(a,SimpleNamespace(guards=set()),{},rc)
                self.assertEqual(first[825]['rule'],'certifier')
                manifest=write('plane/b825/manifest.json' if nested else 'plane/b825.json','{"cells":[]}')
                a.plane_dir=str(root/'plane')
                verdict.update(gamma=dict(plane=1,graph=1,anchored=1,fourier=1),plane=dict(cells=[{}]))
                with patch.object(subprocess,'run',return_value=answer()) as replay:
                    result=assemble.trees(a,SimpleNamespace(guards=set()),{},rc,out=str(root/'out'))
                replay.assert_called_once()
                command=replay.call_args.args[0]
                self.assertEqual(command[command.index('--plane')+1],manifest)
                self.assertEqual(command[command.index('--root')+1],a.plane_root)
                cert=json.loads(Path(result[825]['certificate']).read_text())
                for key in ('plane','gamma','graph','anchored'):self.assertTrue(cert[key])
                failed=SimpleNamespace(returncode=1,stdout='',stderr='nested proof changed')
                with patch.object(subprocess,'run',return_value=failed) as replay:
                    result=assemble.trees(a,SimpleNamespace(guards=set()),{},rc)
                replay.assert_called_once()
                self.assertIn('nested proof changed',result[825]['status'])

    def test_verifier_replays_legacy_and_nested_plane_manifests(self):
        with tempfile.TemporaryDirectory() as tmp:
            root=Path(tmp)
            def file(name,text='fixture'):
                p=root/name;p.write_text(text);return dict(path=str(p),sha256=digest(p))
            plane=file('plane.json');auditor=file('auditor.py');stage=file('stage.jsonl','');guard=file('guard.py')
            for nested in (False,True):
                certificate=dict(schema='tc-tree-certificate-v1',ball=825,route='test',rule='plane',
                    auditor=auditor,stage_c=stage,layers=[],plane=(dict(manifest=plane,root=str(root/'checker'),
                    cell_files=[]) if nested else plane))
                path=root/'certificate.json';path.write_text(json.dumps(certificate))
                args=['verify_ball.py',str(path),'--root',str(root),'--guard',guard['path']]
                result=dict(status='GEOMETRY_AND_RECEIPTS_VERIFIED',layers=[],discharged=[],plane=dict(cells=[]))
                response=SimpleNamespace(returncode=0,stdout=json.dumps(result),stderr='')
                with patch.object(sys,'argv',args),patch.object(subprocess,'run',return_value=response) as replay,\
                     contextlib.redirect_stdout(io.StringIO()):verify_ball.main()
                command=replay.call_args.args[0]
                self.assertEqual(command[command.index('--plane')+1],plane['path'])
                self.assertEqual(command[command.index('--root')+1],str(root/'checker') if nested else str(root))


if __name__=='__main__':unittest.main()
