import Lean

/-! A bounded two-level composition capacity gate. The exact pending set is
ordinals68..99 followed by ordinal2241383:33 roots, not an intervening range.
The original compact modules retain each exact raw-erasure theorem. -/
open Lean Elab Command

run_elab do
  let env ← Lean.importModules #[
    { module := `DirectPhysicalInline },
    { module := `CoreTableBridge },
    { module := `CoreDataEqualitiesSplit },
    { module := `ApproximatePhaseFrontend },
    { module := `PhaseForest },
    { module := `SeedPhaseTapeComposition },
    { module := `CompactOrdinalBatch68Count32 },
    { module := `CompactCentre385Leaf8 }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `KernelLeaf8TwoLevelAssembly)
  let unpack (name : Name) : CommandElabM (Expr × Expr × Expr) := do
    let info ← getConstInfo name
    let .letE _ _ pending rest _ := info.type
      | throwError "compact input must bind its pending cells"
    let .letE _ _ tags rest _ := rest.instantiate1 pending
      | throwError "compact input must bind its exact witness tape"
    let proposition := rest.instantiate1 tags
    unless proposition.isAppOfArity `And 2 do
      throwError "compact input must retain acceptance and raw erasure"
    let args := proposition.getAppArgs
    let checked := mkAppN (mkConst `And.left) #[args[0]!, args[1]!, mkConst name]
    return (pending, tags, checked)
  let (p, a, hp) ← unpack
    `Seed0024PhaseCore20261007.CompactOrdinalBatch68Count32.checked_and_erased
  let (q, b, hq) ← unpack
    `Seed0024PhaseCore20261007.CompactCentre385Leaf8.checked_and_erased
  let cellType := mkConst `Seed0024PhaseCore20261007.CellCode
  let tagType := mkConst `Seed0024PhaseCore20261007.WitnessTag
  let pending := mkAppN (mkConst `List.append [.zero]) #[cellType, p, q]
  let tags := mkAppN (mkConst `List.append [.zero]) #[tagType, a, b]
  let checked := mkAppN (mkConst `Seed0024PhaseCore20261007.checkWitnessTape_append)
    #[p, q, a, b, hp, hq]
  let checkBody := mkAppN (mkConst `Seed0024PhaseCore20261007.checkWitnessTape)
    #[mkBVar 1, mkBVar 0]
  let checkEq := mkAppN (mkConst `Eq [.succ .zero])
    #[mkConst `Bool, checkBody, mkConst `Bool.true]
  let checkType := Expr.letE `pending (mkApp (mkConst `List [.zero]) cellType) pending
    (Expr.letE `tags (mkApp (mkConst `List [.zero]) tagType) tags checkEq false) false
  let arithmeticName := `Seed0024KernelCompact20261008.leaf8TwoLevel33_checked
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := arithmeticName, levelParams := [], type := checkType, value := checked })
  let physicalValue := mkAppN
    (mkConst `Seed0024DirectPhysical20261007.accepted_pending_physical) #[
      mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable,
      mkConst `Seed0024ClusterTubeTable20261007.compactSupplierTable_needed_accuracy,
      mkConst `Seed0024PhaseCoreBridge20261007.tableEntry_eq,
      mkConst `Seed0024PhaseCoreBridge20261007.centreEntry_eq,
      pending, tags, mkConst arithmeticName]
  let turns := mkConst `Seed0024ClusterTubeCover20261007.Turns
  let labels := mkApp (mkConst `Fin) (mkNatLit 48)
  let ray := mkApp (mkConst `Seed0024ClusterTube20261007.turnRay) (mkBVar 0)
  let labelBody := mkAppN (mkConst `Seed0024ClusterTube20261007.centreProjectorLabel)
    #[mkBVar 1, ray]
  let labelMem := mkLambda `k .default labels (mkLambda `theta .default turns labelBody)
  let mem := mkAppN (mkConst `List.Mem [.zero]) #[cellType, mkBVar 0, pending]
  let cell := mkApp (mkConst `Seed0024PhaseCoreBridge20261007.toPhaseCell) (mkBVar 1)
  let covered := mkAppN (mkConst `Seed0024ClusterTubeCover20261007.CoveredCell) #[
    mkNatLit 48, mkConst `Seed0024ClusterTube20261007.ClosedPhaseDomain, labelMem, cell]
  let physicalType := mkForall `s .default cellType (mkForall `hmem .default mem covered)
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024KernelCompact20261008.leaf8TwoLevel33_closedDomain,
      levelParams := [], type := physicalType, value := physicalValue })

#print axioms Seed0024KernelCompact20261008.leaf8TwoLevel33_checked
#print axioms Seed0024KernelCompact20261008.leaf8TwoLevel33_closedDomain
#print Seed0024KernelCompact20261008.leaf8TwoLevel33_closedDomain
