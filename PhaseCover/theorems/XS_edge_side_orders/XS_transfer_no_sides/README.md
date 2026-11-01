# XS: transfer into the Fourier chart without side data

Read `REPORT.md` for the theorem, proof, inherited assumptions, and exact scope.

**Main result (PROVED relative to W/U):** if the extracted parameter lies in a target contained in W's exact tangent ellipsoid of radius `1/5`, and the incoming Hadamard has Fourier phase quotient distance at most `3/20`, then it is equivalent to the chart matrix at exactly that parameter. No side orders, side windings, orientation signs, or target side-tube membership are required. The fold `y=0` is included.

The improved coarse radius `0.1514489` is also proved. All **4,528 supplied boxes** pass the replacement coarse-distance gate, with worst bound `<0.128601`, conditional on their existing source C1 enclosures.

## Contents

- `REPORT.md`: complete statements, proofs, status labels, and migration details.
- `verify_transfer_theorem.py`: exact new constants, 14,400-corner census, and improved coarse-radius comparisons; standard library only.
- `verify_coarse.py` and `coarse_data.json`: exact checks of all 4,528 replacement distance inequalities and literal target containment; standard library only.
- `extract_coarse_data.py`: regenerates the minimal data from the original attachment's extracted `context` directory.
- `verify_side_bound.py`: regenerates the exact augmented Jacobian and checks both side-angle bounds; requires `python-flint`.
- `t3_no_sides.py`: Python integration prototype for reduced parameter extraction and target membership; requires `numpy`, `python-flint`, and the unchanged supplied reference modules under `reference`.
- `verify_t3_prototype.py`: meaningful extraction and rejection checks for that prototype.
- `receipts/`: results recorded from the replays.
- `reference/`: supplied W theorem report, brief, format, edge header, and the two Taylor-model reference modules needed by the prototype.
- `MANIFEST.sha256`: hashes of the delivered files.

## Replay the exact core without installing packages

From this directory, using normal Python (not `python -O`):

```sh
python verify_transfer_theorem.py
python verify_coarse.py
```

The expected coarse-check output contains four sources, 22 groups, 4,528 boxes, and strict bounds `.128601`, `.100762`, `.118283`, `.092678`.

## Replay the side algebra and prototype

In an environment with `numpy` and `python-flint` installed:

```sh
python verify_side_bound.py
PYTHONPATH=reference python verify_t3_prototype.py
```

Both core scripts also accept `--output PATH` to save a JSON receipt. The side script prints its receipt as JSON. Use normal Python because the exact verifiers use assertions as gates.

## Re-extract the source subset

The original 11 MB compressed certificate is not duplicated in this return. It remains in the supplied input archive. After extracting that archive:

```sh
python extract_coarse_data.py /absolute/path/to/XS_edge_side_orders/context --output regenerated.json
python verify_coarse.py --data regenerated.json
```

The generated JSON should match the shipped `coarse_data.json` byte for byte. Its source hashes and exact selected-data hashes are recorded. The extraction deliberately drops all four prohibited side-data fields.

## Proof dependencies and limitations

The full W and U verifiers were not supplied. Their accepted chart, normal-graph, extraction, and side-error theorems are inputs, explicitly identified by the receipts and report. The four source C1 enclosures are also inputs to the sample distance check. We do not independently certify them here.

The sample replay certifies the **new coarse-distance gate**, not the remaining target-parameter membership. The prototype consumes an already certified distance bound; a plain numeric argument is not a proof of that premise. The new proof must be connected to the production certifier's proof objects or kernel.

`t=0.20` is the largest justified chart radius from the supplied W input. `t=0.30`, enlargement of the entire quartet-free X-ball, and Julia/Lean integration are **NOT ESTABLISHED** by this package. No MUB atlas theorem or Stage C result is used.
