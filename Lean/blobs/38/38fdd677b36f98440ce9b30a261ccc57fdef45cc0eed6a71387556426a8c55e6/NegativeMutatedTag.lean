import Lean

/- Intentionally invalid structural-transport proof. Only kernel rejection passes this control. -/
open Lean Elab Command
run_elab do
  let env ← Lean.importModules #[
    { module := `TapeCompositionTransport },
    { module := `Leaf8Centre385Group01 },
    { module := `Leaf8Centre385Group02 }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `NegativeMutatedTag)
  let unpack (name : Name) : TermElabM (Expr × Expr × Expr) := do
    let info ← getConstInfo name
    let .letE _ _ pending rest _ := info.type | throwError "pending let missing"
    let .letE _ _ tags _ _ := rest.instantiate1 pending | throwError "tags let missing"
    return (pending, tags, mkConst name)
  let (p, a, hp) ← unpack `Seed0024PhaseCore20261007.Leaf8Centre385Group01.checked
  let (q, b, hq) ← unpack `Seed0024PhaseCore20261007.Leaf8Centre385Group02.checked
  let cellType := mkConst `Seed0024PhaseCore20261007.CellCode
  let tagType := mkConst `Seed0024PhaseCore20261007.WitnessTag
  let cells := mkApp (mkConst `List [.zero]) cellType
  let tags := mkApp (mkConst `List [.zero]) tagType
  let append (typ x y : Expr) := mkAppN (mkConst `List.append [.zero]) #[typ, x, y]
  let goodP := append cellType p q
  let goodA := append tagType a b
  unless a.isAppOfArity `List.cons 3 do throwError "literal first witness tag missing"
  let aTail := a.getAppArgs[2]!
  let changedA := mkAppN (mkConst `List.cons [.zero])
    #[tagType, mkConst `Seed0024PhaseCore20261007.WitnessTag.split, aTail]
  let badP := goodP
  let badA := append tagType changedA b
  let hpWrong := mkAppN (mkConst `Eq.refl [.succ .zero]) #[cells, goodP]
  let htWrong := mkAppN (mkConst `Eq.refl [.succ .zero]) #[tags, goodA]
  let value := mkAppN
    (mkConst `Seed0024PhaseCore20261007.checkWitnessTape_append_transport)
    #[p, q, badP, a, b, badA, hpWrong, htWrong, hp, hq]
  let checked := mkAppN (mkConst `Seed0024PhaseCore20261007.checkWitnessTape) #[badP, badA]
  let claimed := mkAppN (mkConst `Eq [.succ .zero]) #[mkConst `Bool, checked, mkConst `Bool.true]
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024NegativeControl20261008.mutatedTag,
      levelParams := [], type := claimed, value := value })
