import NoFourMUBs.PRM.CoverageQuarticDefs
import NoFourMUBs.Identity.Fast
import NoFourMUBs.Identity.RootFree

/-!
# The Bernstein step of the critical scalar classification (shared machinery)

`CRITICAL_STRIP_CLASSIFICATION.md` §3: on a region `k ∈ I`, `K ∈ [L(k), R(k)]`, put
`K = L + (R − L) t`.  Then

    12 · H⁴ · Q(k, K) = Σᵢ C(4,i) tⁱ (1 − t)^(4−i) · Bᵢ(k),     H = (1 + k²)⁴,

with explicit integer polynomials `Bᵢ`, each given as `cᵢ · ∏ Fᵢⱼ ^ eᵢⱼ` with `cᵢ < 0` and every
factor certified positive on `I` (`RootFree.facOK`), except an even power of the cubic
`3k³ + k² + k − 1` (nonzero away from `κ`).  The identity is one polynomial identity in `(k, t)`,
checked by the kernel with the Kronecker test `Circ.validR` (`regionCirc`).  Hence every `Bᵢ < 0`
and `Q(k, K) < 0` on the region (`region_neg`).

`L = l/H`, `R = r/H` for integer polynomials `l, r` (fields of `RData`).
-/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.Quartic

open NoFourMUBs.Kronecker NoFourMUBs.RootFree

/-- A coefficient list as a circuit in `x` (Horner). -/
def ofList {n : ℕ} (x : Circ n) : List ℤ → Circ n
  | [] => Circ.const 0
  | a :: p => Circ.add (Circ.const a) (Circ.mul x (ofList x p))

theorem eval_ofList {n : ℕ} {R : Type*} [CommRing R] (ρ : Fin n → R) (x : Circ n) (p : List ℤ) :
    (ofList x p).eval ρ = peval p (x.eval ρ) := by
  induction p with
  | nil => simp [ofList]
  | cons a p ih => simp [ofList, Circ.eval, ih]

/-- `Σ c kⁱ Xʲ H^(4−j)` over a list of terms `(c, i, j)`. -/
def qhom {n : ℕ} (kc Xc Hc : Circ n) (L : List (ℤ × ℕ × ℕ)) : Circ n :=
  L.foldr (fun c acc => Circ.add (Circ.mul (Circ.mul (Circ.mul (Circ.const c.1) (Circ.pow kc c.2.1))
    (Circ.pow Xc c.2.2)) (Circ.pow Hc (4 - c.2.2))) acc) (Circ.const 0)

