import KernelAtlas.Edge.ChartSlope
import KernelAtlas.Edge.Enclosure

/-! One edge box bundles all local obligations used by the complete ball certificate. -/

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

structure FullBoxD where
  box : EBoxD
  diffH : RootDiffD
  diffV : RootDiffD
  derivativeP : List Seed.CT
  slopeY : List ℤ
  slopeQ : ℕ

def fullBox (B : EBallD) (R : EnclosureD) (F : QFrame) (q : FrameQ) (X : FullBoxD) : Bool :=
  chartOK B X.box && enclosureOK B X.box R &&
    rootDiffOK B X.box false X.box.phH X.box.eH X.box.YH X.diffH &&
    rootDiffOK B X.box true X.box.phV X.box.eV X.box.YV X.diffV &&
    slopeOK X.box.hb X.slopeY (etaJacT B X.box F q X.diffH X.diffV X.derivativeP) X.slopeQ

structure FullBoxFacts (B : EBallD) (R : EnclosureD) (F : QFrame) (q : FrameQ) (X : FullBoxD) : Prop where
  core : coreOK B X.box = true
  label : labelOK B X.box = true
  image : boundOK X.box.hb B.nX (hor36 (l36 (difF6 (qModels B X.box)))) = true
  enclosure : enclosureOK B X.box R = true
  diffH : rootDiffOK B X.box false X.box.phH X.box.eH X.box.YH X.diffH = true
  diffV : rootDiffOK B X.box true X.box.phV X.box.eV X.box.YV X.diffV = true
  slope : slopeOK X.box.hb X.slopeY (etaJacT B X.box F q X.diffH X.diffV X.derivativeP) X.slopeQ = true

theorem fullBox_sound {B : EBallD} {R : EnclosureD} {F : QFrame} {q : FrameQ} {X : FullBoxD}
    (h : fullBox B R F q X = true) : FullBoxFacts B R F q X := by
  simp only [fullBox, chartOK, c1eBox_eq, Bool.and_eq_true] at h
  exact ⟨h.1.1.1.1.1.1, h.1.1.1.1.2, h.1.1.1.1.1.2, h.1.1.1.2, h.1.1.2, h.1.2, h.2⟩

noncomputable def FullBoxD.chart {B : EBallD} {R : EnclosureD} {F : QFrame} {q : FrameQ}
    (X : FullBoxD) (h : fullBox B R F q X = true) : BoxChart B X.box :=
  boxChart (fullBox_sound h).core (fullBox_sound h).label

end NoFourMUBs.KernelAtlas.Edge
