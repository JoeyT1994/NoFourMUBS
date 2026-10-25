import KernelAtlas.Edge.SolveModels

/-! Differential enclosures for the actual selected augmented root. -/

open Complex Matrix Filter Topology NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def rootDifferential (B : EBallD) (D : EBoxD) (v : Bool)
    (u : Fin 4 → ℝ) (ξ : Fin 7 → ℝ) : (Fin 4 → ℝ) →L[ℝ] (Fin 7 → ℝ) :=
  -(matrixCLM (edgeJ v (aR B (ewOf D u)) ξ)).inverse ∘L
    matrixCLM (parameterJ B v (rho4 (aR B (ewOf D u)) (ξ 0)))

theorem rootDifferential_equation (B : EBallD) (D : EBoxD) (v : Bool)
    (u : Fin 4 → ℝ) (ξ : Fin 7 → ℝ)
    (hi : IsUnit (edgeJ v (aR B (ewOf D u)) ξ).det) (w : Fin 4 → ℝ) :
    (edgeJ v (aR B (ewOf D u)) ξ).mulVec (rootDifferential B D v u ξ w) +
      (parameterJ B v (rho4 (aR B (ewOf D u)) (ξ 0))).mulVec w = 0 := by
  have h := (matrixCLM_invertible hi).self_apply_inverse
    (matrixCLM (parameterJ B v (rho4 (aR B (ewOf D u)) (ξ 0))) w)
  change matrixCLM _ (rootDifferential B D v u ξ w) + matrixCLM _ w = 0
  simp only [rootDifferential, ContinuousLinearMap.comp_apply, ContinuousLinearMap.neg_apply,
    map_neg, h, neg_add_cancel]

theorem CheckedSide.hasStrictFDerivAt_rootDifferential
    {B : EBallD} {D : EBoxD} {v : Bool} {ph : List CT} {Y : List ℤ} {ρ : ℕ} {ec : List ℕ}
    (r : CheckedSide B D v ph ρ ec)
    (hexp : (l3 (aT B D)).all (fun t => expOK t nT) = true)
    (hok : sideE D.hb v ((l3 (aT B D)).map (expI D.hb nT)) (yT B D) ph Y ρ ec = true)
    (u : BoxSpace D) (hu : {w | InBox D.hb w} ∈ 𝓝 u.1) :
    HasStrictFDerivAt r.extend (rootDifferential B D v u.1 (r.root u)) u.1 := by
  simpa only [edgeParam_partial_parameter, rootDifferential] using r.hasStrictFDerivAt hexp hok u hu

structure RootDiffD where
  pred : List CT
  radius : List ℕ
  q : ℕ

def rootDiffPred (S : RootDiffD) (j : ℕ) : List CT := l7 fun i => gT S.pred (4*i+j)

def rootDiffT (S : RootDiffD) (i j : ℕ) : CT :=
  addRho (re (gT S.pred (4*i+j))) (gn S.radius j)

def sideCornerT (B : EBallD) (D : EBoxD) (ph : List CT) (ec : List ℕ) : List CT :=
  (l3 (aT B D)).map (expI D.hb nT) ++
    [addRho (expI D.hb nT (re (gT ph 0))) (gn ec 0)]

def rootDiffOK (B : EBallD) (D : EBoxD) (v : Bool) (ph : List CT) (ec : List ℕ)
    (Y : List ℤ) (S : RootDiffD) : Bool :=
  let e := sideCornerT B D ph ec
  let A := edgeJT D.hb v e (rowsE D.hb ph ec)
  (l4 fun j => solveOK D.hb Y A (rootDiffPred S j)
    (l7 fun i => parameterJT D.hb B v e i j) (gn S.radius j) S.q).all id

