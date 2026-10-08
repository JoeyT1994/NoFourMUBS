import Lean

/- Complete32-child composition of the same385-tag root. All arithmetic was
checked in bounded group modules; this step uses checked append/split lemmas. -/
open Lean Elab Command
set_option maxRecDepth 65536

run_elab do
  let env ← Lean.importModules #[
    { module := `SeedPhaseTapeComposition },
    { module := `Compact385Group00 },
    { module := `Compact385Group01 },
    { module := `Compact385Group02 },
    { module := `Compact385Group03 },
    { module := `Compact385Group04 },
    { module := `Compact385Group05 },
    { module := `Compact385Group06 },
    { module := `Compact385Group07 },
    { module := `Compact385Group08 },
    { module := `Compact385Group09 },
    { module := `Compact385Group10 },
    { module := `Compact385Group11 },
    { module := `Compact385Group12 },
    { module := `Compact385Group13 },
    { module := `Compact385Group14 },
    { module := `Compact385Group15 },
    { module := `Compact385Group16 },
    { module := `Compact385Group17 },
    { module := `Compact385Group18 },
    { module := `Compact385Group19 },
    { module := `Compact385Group20 },
    { module := `Compact385Group21 }]
    {} (trustLevel := 0) (loadExts := false)
  setEnv (env.setMainModule `CompactCentre385Grouped)
  let unpack (name : Name) : CommandElabM (Expr × Expr × Expr) := do
    let info ← getConstInfo name
    let .letE _ _ pending rest _ := info.type
      | throwError "group must bind pending cells"
    let .letE _ _ tags rest _ := rest.instantiate1 pending
      | throwError "group must bind its exact tape"
    let proposition := rest.instantiate1 tags
    unless proposition.isAppOfArity `And 2 do
      throwError "group must preserve acceptance and raw erasure"
    let args := proposition.getAppArgs
    return (pending, tags,
      mkAppN (mkConst `And.left) #[args[0]!, args[1]!, mkConst name])
  let cellType := mkConst `Seed0024PhaseCore20261007.CellCode
  let tagType := mkConst `Seed0024PhaseCore20261007.WitnessTag
  let cellsType := mkApp (mkConst `List [.zero]) cellType
  let tagsType := mkApp (mkConst `List [.zero]) tagType
  let mut forest : Option (Expr × Expr × Expr) := none
  for name in #[`Seed0024PhaseCore20261007.Compact385Group00.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group01.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group02.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group03.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group04.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group05.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group06.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group07.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group08.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group09.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group10.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group11.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group12.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group13.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group14.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group15.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group16.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group17.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group18.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group19.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group20.checked_and_erased,
      `Seed0024PhaseCore20261007.Compact385Group21.checked_and_erased] do
    let (q, b, hq) ← unpack name
    match forest with
    | none => forest := some (q, b, hq)
    | some (p, a, hp) =>
      let pp := mkAppN (mkConst `List.append [.zero]) #[cellType, p, q]
      let tt := mkAppN (mkConst `List.append [.zero]) #[tagType, a, b]
      let hh := mkAppN (mkConst `Seed0024PhaseCore20261007.checkWitnessTape_append)
        #[p, q, a, b, hp, hq]
      forest := some (pp, tt, hh)
  let some (_, childTags, childChecked) := forest
    | throwError "empty group collection cannot close a split"
  let s := mkApp (mkConst `Seed0024PhaseCore20261007.ordinalCellCode) (mkNatLit 2241383)
  let pending := mkAppN (mkConst `List.cons [.zero])
    #[cellType, s, mkApp (mkConst `List.nil [.zero]) cellType]
  let tags := mkAppN (mkConst `List.cons [.zero])
    #[tagType, mkConst `Seed0024PhaseCore20261007.WitnessTag.split, childTags]
  let guardRefl := mkAppN (mkConst `Eq.refl [.succ .zero]) #[mkConst `Bool, mkConst `Bool.true]
  let checked := mkAppN (mkConst `Seed0024PhaseCore20261007.checkWitnessTape_split)
    #[s, childTags, guardRefl, guardRefl, childChecked]
  let bytesType := mkApp (mkConst `List [.zero]) (mkConst `UInt8)
  let mut raw := mkApp (mkConst `List.nil [.zero]) (mkConst `UInt8)
  for n in (#[54, 6, 6, 6, 6, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 6, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1, 6, 54, 1, 4, 4, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 1, 6, 4, 4, 1, 1, 1, 4, 6, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 1, 1, 6, 1, 1, 1, 6, 1, 1, 1, 1, 6, 54, 1, 6, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 6, 6, 1, 6, 1, 5, 1, 1, 1, 6, 6, 1, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 1, 1, 6, 1, 1, 1, 6, 1, 1, 1, 1, 54, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 6, 54, 2, 6, 6, 6, 2, 2, 2, 6, 1, 6, 6, 6, 1, 6, 1, 6, 2, 2, 2, 2, 0, 0, 2, 2, 0, 0, 6, 6, 0, 0, 2, 6, 6, 54, 4, 6, 4, 4, 4, 4, 4, 4, 6, 6, 4, 6, 1, 6, 4, 4, 6, 6, 4, 6, 2, 6, 4, 4, 6, 6, 6, 6, 6, 6, 4, 6, 6, 54, 3, 6, 3, 6, 1, 6, 6, 6, 1, 3, 3, 3, 1, 1, 1, 6, 3, 6, 3, 6, 0, 6, 6, 6, 3, 3, 3, 3, 0, 0, 3, 6, 6, 6, 6, 54, 1, 1, 1, 6, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 6, 54, 1, 6, 6, 6, 1, 1, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 4, 6, 1, 6, 5, 5, 1, 1, 1, 6, 6] : Array Nat).reverse do
    let byte := mkApp (mkConst `UInt8.ofNat) (mkNatLit n)
    raw := mkAppN (mkConst `List.cons [.zero]) #[mkConst `UInt8, byte, raw]
  let checkProp := mkAppN (mkConst `Eq [.succ .zero]) #[mkConst `Bool,
    mkAppN (mkConst `Seed0024PhaseCore20261007.checkWitnessTape) #[pending, tags],
    mkConst `Bool.true]
  let eraseProp := mkAppN (mkConst `Eq [.succ .zero]) #[bytesType,
    mkApp (mkConst `Seed0024PhaseCore20261007.eraseTape) tags, raw]
  let eraseProof := mkAppN (mkConst `Eq.refl [.succ .zero]) #[bytesType, raw]
  let value := mkAppN (mkConst `And.intro) #[checkProp, eraseProp, checked, eraseProof]
  let checkBody := mkAppN (mkConst `Eq [.succ .zero]) #[mkConst `Bool,
    mkAppN (mkConst `Seed0024PhaseCore20261007.checkWitnessTape) #[mkBVar 1, mkBVar 0],
    mkConst `Bool.true]
  let eraseBody := mkAppN (mkConst `Eq [.succ .zero]) #[bytesType,
    mkApp (mkConst `Seed0024PhaseCore20261007.eraseTape) (mkBVar 0), raw]
  let body := mkAppN (mkConst `And) #[checkBody, eraseBody]
  let type := Expr.letE `pending cellsType pending
    (Expr.letE `tags tagsType tags body false) false
  withOptions (fun opts => opts.setBool `debug.skipKernelTC false) do
    Lean.addDecl (.thmDecl {
      name := `Seed0024PhaseCore20261007.CompactCentre385Grouped.checked_and_erased,
      levelParams := [], type := type, value := value })

#print axioms Seed0024PhaseCore20261007.CompactCentre385Grouped.checked_and_erased
