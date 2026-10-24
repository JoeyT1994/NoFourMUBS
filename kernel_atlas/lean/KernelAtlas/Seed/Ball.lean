import KernelAtlas.Seed.C1Lemmas
import NoFourMUBs.SeedAtlas.Cert

/-!
# The real data of a kernel seed ball (shared by C1, the frame bounds, Stage C and the transfers)

A kernel seed ball stores grid integers (`2^{-pp}`, `pp = 60`): `BallD` (`θ₀`, `M_θ` row-major, `P`, `U`, `n`, `o`)
and the scalars `r`, `t`, `λ_F` (`SeedD`).  The real objects the `SeedBallCert` is built from are fixed here once:
* `Pm B : RMat6`, `Pm B i j = P[6·sidx i + sidx j] / 2^pp` (FORMAT §1: row-major, `6a + b`);
* `Um B k : RMat6`, `Um B k i j = U[4·(6·sidx i + sidx j) + k] / 2^pp` (FORMAT §3: `(U w)_e = Σ_k U[4e+k] w_k`);
* `th0R B`, `MthR B` (`θ(w) = θ₀ + M_θ w`, `M_θ[4a + b]`);
* `rn r`, `rn n`, `rn t`, `rn λ_F`.
`sidx` is `KernelAtlas.idx` (`inl a ↦ a`, `inr a ↦ a + 3`), restated here to keep this file light.
-/

open Matrix Hadamard6

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-- `I6 → ℕ`: `inl a ↦ a`, `inr a ↦ a + 3`. -/
def sidx : I6 → ℕ
  | .inl i => i.val
  | .inr i => i.val + 3

/-- The flat index `6 a + b` of the entry `(i, j)`. -/
def ix (i j : I6) : ℕ := 6 * sidx i + sidx j

lemma sidx_lt (i : I6) : sidx i < 6 := by rcases i with i | i <;> simp [sidx] <;> omega

lemma ix_lt (i j : I6) : ix i j < 36 := by unfold ix; have := sidx_lt i; have := sidx_lt j; omega

/-- The Stage C centre `P` (radians). -/
def Pm (B : BallD) : RMat6 := fun i j => rq (gi B.P (ix i j))

/-- The frame `U_k`. -/
def Um (B : BallD) : Fin 4 → RMat6 := fun k i j => rq (gi B.U (4 * ix i j + k))

/-- `θ₀` and `M_θ`. -/
def th0R (B : BallD) : Fin 4 → ℝ := fun k => rq (gi B.th0 k)
def MthR (B : BallD) : Matrix (Fin 4) (Fin 4) ℝ := fun a b => rq (gi B.Mth (4 * a + b))

/-- The ball-level scalars (grid integers): radius `r`, column constant `t`, Frobenius constant `λ_F`. -/
structure SeedD where
  B : BallD
  r : ℕ
  t : ℕ
  lamF : ℕ

lemma thR_eq (B : BallD) (w : Fin 4 → ℝ) (k : Fin 4) : thR B w k = (th0R B + MthR B *ᵥ w) k := by
  simp only [thR, th0R, MthR, Pi.add_apply, Matrix.mulVec, dotProduct, Fin.sum_univ_four]
  simp only [Fin.val_zero, Fin.val_one, Fin.val_two, add_zero]
  rw [show ((3 : Fin 4) : ℕ) = 3 from rfl]; ring

end NoFourMUBs.KernelAtlas.Seed
