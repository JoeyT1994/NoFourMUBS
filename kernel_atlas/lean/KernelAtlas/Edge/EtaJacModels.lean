import KernelAtlas.Edge.ColumnModels
import KernelAtlas.Edge.EtaModels
import KernelAtlas.Edge.Slope

/-! Rational frame-coordinate models assembled from the completion differential columns. -/

open Hadamard6

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

/-- Row-major four by four models for the frame-coordinate differential. -/
def etaJacT (B : EBallD) (D : EBoxD) (F : QFrame) (q : FrameQ)
    (H V : RootDiffD) (P : List Seed.CT) : List Seed.CT :=
  (List.finRange 4).flatMap fun i => (List.finRange 4).map fun j =>
    etaT D.hb F q (fun a b => gT (columnQT B D H V P j) (Seed.ix a b)) i

lemma gT_etaJacT (B : EBallD) (D : EBoxD) (F : QFrame) (q : FrameQ)
    (H V : RootDiffD) (P : List Seed.CT) (i j : Fin 4) :
    gT (etaJacT B D F q H V P) (4*i+j) =
      etaT D.hb F q (fun a b => gT (columnQT B D H V P j) (Seed.ix a b)) i := by
  fin_cases i <;> fin_cases j <;> rfl

end NoFourMUBs.KernelAtlas.Edge