theorem eval_qhom {n : ℕ} (ρ : Fin n → ℝ) (kc Xc Hc : Circ n) (L : List (ℤ × ℕ × ℕ))
    (hL : ∀ c ∈ L, c.2.2 ≤ 4) (hH : Hc.eval ρ ≠ 0) :
    (qhom kc Xc Hc L).eval ρ = (Hc.eval ρ) ^ 4 *
      (L.map fun c => (c.1 : ℝ) * (kc.eval ρ) ^ c.2.1 * (Xc.eval ρ / Hc.eval ρ) ^ c.2.2).sum := by
  induction L with
  | nil => simp [qhom]
  | cons c L ih =>
    have hc : c.2.2 ≤ 4 := hL c (by simp)
    have ih' := ih (fun c' hc' => hL c' (by simp [hc']))
    simp only [qhom, List.foldr_cons] at ih' ⊢
    simp only [Circ.eval, ih', List.map_cons, List.sum_cons]
    have h4 : (Hc.eval ρ) ^ 4 = (Hc.eval ρ) ^ (4 - c.2.2) * (Hc.eval ρ) ^ c.2.2 := by
      rw [← pow_add, Nat.sub_add_cancel hc]
    rw [h4, div_pow]
    field_simp

theorem qCoeffs_deg : ∀ c ∈ qCoeffs, c.2.2 ≤ 4 := by
  have : qCoeffs.all (fun c => decide (c.2.2 ≤ 4)) = true := by decide +kernel
  intro c hc
  simpa using List.all_eq_true.1 this c hc

/-! ### Region data -/

/-- A region certificate: `L = l/H`, `R = r/H`, and the five Bernstein coefficients
`bᵢ = (cᵢ, factors)`, meaning `cᵢ · ∏ poly ^ exp`. -/
structure RData where
  l : List ℤ
  r : List ℤ
  b0 : ℤ × List Fac
  b1 : ℤ × List Fac
  b2 : ℤ × List Fac
  b3 : ℤ × List Fac
  b4 : ℤ × List Fac

/-- `c · ∏ poly ^ exp` as a circuit. -/
def prodC {n : ℕ} (x : Circ n) (b : ℤ × List Fac) : Circ n :=
  Circ.mul (Circ.const b.1)
    (b.2.foldr (fun f acc => Circ.mul (Circ.pow (ofList x f.poly) f.exp) acc) (Circ.const 1))

/-- The value `c · ∏ poly(x) ^ exp`. -/
def bval (b : ℤ × List Fac) (x : ℝ) : ℝ :=
  b.1 * (b.2.map fun f => peval f.poly x ^ f.exp).prod

theorem eval_prodC {n : ℕ} (ρ : Fin n → ℝ) (x : Circ n) (b : ℤ × List Fac) :
    (prodC x b).eval ρ = bval b (x.eval ρ) := by
  rcases b with ⟨c, fs⟩
  simp only [prodC, bval, Circ.eval]
  congr 1
  induction fs with
  | nil => simp
  | cons f fs ih => simp [Circ.eval, ih, eval_ofList]

/-- The cubic `3k³ + k² + k − 1`. -/
def kapL : List ℤ := [-1, 1, 1, 3]

theorem peval_kapL (x : ℝ) : peval kapL x = 3 * x ^ 3 + x ^ 2 + x - 1 := by
  simp [kapL]; ring

def isEven (f : Fac) : Bool :=
  match f.cert with
  | .evenNZ => true
  | .cover _ _ _ => false

/-- Coefficient test: `c < 0`, each factor certified, and every even-power factor is the cubic. -/
def bOK (reg : Reg) (b : ℤ × List Fac) : Bool :=
  decide (b.1 < 0) && b.2.all (fun f => facOK reg f && (!isEven f || f.poly == kapL))

def usesEven (b : ℤ × List Fac) : Bool := b.2.any isEven

theorem bval_neg {reg : Reg} {b : ℤ × List Fac} (h : bOK reg b = true) {x : ℝ} (hx : reg.mem x)
    (hκ : usesEven b = false ∨ 3 * x ^ 3 + x ^ 2 + x - 1 ≠ 0) : bval b x < 0 := by
  rcases b with ⟨c, fs⟩
  simp only [bOK, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at h
  obtain ⟨hc, hf⟩ := h
  have hc' : (c : ℝ) < 0 := by exact_mod_cast hc
  have hprod : 0 < (fs.map fun f => peval f.poly x ^ f.exp).prod := by
    apply List.prod_pos
    intro v hv
    obtain ⟨f, hfs, rfl⟩ := List.mem_map.1 hv
    have hff := hf f hfs
    simp only [Bool.or_eq_true, Bool.not_eq_true', beq_iff_eq] at hff
    refine pow_pos_of_facOK hff.1 hx (fun he => ?_)
    have hev : isEven f = true := by simp [isEven, he]
    rcases hff.2 with h1 | h1
    · rw [hev] at h1; exact absurd h1 (by decide)
    · rcases hκ with h2 | h2
      · simp only [usesEven, List.any_eq_false] at h2
        exact absurd hev (by simpa using h2 f hfs)
      · rw [h1, peval_kapL]; exact h2
  simp only [bval]
  exact mul_neg_of_neg_of_pos hc' hprod

def dataOK (reg : Reg) (D : RData) : Bool :=
  bOK reg D.b0 && bOK reg D.b1 && bOK reg D.b2 && bOK reg D.b3 && bOK reg D.b4

def usesEvenD (D : RData) : Bool :=
  usesEven D.b0 || usesEven D.b1 || usesEven D.b2 || usesEven D.b3 || usesEven D.b4

/-- The region identity as one circuit in `(k, t)`; it must vanish identically. -/
def regionCirc (D : RData) : Circ 2 :=
  let k : Circ 2 := Circ.var 0
  let t : Circ 2 := Circ.var 1
  let X : Circ 2 := ofList k D.l + (ofList k D.r - ofList k D.l) * t
  let H : Circ 2 := (1 + k ^ 2) ^ 4
  let u : Circ 2 := 1 - t
  12 * qhom k X H qCoeffs - (u ^ 4 * prodC k D.b0 + 4 * t * u ^ 3 * prodC k D.b1 +
    6 * t ^ 2 * u ^ 2 * prodC k D.b2 + 4 * t ^ 3 * u * prodC k D.b3 + t ^ 4 * prodC k D.b4)

theorem bern4_neg {t v0 v1 v2 v3 v4 : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) (h0 : v0 < 0) (h1 : v1 < 0)
    (h2 : v2 < 0) (h3 : v3 < 0) (h4 : v4 < 0) :
    (1 - t) ^ 4 * v0 + 4 * t * (1 - t) ^ 3 * v1 + 6 * t ^ 2 * (1 - t) ^ 2 * v2 +
      4 * t ^ 3 * (1 - t) * v3 + t ^ 4 * v4 < 0 := by
  have hu : 0 ≤ 1 - t := by linarith
  have a1 : 4 * t * (1 - t) ^ 3 * v1 ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by positivity) h1.le
  have a2 : 6 * t ^ 2 * (1 - t) ^ 2 * v2 ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by positivity) h2.le
  have a3 : 4 * t ^ 3 * (1 - t) * v3 ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by positivity) h3.le
  rcases lt_or_eq_of_le ht1 with ht | ht
  · have h1t : 0 < 1 - t := by linarith
    have : 0 < (1 - t) ^ 4 := by positivity
    have a0 : (1 - t) ^ 4 * v0 < 0 := mul_neg_of_pos_of_neg this h0
    have a4 : t ^ 4 * v4 ≤ 0 := mul_nonpos_of_nonneg_of_nonpos (by positivity) h4.le
    linarith
  · subst ht; norm_num; exact h4

/-- **The Bernstein step.** -/
theorem region_neg (reg : Reg) (D : RData) (hc : (regionCirc D).validR 0 = true)
    (hb : dataOK reg D = true) {k : ℝ} (hk : reg.mem k)
    (hκ : usesEvenD D = false ∨ 3 * k ^ 3 + k ^ 2 + k - 1 ≠ 0) {K : ℝ}
    (hL : peval D.l k / (1 + k ^ 2) ^ 4 ≤ K) (hR : K ≤ peval D.r k / (1 + k ^ 2) ^ 4) :
    Q k K < 0 := by
  simp only [dataOK, Bool.and_eq_true] at hb
  obtain ⟨⟨⟨⟨hb0, hb1⟩, hb2⟩, hb3⟩, hb4⟩ := hb
  have hκ' : ∀ b, (usesEven b = true → usesEvenD D = true) →
      usesEven b = false ∨ 3 * k ^ 3 + k ^ 2 + k - 1 ≠ 0 := by
    intro b hbD
    rcases hκ with h | h
    · left; cases hu : usesEven b
      · rfl
      · rw [hbD hu] at h; exact absurd h (by decide)
    · exact Or.inr h
  have v0 := bval_neg hb0 hk (hκ' _ (by intro h; simp [usesEvenD, h]))
  have v1 := bval_neg hb1 hk (hκ' _ (by intro h; simp [usesEvenD, h]))
  have v2 := bval_neg hb2 hk (hκ' _ (by intro h; simp [usesEvenD, h]))
  have v3 := bval_neg hb3 hk (hκ' _ (by intro h; simp [usesEvenD, h]))
  have v4 := bval_neg hb4 hk (hκ' _ (by intro h; simp [usesEvenD, h]))
  set H : ℝ := (1 + k ^ 2) ^ 4 with hH
  have hHpos : 0 < H := by positivity
  set lv := peval D.l k
  set rv := peval D.r k
  -- the parameter `t`
  obtain ⟨t, ht0, ht1, hKt⟩ : ∃ t : ℝ, 0 ≤ t ∧ t ≤ 1 ∧ K = (lv + (rv - lv) * t) / H := by
    by_cases hlr : lv = rv
    · refine ⟨0, le_refl _, zero_le_one, ?_⟩
      rw [hlr] at hL ⊢; simp only [sub_self, zero_mul, add_zero]; linarith
    · have hlt : lv / H < rv / H := by
        rcases lt_or_eq_of_le (hL.trans hR) with h | h
        · exact h
        · exact absurd (by field_simp at h; exact h) hlr
      have hlt' : lv < rv := by
        have := (div_lt_div_iff_of_pos_right hHpos).1 hlt; exact this
      refine ⟨(K - lv / H) / (rv / H - lv / H), div_nonneg (by linarith) (by linarith),
        (div_le_one (by linarith)).2 (by linarith), ?_⟩
      field_simp
      ring
  have e := Circ.eval_eq_zero_of_validR hc (![k, t] : Fin 2 → ℝ)
  have hHc : (((1 : Circ 2) + Circ.var 0 ^ 2) ^ 4).eval (![k, t] : Fin 2 → ℝ) ≠ 0 := by
    simp; positivity
  simp only [regionCirc] at e
  rw [Circ.eval_sub', Circ.eval_mul', eval_qhom _ _ _ _ _ qCoeffs_deg hHc] at e
  simp only [Circ.eval_add', Circ.eval_sub', Circ.eval_mul', Circ.eval_pow', eval_prodC,
    eval_ofList, Circ.eval_var, Circ.eval_one', Circ.eval_ofNat] at e
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at e
  have hQ : Q k K = (qCoeffs.map fun c => (c.1 : ℝ) * k ^ c.2.1 *
      ((lv + (rv - lv) * t) / (1 + k ^ 2) ^ 4) ^ c.2.2).sum := by
    rw [hKt]; rfl
  have hB := bern4_neg ht0 ht1 v0 v1 v2 v3 v4
  have : 12 * ((1 + k ^ 2) ^ 4) ^ 4 * Q k K < 0 := by
    rw [hQ]; linarith
  have h12 : 0 < 12 * ((1 + k ^ 2) ^ 4) ^ 4 := by positivity
  by_contra hcon
  linarith [mul_nonneg h12.le (not_lt.1 hcon)]

/-! ### The interval ends `L = l/H` -/

def lMin : List ℤ := [0, 0, 16]
def l0 : List ℤ := [4, 0, 40, 0, 36]
def lP : List ℤ := [3, 8, 20, 16, 26, 8, 36, 0, 27]
def lN : List ℤ := [3, -8, 20, -16, 26, -8, 36, 0, 27]

theorem lMin_eq (k : ℝ) : peval lMin k / (1 + k ^ 2) ^ 4 = Kmin k := by
  simp [lMin, Kmin, hk]; ring

theorem l0_eq (k : ℝ) : peval l0 k / (1 + k ^ 2) ^ 4 = K0 k := by
  have : (1 + k ^ 2) ≠ 0 := by positivity
  simp [l0, K0, hk]; field_simp; ring

theorem lP_eq (k : ℝ) : peval lP k / (1 + k ^ 2) ^ 4 = Kp k := by
  have : (1 + k ^ 2) ≠ 0 := by positivity
  simp [lP, Kp, hk]; field_simp; ring

theorem lN_eq (k : ℝ) : peval lN k / (1 + k ^ 2) ^ 4 = Kn k := by
  have : (1 + k ^ 2) ≠ 0 := by positivity
  simp [lN, Kn, hk]; field_simp; ring

end NoFourMUBs.PRM.Coverage.Quartic
