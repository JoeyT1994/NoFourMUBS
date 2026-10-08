import Lean

/- Diagnostic only: no declaration insertion or mathematical admission. -/
open Lean Elab Command

run_elab do
  let checkpoint (s : String) : TermElabM Unit := do
    liftIO do
      let stream ← IO.getStdout
      stream.putStrLn s
      stream.flush
  checkpoint "CHECKPOINT0 before exact dynamic import"
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreTableBridge },
    { module := `CoreDataEqualitiesSplit },
    { module := `ApproximatePhaseFrontend },
    { module := `PhaseForest },
    { module := `SeedPhaseTapeComposition },
    { module := `CompactOrdinalBatch68Count32 },
    { module := `SegmentedCentre385Leaf8 }]
    {} (trustLevel := 0) (loadExts := false)
  checkpoint "CHECKPOINT1 exact dynamic import returned"
  setEnv (env.setMainModule `SegmentedPhysicalImportDiagnostic)
  checkpoint "CHECKPOINT2 imported environment installed"
  for name in #[
      `Seed0024PhaseCore20261007.CompactOrdinalBatch68Count32.checked_and_erased,
      `Seed0024PhaseCore20261007.SegmentedCentre385Leaf8.checked_and_erased] do
    let info ← getConstInfo name
    let .letE _ _ pending rest _ := info.type
      | throwError "missing literal pending let"
    let .letE _ _ tags rest _ := rest.instantiate1 pending
      | throwError "missing literal tags let"
    let proposition := rest.instantiate1 tags
    unless proposition.isAppOfArity `And 2 do
      throwError "input is not acceptance plus erasure"
    let args := proposition.getAppArgs
    unless args[0]!.isAppOfArity `Eq 3 do
      throwError "acceptance must be an equality"
    let checkArgs := args[0]!.getAppArgs
    unless checkArgs[1]!.isAppOfArity
        `Seed0024PhaseCore20261007.checkWitnessTape 2 do
      throwError "acceptance must mention exact tape checker"
    checkpoint s!"CHECKPOINT3 inspected literal type of {name}"
    let projection := mkAppN (mkConst `And.left) #[args[0]!, args[1]!, mkConst name]
    let _ ← Lean.Meta.inferType projection
    checkpoint s!"CHECKPOINT4 inferred And.left projection of {name}"
  checkpoint "CHECKPOINT5 diagnostic complete: no addDecl and no proof admission"
