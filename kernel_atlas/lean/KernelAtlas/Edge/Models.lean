import KernelAtlas.Edge.C1e
import KernelAtlas.Seed.Core

/-! Shared edge completion models for image checks and transfers. -/

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def angleModel (D : EBoxD) : CT :=
  let H := gT (tubeE D.phH D.eH) 0
  let V := gT (tubeE D.phV D.eV) 0
  addRho H (bnd D.hb (sub H V))

def cornerModels (B : EBallD) (D : EBoxD) : List CT :=
  ((l3 (aT B D)).map (expI D.hb nT)) ++
    [addRho (expI D.hb nT (re (gT D.phH 0))) (gn D.eH 0)]

def forcedModel (B : EBallD) (D : EBoxD) : DOut :=
  forcedT D.hb D.Xp D.A0 (ET (cornerModels B D))
    (BT (rowsE D.hb D.phH D.eH)) (CT3 (rowsE D.hb D.phV D.eV))

def argModels (B : EBallD) (D : EBoxD) : List CT :=
  l9 fun q => argT D.hb nT (gi B.Pa q) (gT (forcedModel B D).D q)

def derivModel (B : EBallD) (D : EBoxD) : CT :=
  let e := (l3 (aT B D)).map (expI D.hb nT)
  dRT D.hb (gT e 0) (gT e 1) (gT e 2) (expI D.hb nT (angleModel D))

def coreOK (B : EBallD) (D : EBoxD) : Bool :=
  let h := D.hb
  let a := l3 (aT B D)
  let e012 := a.map (expI h nT)
  let y := yT B D
  let okH := sideE h false e012 y D.phH D.YH D.rhoH D.eH
  let okV := sideE h true e012 y D.phV D.YV D.rhoV D.eV
  let xH := tubeE D.phH D.eH
  let xV := tubeE D.phV D.eV
  let e3 := addRho (expI h nT (re (gT D.phH 0))) (gn D.eH 0)
  let xyH := rowsE h D.phH D.eH
  let xyV := rowsE h D.phV D.eV
  -- `∂₄R > 0` between `t` and `t′`
  let S := addRho (gT xH 0) (bnd h (sub (gT xH 0) (gT xV 0)))
  let dR := dRT h (gT e012 0) (gT e012 1) (gT e012 2) (expI h nT S)
  -- the completion
  let e := e012 ++ [e3]
  let Dk := forcedT h D.Xp D.A0 (ET e) (BT xyH) (CT3 xyV)
  let argD := l9 fun q => argT h nT (gi B.Pa q) (gT Dk.D q)
  a.all (fun t => expOK t nT) && okH && okV && expOK S nT && posOK h dR && Dk.ok &&
    (l9 fun q => argOK h nT (gi B.Pa q) (gT Dk.D q) && argWin h (gi B.Pa q) (gT argD q)).all id

/-- The phase models used by the C1e bound and outgoing transfers. -/
def qModels (B : EBallD) (D : EBoxD) : List CT :=
  let h := D.hb
  let a := l3 (aT B D)
  let e012 := a.map (expI h nT)
  let xH := tubeE D.phH D.eH
  let xV := tubeE D.phV D.eV
  let e3 := addRho (expI h nT (re (gT D.phH 0))) (gn D.eH 0)
  let Dk := forcedT h D.Xp D.A0 (ET (e012 ++ [e3])) (BT (rowsE h D.phH D.eH)) (CT3 (rowsE h D.phV D.eV))
  QT h (a ++ [gT xH 0]) (l6 fun j => gT xH (j + 1)) (l6 fun j => gT xV (j + 1))
    (l9 fun q => argT h nT (gi B.Pa q) (gT Dk.D q))

/-- The complex entry models of the edge completion. -/
def kModels (B : EBallD) (D : EBoxD) : List CT :=
  let h := D.hb
  let e012 := (l3 (aT B D)).map (expI h nT)
  let e3 := addRho (expI h nT (re (gT D.phH 0))) (gn D.eH 0)
  let E := ET (e012 ++ [e3])
  let Bm := BT (rowsE h D.phH D.eH)
  let C := CT3 (rowsE h D.phV D.eV)
  blocksT E Bm C (forcedT h D.Xp D.A0 E Bm C).D

lemma c1eBox_eq (B : EBallD) (D : EBoxD) :
    c1eBox B D = (coreOK B D && boundOK D.hb B.nX (hor36 (l36 (difF6 (qModels B D))))) := rfl

structure CoreParts (B : EBallD) (D : EBoxD) : Prop where
  exp_a : (l3 (aT B D)).all (fun t => expOK t nT) = true
  sideH : sideE D.hb false ((l3 (aT B D)).map (expI D.hb nT)) (yT B D)
    D.phH D.YH D.rhoH D.eH = true
  sideV : sideE D.hb true ((l3 (aT B D)).map (expI D.hb nT)) (yT B D)
    D.phV D.YV D.rhoV D.eV = true
  exp_angle : expOK (angleModel D) nT = true
  positive : posOK D.hb (derivModel B D) = true
  forced : (forcedModel B D).ok = true
  arg : (l9 fun q => argOK D.hb nT (gi B.Pa q) (gT (forcedModel B D).D q) &&
    argWin D.hb (gi B.Pa q) (gT (argModels B D) q)).all id = true

lemma coreOK_parts {B : EBallD} {D : EBoxD} (hok : coreOK B D = true) : CoreParts B D := by
  simp only [coreOK, Bool.and_eq_true] at hok
  exact ⟨hok.1.1.1.1.1.1, hok.1.1.1.1.1.2, hok.1.1.1.1.2,
    hok.1.1.1.2, hok.1.1.2, hok.1.2, hok.2⟩

end NoFourMUBs.KernelAtlas.Edge
