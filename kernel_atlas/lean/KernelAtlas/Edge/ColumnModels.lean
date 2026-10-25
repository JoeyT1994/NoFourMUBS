import KernelAtlas.Edge.CompletionModels

/-! Column-by-column phase differential models assembled from checked root differentials. -/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def cornerRatesT (B : EBallD) (H : RootDiffD) (j : ℕ) : List CT :=
  (l3 fun k => const (rz (gi B.Mth (4*k+j)))) ++ [rootDiffT H 0 j]

def cornerVelocityT (B : EBallD) (D : EBoxD) (H : RootDiffD) (j : ℕ) : List CT :=
  l4 fun k => mulI (mul D.hb (gT (cornerModels B D) k) (gT (cornerRatesT B H j) k))

def sideVelocityT (h : List ℕ) (g : List CT) (S : RootDiffD) (j : ℕ) : List CT :=
  l6 fun k => mulI (mul h (gT g k) (rootDiffT S (k+1) j))

def columnET (B : EBallD) (D : EBoxD) (H : RootDiffD) (j : ℕ) : List CT :=
  cornerDerivativeT (cornerVelocityT B D H j)

def columnBT (D : EBoxD) (H : RootDiffD) (j : ℕ) : List CT :=
  sideDerivativeT (sideVelocityT D.hb (rowsE D.hb D.phH D.eH) H j)

def columnCT (D : EBoxD) (V : RootDiffD) (j : ℕ) : List CT :=
  verticalDerivativeT (sideVelocityT D.hb (rowsE D.hb D.phV D.eV) V j)

def columnForced (B : EBallD) (D : EBoxD) (H V : RootDiffD) (P : List CT) (j : ℕ) : DOut :=
  forcedDerivativeT D.hb (l9 fun k => gT P (9*j+k)) D.A0
    (ET (cornerModels B D)) (BT (rowsE D.hb D.phH D.eH)) (CT3 (rowsE D.hb D.phV D.eV))
    (forcedModel B D).D (columnET B D H j) (columnBT D H j) (columnCT D V j)

def columnQT (B : EBallD) (D : EBoxD) (H V : RootDiffD) (P : List CT) (j : ℕ) : List CT :=
  QT D.hb (cornerRatesT B H j) (l6 fun k => rootDiffT H (k+1) j) (l6 fun k => rootDiffT V (k+1) j)
    (phaseDerivativeT D.hb (columnForced B D H V P j).D (forcedModel B D).D)

theorem has_cornerRatesT {B : EBallD} {H : RootDiffD} {u : Fin 4 → ℝ} {dH : Fin 7 → ℝ}
    {j : Fin 4} (hh : ∀ k : Fin 7, (rootDiffT H k j).Has u (dH k : ℂ)) (k : Fin 4) :
    (gT (cornerRatesT B H j) k).Has u (th4 (fun k => MR B k.castSucc j) (dH 0) k : ℂ) := by
  fin_cases k
  · simpa [cornerRatesT, l3, gT, th4, MR, cz_rz] using has_const (rz (gi B.Mth j)) u
  · simpa [cornerRatesT, l3, gT, th4, MR, cz_rz] using has_const (rz (gi B.Mth (4+j))) u
  · simpa [cornerRatesT, l3, gT, th4, MR, cz_rz] using has_const (rz (gi B.Mth (8+j))) u
  · exact hh 0

theorem has_cornerVelocityT {B : EBallD} {D : EBoxD} {H : RootDiffD} {u : Fin 4 → ℝ}
    (hu : InBox D.hb u) {ξ dH : Fin 7 → ℝ} {j : Fin 4}
    (he : ∀ k : Fin 4, (gT (cornerModels B D) k).Has u (rho4 (aR B (ewOf D u)) (ξ 0) k))
    (hh : ∀ k : Fin 7, (rootDiffT H k j).Has u (dH k : ℂ)) (k : Fin 4) :
    (gT (cornerVelocityT B D H j) k).Has u
      (I * rho4 (aR B (ewOf D u)) (ξ 0) k * th4 (fun k => MR B k.castSucc j) (dH 0) k) := by
  rw [cornerVelocityT, gT_l4 _ k.2]
  simpa only [mul_assoc] using has_mulI (has_mul hu (he k) (has_cornerRatesT (B := B) hh k))

theorem has_sideVelocityT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {g : List CT} {S : RootDiffD} {ξ dξ : Fin 7 → ℝ} {j : Fin 4}
    (hx : ∀ k : Fin 3, (gT g k).Has u (sx (phiOf ξ) k))
    (hy : ∀ k : Fin 3, (gT g (k+3)).Has u (sy (phiOf ξ) k))
    (hs : ∀ k : Fin 7, (rootDiffT S k j).Has u (dξ k : ℂ)) :
    (∀ k : Fin 3, (gT (sideVelocityT h g S j) k).Has u
      (I * sx (phiOf ξ) k * dξ ⟨k+1, by omega⟩)) ∧
    (∀ k : Fin 3, (gT (sideVelocityT h g S j) (k+3)).Has u
      (I * sy (phiOf ξ) k * dξ ⟨k+4, by omega⟩)) := by
  constructor
  · intro k
    rw [sideVelocityT, gT_l6 _ (by omega)]
    simpa only [mul_assoc] using has_mulI (has_mul hu (hx k) (hs ⟨k+1, by omega⟩))
  · intro k
    rw [sideVelocityT, gT_l6 _ (by omega)]
    simpa only [mul_assoc, Nat.add_assoc] using has_mulI (has_mul hu (hy k) (hs ⟨k+4, by omega⟩))

end NoFourMUBs.KernelAtlas.Edge
