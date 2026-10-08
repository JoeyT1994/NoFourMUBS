import Lean

/-! Operational inspection of compiled declarations. This module is compiled
using only the pinned toolchain's Lean library. Candidate command elaborators,
pretty-printers, plugins and initializers are not used to inspect declarations. -/

private structure Request where
  sysroot : String
  paths : Array String
  module : String
  declarations : Array String
  expected_types : Array (String × Lean.Json)
  nonce : String
  deriving Lean.FromJson

private instance : Lean.MonadEnv (StateM Lean.Environment) where
  getEnv := get
  modifyEnv := modify

private def kind (info : Lean.ConstantInfo) : String :=
  match info with
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

private def find (env : Lean.Environment) (name : Lean.Name) : IO Lean.ConstantInfo :=
  match (env.setExporting false).find? name (skipRealize := true) with
  | some info => pure info
  | none => throw <| IO.userError s!"missing exact declaration: {name}"

private def sameSignature (a b : Lean.ConstantInfo) : Bool :=
  kind a == kind b && a.levelParams == b.levelParams && a.type == b.type

private def references (expression : Lean.Expr) : IO (Array Lean.Name) := do
  let result ← IO.mkRef #[]
  expression.forEach fun term => do
    match term with
    | .const name _ | .proj name _ _ => result.modify (·.push name)
    | _ => pure ()
  result.get

/-- Inspect actual private-level kernel declarations without the exported axiom
metadata cache. The union is over exactly the requested roots; shared proof
dependencies are traversed once. Inductive/recursor metadata is conservative. -/
private def directAxioms (env : Lean.Environment) (roots : Array Lean.Name) : IO (Array Lean.Name) := do
  let mut pending := roots
  let mut visited : Lean.NameSet := {}
  let mut axioms := #[]
  let mut count := 0
  while !pending.isEmpty do
    let name := pending.back!
    pending := pending.pop
    if visited.contains name then continue
    count := count + 1
    if count > 2000000 then throw <| IO.userError "direct proof traversal bound exceeded"
    visited := visited.insert name
    let info ← find env name
    if let .axiomInfo _ := info then axioms := axioms.push name
    pending := pending ++ (← references info.type)
    if let some value := info.value? (allowOpaque := true) then
      pending := pending ++ (← references value)
    else
      match info with
      | .thmInfo _ | .defnInfo _ | .opaqueInfo _ =>
        throw <| IO.userError s!"missing private declaration value: {name}"
      | _ => pure ()
    match info with
    | .inductInfo value => pending := pending ++ value.all.toArray ++ value.ctors.toArray
    | .recInfo value =>
      pending := pending ++ value.all.toArray
      for rule in value.rules do
        pending := pending.push rule.ctor ++ (← references rule.rhs)
    | _ => pure ()
  return axioms

private partial def expression (json : Lean.Json) : IO Lean.Expr := do
  match json.getObjValAs? String "const" with
  | .ok name => pure <| Lean.mkConst name.toName
  | .error _ =>
    match json.getObjValAs? (Array Lean.Json) "app" with
    | .ok #[fn, arg] => return Lean.mkApp (← expression fn) (← expression arg)
    | _ => throw <| IO.userError "invalid closed type expression"

private def checkType (env : Lean.Environment) (actual expected : Lean.Expr) : IO Bool := do
  let computation : Lean.MetaM Bool := do
    Lean.Meta.check expected
    let sort ← Lean.Meta.inferType expected
    unless ← Lean.Meta.isDefEq sort (.sort .zero) do
      throwError "expected terminal type is not a closed proposition"
    Lean.Meta.isDefEq actual expected
  let startHeartbeats ← IO.getNumHeartbeats
  let result ← ((computation.run).run
    { fileName := "trusted-axiom-probe", fileMap := Lean.FileMap.ofString "",
      initHeartbeats := startHeartbeats }
    { env := env.setExporting false }).toBaseIO
  match result with
  | .ok ((answer, _), _) => pure answer
  | .error _ => throw <| IO.userError "trusted expected-type check failed"

def main (args : List String) : IO Unit := do
  let [requestPath] := args
    | throw <| IO.userError "usage: AxiomProbe REQUEST.json"
  let raw ← IO.FS.readFile requestPath
  let request : Request ←
    match Lean.Json.parse raw >>= Lean.fromJson? with
    | .ok value => pure value
    | .error message => throw <| IO.userError message
  if request.declarations.isEmpty || request.nonce.isEmpty then
    throw <| IO.userError "empty declaration list or nonce"
  -- The launcher uses trusted toolchain paths only. Load canonical Init before
  -- making candidate modules visible, and retain it in the audited environment.
  Lean.initSearchPath (System.FilePath.mk request.sysroot)
  let trusted ← Lean.importModules #[{ module := `Init }] {}
    (trustLevel := 0) (plugins := #[]) (loadExts := false)
  Lean.searchPathRef.set (request.paths.toList.map System.FilePath.mk)
  let env ← Lean.importModules #[{ module := `Init }, { module := request.module.toName }] {}
    (trustLevel := 0) (plugins := #[]) (loadExts := false)
  let modulePath ← Lean.findOLean request.module.toName
  let allowed := #[`propext, `Classical.choice, `Quot.sound]
  let direct ← directAxioms env (request.declarations.map String.toName)
  for axiomName in direct do
    unless allowed.contains axiomName do
      throw <| IO.userError s!"Unadmitted axiom in direct proof traversal: {axiomName}"
    unless sameSignature (← find trusted axiomName) (← find env axiomName) do
      throw <| IO.userError s!"noncanonical direct standard axiom: {axiomName}"
  for declaration in request.declarations do
    let name := declaration.toName
    let info ← find env name
    let mut expectedType := ""
    if let some (_, ast) := request.expected_types.find? (fun row => row.1 == declaration) then
      let expected ← expression ast
      unless ← checkType env info.type expected do
        throw <| IO.userError s!"exact declaration type mismatch: {name}"
      expectedType := reprStr expected
    let axioms := ((Lean.collectAxioms (m := StateM Lean.Environment) name).run env).1
    for axiomName in axioms do
      if allowed.contains axiomName then
        let canonical ← find trusted axiomName
        let actual ← find env axiomName
        unless sameSignature canonical actual do
          throw <| IO.userError s!"noncanonical standard axiom: {axiomName}"
    IO.println <| (Lean.Json.mkObj [
      ("schema", Lean.toJson "mub6/direct-axiom-probe-v1"),
      ("nonce", Lean.toJson request.nonce),
      ("module", Lean.toJson request.module),
      ("module_olean", Lean.toJson modulePath.toString),
      ("declaration", Lean.toJson declaration),
      ("kind", Lean.toJson (kind info)),
      ("type_expression", Lean.toJson (reprStr info.type)),
      ("expected_type_checked", Lean.toJson (!expectedType.isEmpty)),
      ("expected_type_expression", Lean.toJson expectedType),
      ("direct_batch_axioms", Lean.toJson (direct.map Lean.Name.toString)),
      ("axioms", Lean.toJson (axioms.map Lean.Name.toString))]).compress