theorem has_sideCornerT {B : EBallD} {D : EBoxD} {v : Bool} {ph : List CT}
    {Y : List ℤ} {ρ : ℕ} {ec : List ℕ} {u : Fin 4 → ℝ} (hu : InBox D.hb u)
    (hexp : (l3 (aT B D)).all (fun t => expOK t nT) = true)
    (hok : sideE D.hb v ((l3 (aT B D)).map (expI D.hb nT)) (yT B D) ph Y ρ ec = true)
    {ξ : Fin 7 → ℝ} (hd : ∀ j : Fin 7, |ξ j - predR ph u j| ≤ rn (gn ec j)) :
    ∀ k : Fin 4, (gT (sideCornerT B D ph ec) k).Has u
      (rho4 (aR B (ewOf D u)) (ξ 0) k) := by
  have he := has_e012 B D hu hexp
  have h3 := has_e3 hu hok hd
  intro k
  fin_cases k
  · exact he 0
  · exact he 1
  · exact he 2
  · simpa [sideCornerT, l3, gT, rho4_apply, th4] using h3

set_option maxHeartbeats 2000000 in
/-- The Boolean models enclose the columns of the differential of the selected root. -/
theorem rootDiffOK_sound {B : EBallD} {D : EBoxD} {v : Bool} {ph : List CT}
    {Y : List ℤ} {ρ : ℕ} {ec : List ℕ} {S : RootDiffD}
    (r : CheckedSide B D v ph ρ ec)
    (hexp : (l3 (aT B D)).all (fun t => expOK t nT) = true)
    (hok : sideE D.hb v ((l3 (aT B D)).map (expI D.hb nT)) (yT B D) ph Y ρ ec = true)
    (hs : rootDiffOK B D v ph ec Y S = true) (u : BoxSpace D) (i : Fin 7) (j : Fin 4) :
    (rootDiffT S i j).Has u.1
      (rootDifferential B D v u.1 (r.root u) (Pi.single j 1) i : ℂ) := by
  have he := has_sideCornerT (B := B) (D := D) (v := v) (ph := ph) (ec := ec) (Y := Y) (ρ := ρ)
    u.2 hexp hok (r.error u)
  obtain ⟨hx, hy⟩ := has_rowsE (h := D.hb) (ph := ph) (ec := ec) (v := v) (Y := Y) (ρ := ρ)
    u.2 hok (r.error u)
  have hA := has_edgeJT (e := sideCornerT B D ph ec) (g := rowsE D.hb ph ec) u.2 v he hx hy
  have hb := has_parameterJT (e := sideCornerT B D ph ec) u.2 B he v
  have hi := sideE_jacobian_invertible u.2 v (has_e012 B D u.2 hexp) hok (r.root u) (r.mem u)
  have hz := rootDifferential_equation B D v u.1 (r.root u) hi (Pi.single j 1)
  have hs' : solveOK D.hb Y (edgeJT D.hb v (sideCornerT B D ph ec) (rowsE D.hb ph ec))
      (rootDiffPred S j) (l7 fun k => parameterJT D.hb B v (sideCornerT B D ph ec) k j)
      (gn S.radius j) S.q = true := all_l4 (f := fun j => solveOK D.hb Y
        (edgeJT D.hb v (sideCornerT B D ph ec) (rowsE D.hb ph ec))
        (rootDiffPred S j) (l7 fun k => parameterJT D.hb B v (sideCornerT B D ph ec) k j)
        (gn S.radius j) S.q) hs j.2
  have H := solveOK_sound
    (Y := Y) (T := edgeJT D.hb v (sideCornerT B D ph ec) (rowsE D.hb ph ec))
    (p := rootDiffPred S j) (b := l7 fun k => parameterJT D.hb B v (sideCornerT B D ph ec) k j)
    (A := edgeJ v (aR B (ewOf D u.1)) (r.root u))
    (v := (parameterJ B v (rho4 (aR B (ewOf D u.1)) (r.root u 0))).mulVec (Pi.single j 1))
    (z := rootDifferential B D v u.1 (r.root u) (Pi.single j 1))
    u.2 hs' hA (fun k : Fin 7 => by
      rw [gT_l7 _ k.2]
      simpa only [Matrix.mulVec_single_one, Matrix.col_apply] using hb k j) hz i
  simpa only [rootDiffT, rootDiffPred, gT_l7 _ i.2] using H

end NoFourMUBs.KernelAtlas.Edge
