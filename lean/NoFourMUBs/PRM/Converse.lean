import NoFourMUBs.L1.Existence
import NoFourMUBs.PRM.SideRoot
import NoFourMUBs.PRM.SharedColumn
import NoFourMUBs.PRM.StrictStrip
import NoFourMUBs.PRM.Projector
import NoFourMUBs.PRM.FourierBlock

/-!
# Theorem A: a strict nonmatched corner forces Tao or the Fourier family (`PROOF.md` Theorem 2.4)

Formalises MC4 as proved in `proof/coverage/returns/G_prm/PRM.md` §§2–5 (Theorem A there).  Let `M` be a dephased Hadamard matrix whose leading corner
`E` is strict (its horizontal signature `ζ` is not real) and whose vertical signature is not `ζ̄`.

* By L1 (side existence and matched flatness), the matched completion `H₀` with the same three top rows
  exists.  The vertical signature of `M` is the other root `ζ` (`TS_root`), so the bottom rows of `M` and
  `H₀` share no ray: a shared row would be a shared column of two sides on different roots
  (`Side.no_shared_column`).
* The top strip has no proportional columns (`strict_no_proportional_columns`), so the projector argument
  (`orthogonal_triple`) gives three orthogonal columns: a `3 × 3` Hadamard block.
* A Hadamard matrix with such a block is in Tao's orbit or in the Fourier family
  (`tao_or_fourier_of_block`): `nonmatched_tao_or_fourier`.  (Return G's Theorem A, Tao alone, also
  uses that the Fourier family is matched at every corner: `FourierMatch.nonmatched_tao`, used by
  `FourierVanishing`; `Final` does not need it, since the Fourier classes are covered by connectedness,
  `Step2.fourierClasses_subset`.)
-/

open ComplexConjugate Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Kronecker

noncomputable section


namespace NoFourMUBs.PRM

open L1 L1.FlatCircuits

/-- Equality in Cauchy–Schwarz for two unit-entry rows of length six, both starting with `1`. -/
theorem row_eq_of_inner {u v : I6 → ℂ} (hu : ∀ j, Complex.normSq (u j) = 1)
    (hv : ∀ j, Complex.normSq (v j) = 1) (h0 : u (Sum.inl 0) = 1) (h0' : v (Sum.inl 0) = 1)
    (h : Complex.normSq (∑ j, u j * conj (v j)) = 36) : u = v := by
  set N := ∑ j, u j * conj (v j)
  set c := N / 6
  have uu : ∀ j, u j * conj (u j) = 1 := fun j => by rw [Complex.mul_conj, hu j, Complex.ofReal_one]
  have vv : ∀ j, v j * conj (v j) = 1 := fun j => by rw [Complex.mul_conj, hv j, Complex.ofReal_one]
  have hN : N * conj N = 36 := by rw [Complex.mul_conj, h]; norm_num
  have hsum : ∑ j, (u j - c * v j) * conj (u j - c * v j) = 0 := by
    have e : ∀ j, (u j - c * v j) * conj (u j - c * v j) =
        u j * conj (u j) - conj c * (u j * conj (v j)) - c * conj (u j * conj (v j)) +
          c * conj c * (v j * conj (v j)) := fun j => by simp only [map_sub, map_mul, Complex.conj_conj]; ring
    simp only [e, uu, vv, Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum, ← map_sum]
    simp only [Finset.sum_const, Finset.card_univ, Fintype.card_sum, Fintype.card_fin, nsmul_eq_mul, mul_one]
    simp only [c, map_div₀, map_ofNat]
    push_cast
    linear_combination (-1 / 6 : ℂ) * hN
  have hz : ∀ j, u j = c * v j := by
    intro j
    have hnn : ∀ j ∈ Finset.univ, 0 ≤ Complex.normSq (u j - c * v j) := fun j _ => Complex.normSq_nonneg _
    have hsum' : ∑ j, Complex.normSq (u j - c * v j) = 0 := by
      have : ((∑ j, Complex.normSq (u j - c * v j) : ℝ) : ℂ) = 0 := by
        push_cast; simp only [Side.cast_normSq']; exact hsum
      exact_mod_cast this
    have := (Finset.sum_eq_zero_iff_of_nonneg hnn).1 hsum' j (Finset.mem_univ _)
    exact sub_eq_zero.1 (Complex.normSq_eq_zero.1 this)
  have hc : c = 1 := by have := hz (Sum.inl 0); rw [h0, h0', mul_one] at this; exact this.symm
  funext j; rw [hz j, hc, one_mul]


variable {ρ : Fin 4 → ℂ}

/-- Row orthogonality of a Hadamard matrix, entrywise. -/
theorem had_rows {M : Mat6} (hM : Hadamard6.IsHadamard M) (a b : I6) :
    ∑ j, M a j * conj (M b j) = if a = b then 6 else 0 := by
  have := congrFun (congrFun hM.2 a) b
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Complex.star_def, Matrix.smul_apply,
    Matrix.one_apply, smul_eq_mul] at this
  rw [this]; split_ifs <;> simp


theorem injective_three {α : Type*} {a b c : α} (hab : a ≠ b) (hac : a ≠ c) (hbc : b ≠ c) :
    Function.Injective ![a, b, c] := by
  intro i j h
  fin_cases i <;> fin_cases j <;> simp_all [eq_comm]

/-- **Theorem A (strict nonmatched converse).** A dephased Hadamard matrix whose leading corner is strict and
whose two sides are not matched is in Tao's orbit or in the Fourier family. -/
theorem nonmatched_tao_or_fourier (M : Mat6) (hM : Hadamard6.IsHadamard M) (hd : Step2.Dephased M)
    (hIm : (Step2.sideSignature (Step2.rightBlock M)).im ≠ 0)
    (hnm : Step2.sideSignature (Step2.lowerBlock M) ≠ conj (Step2.sideSignature (Step2.rightBlock M))) :
    IsTaoOrbit M ∨ Step2.InFourierFamily M := by
  -- the corner
  set ρ : Fin 4 → ℂ := ![M (.inl 1) (.inl 1), M (.inl 1) (.inl 2), M (.inl 2) (.inl 1), M (.inl 2) (.inl 2)]
    with hρ
  have hu : ∀ i, Complex.normSq (ρ i) = 1 := fun i => by fin_cases i <;> exact hM.1 _ _
  have hE : Matrix.toBlocks₁₁ M = Em ρ := by
    ext i j; fin_cases i <;> fin_cases j <;> simp [Matrix.toBlocks₁₁, Em, Hadamard6.corner, ρ, hd.1 (.inl _), hd.2 (.inl _)]
  -- the horizontal side
  set B := Step2.rightBlock M with hBdef
  set x : Fin 3 → ℂ := B 1
  set y : Fin 3 → ℂ := B 2
  have hB0 : ∀ j, B 0 j = 1 := fun j => hd.1 (.inr j)
  have hx : ∀ j, Complex.normSq (x j) = 1 := fun j => hM.1 _ _
  have hy : ∀ j, Complex.normSq (y j) = 1 := fun j => hM.1 _ _
  have hBM : B = sideMat x y := by ext i j; fin_cases i <;> simp [sideMat, hB0, x, y]
  have gB : B * Bᴴ = Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ := by
    have := (Hadamard6.hadamard_row_block_grams hM).1
    rw [hE] at this
    rw [← this]; abel_nf; rfl
  obtain ⟨g1, g2, g3⟩ := Step2.gram_rows B hB0
  rw [gB, G_eq' hu] at g1 g2 g3
  have hs : sS x = sh ρ := by rw [← g1]; rfl
  have ht : sS y = th ρ := by rw [← g2]; rfl
  have hr : rS x y = rh ρ := by rw [← g3]; rfl
  set ζ := TS x y with hζdef
  have sigB : Step2.sideSignature B = ζ := Step2.sig_rows B hB0
  rw [sigB] at hIm hnm
  have hh : hS x y ≠ 0 := by intro h0; apply hIm; simp [ζ, TS, h0]
  obtain ⟨r1, r2⟩ := TS_root hx hy hh
  simp only [hs, ht, hr, gS_eq, etaS_eq, chiS_eq] at r1 r2
  have hRpos : 0 < gR (sh ρ) (th ρ) (rh ρ) := by
    have := RS_eq_im_sq hx hy hh
    rw [hs, ht, hr, RS_eq] at this
    rw [this]; positivity
  have hst : Strict ρ := ⟨hu, hRpos⟩
  obtain ⟨eg, ee, ec⟩ := hv_eq hu
  -- the matched vertical side, on the root `ζ̄`
  have hζ2' : conj ζ ^ 2 = (gChi (sv ρ) (tv ρ) (rv ρ) : ℂ) * conj ζ -
      ((gG (sv ρ) (tv ρ) (rv ρ) : ℝ) : ℂ) ^ 2 * (gEta (sv ρ) (tv ρ) (rv ρ) : ℂ) := by
    rw [eg, ee, ec]; linear_combination conj ζ * r2 - r1
  have hζc' : conj (conj ζ) = (gChi (sv ρ) (tv ρ) (rv ρ) : ℂ) - conj ζ := by
    rw [ec, Complex.conj_conj]; linear_combination r2
  obtain ⟨x', y', hx', hy', hs', ht', hr', hT'⟩ := exists_side_v hst hζ2' hζc'
  have hBdet : IsUnit (sideMat x y).det := Step2.det_ne_of_sig (by rw [← hBM, sigB]; exact hIm)
  have sigC0 : Step2.sideSignature (sideMat x' y')ᵀ = conj ζ := by
    rw [Step2.sig_cols _ (fun i => rfl)]; exact hT'
  have hCdet : IsUnit (sideMat x' y')ᵀ.det :=
    Step2.det_ne_of_sig (by rw [sigC0, Complex.conj_im]; exact neg_ne_zero.2 hIm)
  have hEu : EntrywiseUnit (Em ρ) := by
    intro i j; fin_cases i <;> fin_cases j <;> simp [Em, Hadamard6.corner, hu]
  have hW := W_zero hst mh_valid qv_valid F_valid
    hx hy hx' hy' hs ht hr hs' ht' hr' hζdef.symm hT' r1 r2 hBdet
  obtain ⟨-, hH0⟩ := flat_of_W (Em ρ) _ _ hEu (horiz_cand hst hx hy hs ht hr)
    (vert_cand hst hx' hy' hs' ht' hr') hBdet hCdet hW
  set H0 := completion (Em ρ) (sideMat x y) (sideMat x' y')ᵀ
  -- the vertical side of `M` lies on the root `ζ` (nonmatched)
  set C := Step2.lowerBlock M with hCdef
  set xv : Fin 3 → ℂ := fun j => C j 1
  set yv : Fin 3 → ℂ := fun j => C j 2
  have hC0 : ∀ i, C i 0 = 1 := fun i => hd.2 (.inr i)
  have hxv : ∀ j, Complex.normSq (xv j) = 1 := fun j => hM.1 _ _
  have hyv : ∀ j, Complex.normSq (yv j) = 1 := fun j => hM.1 _ _
  have gC : Cᴴ * C = Hadamard6.sixI3 - (Em ρ)ᴴ * Em ρ := by
    have := (Hadamard6.hadamard_column_block_grams hM).1
    rw [hE] at this
    rw [← this]; abel_nf; rfl
  obtain ⟨c1, c2, c3⟩ := Step2.gram_cols C hC0
  rw [gC, Gv_eq' hu] at c1 c2 c3
  have hsv : sS xv = sv ρ := by rw [← c1]; rfl
  have htv : sS yv = tv ρ := by rw [← c2]; rfl
  have hrv : rS xv yv = rv ρ := by rw [← c3]; rfl
  have sigC : Step2.sideSignature C = TS xv yv := Step2.sig_cols C hC0
  have hhv : hS xv yv ≠ 0 := by
    obtain ⟨-, -, -, G⟩ := side_identities hxv hyv
    rw [hsv, htv, hrv, gS_eq, eg] at G
    intro h0; rw [h0, map_zero, Complex.ofReal_zero] at G
    exact (hst.facts.1.ne') (by exact_mod_cast G.symm)
  obtain ⟨v1, v2⟩ := TS_root hxv hyv hhv
  simp only [hsv, htv, hrv, gS_eq, etaS_eq, chiS_eq, eg, ee, ec] at v1 v2
  have hCζ : TS xv yv = ζ := by
    rcases eq_or_eq_conj_of_roots v1 v2 r1 r2 with h | h
    · exact h
    · exact absurd (sigC.trans h) hnm
  -- no bottom row of `H0` equals a bottom row of `M`
  have hray : ∀ k l, Complex.normSq (∑ j, H0 (.inr l) j * conj (M (.inr k) j)) ≠ 36 := by
    intro k l h36
    have heq := row_eq_of_inner (u := fun j => H0 (.inr l) j) (v := fun j => M (.inr k) j)
      (fun j => hH0.1 _ _) (fun j => hM.1 _ _) (by simp [H0, completion, sideMat]) (hd.2 (.inr k)) h36
    have e1 := congrFun heq (.inl 1)
    have e2 := congrFun heq (.inl 2)
    simp only [H0, completion, Matrix.fromBlocks_apply₂₁, Matrix.transpose_apply, sideMat,
      Matrix.of_apply] at e1 e2
    exact Side.no_shared_column hxv hyv hx' hy' (by rw [hs', hsv]) (by rw [ht', htv]) (by rw [hr', hrv])
      (by rw [hT', hCζ]) (by rw [hCζ]; exact hIm) k l ⟨e1, e2⟩
  -- three orthogonal columns in the top strip
  set T : Matrix (Fin 3) I6 ℂ := fun i j => M (.inl i) j
  have rM := had_rows hM
  have r0 := had_rows hH0
  have hcol := strict_no_proportional_columns T (fun i j => hM.1 _ _) (fun j => hd.1 j)
    (fun k l => by rw [rM]; simp) (by exact hIm)
  obtain ⟨a, b, c, hab, hac, hbc, oab, oac, obc⟩ := orthogonal_triple T (fun i j => M (.inr i) j)
    (fun i j => H0 (.inr i) j) (fun i j => hM.1 _ _) (fun i j => hM.1 _ _) (fun i j => hH0.1 _ _)
    (fun k l => by simp only [rowInner]; rw [rM]; simp)
    (fun k l => by simp only [rowInner]; rw [rM]; simp)
    (fun k l => by simp only [rowInner]; rw [r0]; simp)
    (fun k l => by simp only [rowInner]; rw [rM]; simp)
    (fun k l => by
      have : ∀ j, M (.inl k) j = H0 (.inl k) j := fun j => by
        rcases j with j | j
        · simp only [H0, completion, Matrix.fromBlocks_apply₁₁, ← hE]; rfl
        · simp only [H0, completion, Matrix.fromBlocks_apply₁₂, ← hBM]; rfl
      show ∑ j, M (.inl k) j * conj (H0 (.inr l) j) = 0
      simp only [this]; rw [r0]; simp)
    (fun k l => hray k l) hcol
  -- the permutation putting them in the right block
  let f : Fin 3 → I6 := ![a, b, c]
  have hf : Function.Injective f := injective_three hab hac hbc
  let e : {z : I6 // z ∈ Set.range (Sum.inr : Fin 3 → I6)} ≃ {z : I6 // z ∈ Set.range f} :=
    (Equiv.ofInjective _ Sum.inr_injective).symm.trans (Equiv.ofInjective f hf)
  let τ : Equiv.Perm I6 := e.extendSubtype
  have hτ : ∀ j, τ (.inr j) = f j := by
    intro j
    rw [Equiv.extendSubtype_apply_of_mem e _ ⟨j, rfl⟩]
    simp [e, Equiv.ofInjective_symm_apply]
  have h3 : IsHadamard3 (Matrix.toBlocks₁₂ (M.submatrix id τ)) := by
    set X := Matrix.toBlocks₁₂ (M.submatrix id τ)
    have hX : ∀ i j, X i j = T i (f j) := fun i j => by
      simp only [X, Matrix.toBlocks₁₂, Matrix.submatrix_apply, id, Matrix.of_apply, hτ]; rfl
    refine ⟨fun i j => by rw [hX]; exact hM.1 _ _, ?_⟩
    have hXX : Xᴴ * X = (3 : ℂ) • (1 : Mat3) := by
      have co : ∀ u v : I6, colInner T u v = conj (colInner T v u) := fun u v => by
        simp only [colInner, map_sum, map_mul, Complex.conj_conj]; exact Finset.sum_congr rfl fun i _ => mul_comm _ _
      have dg : ∀ u, colInner T u u = 3 := fun u => by
        simp only [colInner, Fin.sum_univ_three]
        rw [Complex.mul_conj, Complex.mul_conj, Complex.mul_conj, hM.1, hM.1, hM.1]; norm_num
      ext i j
      simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Complex.star_def, hX, Matrix.smul_apply,
        Matrix.one_apply, smul_eq_mul]
      have : ∑ k, conj (T k (f i)) * T k (f j) = colInner T (f j) (f i) := by
        simp only [colInner]; exact Finset.sum_congr rfl fun k _ => mul_comm _ _
      rw [this]
      fin_cases i <;> fin_cases j <;> simp [f, dg, oab, oac, obc, co b a, co c a, co c b]
    have h1 : ((3 : ℂ)⁻¹ • Xᴴ) * X = 1 := by rw [Matrix.smul_mul, hXX, smul_smul]; norm_num
    have h2 := mul_eq_one_comm.mp h1
    rw [Matrix.mul_smul] at h2
    calc X * Xᴴ = (3 : ℂ) • ((3 : ℂ)⁻¹ • (X * Xᴴ)) := by rw [smul_smul]; norm_num
      _ = (3 : ℂ) • (1 : Mat3) := by rw [h2]
  exact tao_or_fourier_of_block M hM τ h3

end NoFourMUBs.PRM
