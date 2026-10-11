import NoFourMUBs.Step1.Double
import NoFourMUBs.Step2.Statements

/-!
# Step 1: from seeds to traces

An ordered unit triple with product `1` is stored as a pair `x = (x₁, x₂) : Tr`, the third entry being
`(x₁x₂)⁻¹`; its trace is `sumT x`.  For two triples `x`, `y` put `κ = x₁y₁` and

  `Ψ(x, y) = (κy₃, κx₂, κx₃, κy₂) = (x₁/y₂, x₁x₂y₁, y₁/x₂, x₁y₁y₂)`.

Every seed is of this form (`exists_Psi`), and the corner invariant is the trace invariant (`seedR_Psi`):

  `R(Ψ(x, y)) = ℛ(sumT x + sumT y, sumT x − sumT y)`,

a Laurent identity proved through `2P = 18 − v + u`, `2J = v − 3u` and the cubic part of `χ`.
-/

open Filter Topology ComplexConjugate NoFourMUBs.Step1Saddle NoFourMUBs.Step2

namespace NoFourMUBs.Step1Geo

abbrev Tr := Circle × Circle

noncomputable def third (x : Tr) : Circle := (x.1 * x.2)⁻¹

noncomputable def sumT (x : Tr) : ℂ := (x.1 : ℂ) + x.2 + (third x : ℂ)

noncomputable def Phi (q : Tr × Tr) : ℂ × ℂ := (sumT q.1, sumT q.2)

noncomputable def Psi (q : Tr × Tr) : Seed :=
  ![q.1.1 * q.2.2⁻¹, q.1.1 * q.1.2 * q.2.1, q.2.1 * q.1.2⁻¹, q.1.1 * q.2.1 * q.2.2]

lemma conj_circle (z : Circle) : conj (z : ℂ) = (z : ℂ)⁻¹ := by
  rw [← Circle.coe_inv_eq_conj, Circle.coe_inv]

lemma continuous_sumT : Continuous sumT := by unfold sumT third; fun_prop

lemma continuous_Phi : Continuous Phi := by
  unfold Phi; exact (continuous_sumT.comp continuous_fst).prodMk (continuous_sumT.comp continuous_snd)

lemma continuous_Psi : Continuous Psi := by
  refine continuous_pi fun i => ?_
  fin_cases i <;> simp [Psi] <;> fun_prop

/-! ### The Laurent identity -/

lemma laurent_pieces (x1 x2 y1 y2 : ℂ) (h1 : x1 ≠ 0) (h2 : x2 ≠ 0) (h3 : y1 ≠ 0) (h4 : y2 ≠ 0) :
    let a := x1 * y2⁻¹; let b := x1 * x2 * y1; let c := y1 * x2⁻¹; let d := x1 * y1 * y2
    let ai := x1⁻¹ * y2; let bi := x1⁻¹ * x2⁻¹ * y1⁻¹; let ci := y1⁻¹ * x2; let di := x1⁻¹ * y1⁻¹ * y2⁻¹
    let S := -(1 + a + b); let Si := -(1 + ai + bi); let T := -(1 + c + d); let Ti := -(1 + ci + di)
    let Rh := -(1 + c * ai + d * bi); let Rhi := -(1 + ci * a + di * b)
    let X := S * Si; let Y := T * Ti; let Z := Rh * Rhi; let P := X + Y + Z
    let J := S * Rh * Ti + Si * Rhi * T
    let U := x1 + x2 + (x1 * x2)⁻¹; let Ui := x1⁻¹ + x2⁻¹ + x1 * x2
    let V := y1 + y2 + (y1 * y2)⁻¹; let Vi := y1⁻¹ + y2⁻¹ + y1 * y2
    let A := U + V; let Ai := Ui + Vi; let B := U - V; let Bi := Ui - Vi
    let u := A * Ai; let v := B * Bi
    2 * P = 18 - v + u ∧ 2 * J = v - 3 * u ∧
    X * Y + X * Z + Y * Z - X * Y * Z = (3 * u - v) * (v - u + 12) / 2 - (A * B ^ 2 + Ai * Bi ^ 2)
      + (P - 9) * (P - 18) - (P - 15) * J := by
  intro a b c d ai bi ci di S Si T Ti Rh Rhi X Y Z P J U Ui V Vi A Ai B Bi u v
  simp only [a, b, c, d, ai, bi, ci, di, S, Si, T, Ti, Rh, Rhi, X, Y, Z, P, J, U, Ui, V, Vi, A, Ai, B, Bi, u, v]
  refine ⟨?_, ?_, ?_⟩ <;> (field_simp; ring)

/-- **The corner invariant in trace coordinates.** -/
theorem seedR_Psi (q : Tr × Tr) : seedR (Psi q) = calRUV' (Phi q) := by
  obtain ⟨⟨x1, x2⟩, ⟨y1, y2⟩⟩ := q
  have L := laurent_pieces (x1 : ℂ) x2 y1 y2 (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
    (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
  dsimp only at L
  obtain ⟨L1, L2, L3⟩ := L
  simp only [mul_inv] at L1 L2 L3
  have e0 : ((Psi ((x1, x2), (y1, y2)) 0 : Circle) : ℂ) = x1 * (y2 : ℂ)⁻¹ := by simp [Psi]
  have e1 : ((Psi ((x1, x2), (y1, y2)) 1 : Circle) : ℂ) = x1 * x2 * y1 := by simp [Psi]
  have e2 : ((Psi ((x1, x2), (y1, y2)) 2 : Circle) : ℂ) = y1 * (x2 : ℂ)⁻¹ := by simp [Psi]
  have e3 : ((Psi ((x1, x2), (y1, y2)) 3 : Circle) : ℂ) = x1 * y1 * y2 := by simp [Psi]
  set p := Psi ((x1, x2), (y1, y2))
  set A := sumT (x1, x2) + sumT (y1, y2) with hA
  set B := sumT (x1, x2) - sumT (y1, y2) with hB
  have rP : 2 * seedP p = 18 - Complex.normSq B + Complex.normSq A := by
    apply Complex.ofReal_injective
    simp only [seedP, seedX, seedY, seedZ, Complex.ofReal_add, Complex.ofReal_mul, Complex.ofReal_sub,
      Complex.ofReal_ofNat, ← Complex.mul_conj]
    simp only [hA, hB, seedS, seedT, seedRho, e0, e1, e2, e3, sumT, third, Circle.coe_mul, Circle.coe_inv,
      Complex.star_def, map_neg, map_add, map_sub, map_one, map_mul, map_inv₀, conj_circle, inv_inv, mul_inv]
    linear_combination L1
  have rJ : 2 * seedJ p = Complex.normSq B - 3 * Complex.normSq A := by
    apply Complex.ofReal_injective
    simp only [seedJ, Complex.ofReal_mul, Complex.ofReal_sub, Complex.ofReal_ofNat,
      ← Complex.mul_conj, Complex.re_eq_add_conj]
    simp only [hA, hB, seedS, seedT, seedRho, e0, e1, e2, e3, sumT, third, Circle.coe_mul, Circle.coe_inv,
      Complex.star_def, map_neg, map_add, map_sub, map_one, map_mul, map_inv₀, conj_circle, inv_inv, mul_inv]
    linear_combination L2
  have rQ : seedX p * seedY p + seedX p * seedZ p + seedY p * seedZ p - seedX p * seedY p * seedZ p =
      ((3 * Complex.normSq A - Complex.normSq B) * (Complex.normSq B - Complex.normSq A + 12) / 2 -
        2 * (A * B ^ 2).re) + (seedP p - 9) * (seedP p - 18) - (seedP p - 15) * seedJ p := by
    apply Complex.ofReal_injective
    simp only [seedP, seedJ, seedX, seedY, seedZ, Complex.ofReal_add, Complex.ofReal_mul, Complex.ofReal_sub,
      Complex.ofReal_ofNat, Complex.ofReal_div, ← Complex.mul_conj, Complex.re_eq_add_conj]
    simp only [hA, hB, seedS, seedT, seedRho, e0, e1, e2, e3, sumT, third, Circle.coe_mul, Circle.coe_inv,
      Complex.star_def, map_neg, map_add, map_sub, map_one, map_mul, map_inv₀, map_pow, conj_circle, inv_inv, mul_inv]
    linear_combination L3
  have hG : seedG p = 2 * Complex.normSq B - 3 * Complex.normSq A := by unfold seedG; linarith
  have hE : seedEta p = Complex.normSq B - 2 * Complex.normSq A := by unfold seedEta; linarith
  have hC : seedChi p = (3 * Complex.normSq A - Complex.normSq B) * (Complex.normSq B - Complex.normSq A + 12) / 2 -
      2 * (A * B ^ 2).re := by unfold seedChi; linear_combination rQ
  show seedR p = calR A B
  unfold seedR calR; rw [hG, hE, hC]

/-! ### Every seed is a lift -/

lemma Psi_0 (q : Tr × Tr) : Psi q 0 = q.1.1 * q.2.2⁻¹ := rfl
lemma Psi_1 (q : Tr × Tr) : Psi q 1 = q.1.1 * q.1.2 * q.2.1 := rfl
lemma Psi_2 (q : Tr × Tr) : Psi q 2 = q.2.1 * q.1.2⁻¹ := rfl
lemma Psi_3 (q : Tr × Tr) : Psi q 3 = q.1.1 * q.2.1 * q.2.2 := rfl

lemma lift_key {a b c d k : ℂ} (hk : k ≠ 0) (h : k ^ 3 = a * b * c * d) :
    a * d * k⁻¹ * (b * k⁻¹) * (b * c * k⁻¹) = b ∧ a * d * k⁻¹ * (b * c * k⁻¹) * (d * k⁻¹) = d := by
  constructor <;> field_simp
  · first | linear_combination (-b) * h | linear_combination b * h
  · first | linear_combination (-d) * h | linear_combination d * h

/-- **Every seed is a lift** `Ψ(x, y)` (choose `κ³ = abcd`). -/
theorem exists_Psi (p : Seed) : ∃ q : Tr × Tr, Psi q = p := by
  obtain ⟨θ, hθ⟩ := Circle.exp_surjective (p 0 * p 1 * p 2 * p 3)
  set κ := Circle.exp (θ / 3) with hκdef
  have hκ : κ ^ 3 = p 0 * p 1 * p 2 * p 3 := by
    rw [← hθ, hκdef, ← Circle.exp_natCast_mul]; congr 1; push_cast; ring
  have hκ' : (κ : ℂ) ^ 3 = (p 0 : ℂ) * p 1 * p 2 * p 3 := by
    rw [← Circle.coe_pow, hκ]; push_cast; ring
  refine ⟨((p 0 * p 3 * κ⁻¹, p 1 * κ⁻¹), (p 1 * p 2 * κ⁻¹, p 3 * κ⁻¹)), ?_⟩
  have hk0 := Circle.coe_ne_zero κ
  obtain ⟨k1, k3⟩ := lift_key hk0 hκ'
  funext i
  fin_cases i <;> apply Circle.coe_injective
  · show ((p 0 * p 3 * κ⁻¹ * (p 3 * κ⁻¹)⁻¹ : Circle) : ℂ) = p 0
    push_cast; field_simp
  · show ((p 0 * p 3 * κ⁻¹ * (p 1 * κ⁻¹) * (p 1 * p 2 * κ⁻¹) : Circle) : ℂ) = p 1
    push_cast; exact k1
  · show ((p 1 * p 2 * κ⁻¹ * (p 1 * κ⁻¹)⁻¹ : Circle) : ℂ) = p 2
    push_cast; field_simp
  · show ((p 0 * p 3 * κ⁻¹ * (p 1 * p 2 * κ⁻¹) * (p 3 * κ⁻¹) : Circle) : ℂ) = p 3
    push_cast; exact k3

/-! ### The fibres of the trace map are reorderings -/

lemma two_root {a b c y1 y2 y3 : ℂ} (h : y1 = a) (hs : a + b + c = y1 + y2 + y3) (hp : a * b * c = y1 * y2 * y3)
    (ha : a ≠ 0) : y2 = b ∨ y2 = c := by
  subst h
  have hs' : y2 + y3 = b + c := by linear_combination -hs
  have hp' : y2 * y3 = b * c := mul_left_cancel₀ ha (by linear_combination -hp)
  have : (y2 - b) * (y2 - c) = 0 := by linear_combination y2 * hs' - hp'
  rcases mul_eq_zero.mp this with h | h
  · left; linear_combination h
  · right; linear_combination h

lemma fibre_poly {x1 x2 x3 y1 y2 y3 : ℂ} (hx : x1 * x2 * x3 = 1) (hy : y1 * y2 * y3 = 1)
    (h1 : x1 + x2 + x3 = y1 + y2 + y3) (h2 : x1 * x2 + x1 * x3 + x2 * x3 = y1 * y2 + y1 * y3 + y2 * y3) :
    (y1 = x1 ∧ y2 = x2) ∨ (y1 = x2 ∧ y2 = x1) ∨ (y1 = x1 ∧ y2 = x3) ∨ (y1 = x3 ∧ y2 = x1) ∨
      (y1 = x2 ∧ y2 = x3) ∨ (y1 = x3 ∧ y2 = x2) := by
  have hne : ∀ {a b c : ℂ}, a * b * c = 1 → a ≠ 0 := fun h ha => by rw [ha] at h; simp at h
  have hp : x1 * x2 * x3 = y1 * y2 * y3 := by rw [hx, hy]
  have hr : (y1 - x1) * (y1 - x2) * (y1 - x3) = 0 := by
    linear_combination (-y1 ^ 2) * h1 + y1 * h2 - hx + hy
  rcases mul_eq_zero.mp hr with hr | hr
  · rcases mul_eq_zero.mp hr with hr | hr
    · have e : y1 = x1 := by linear_combination hr
      rcases two_root e h1 hp (hne hx) with h | h
      · exact Or.inl ⟨e, h⟩
      · exact Or.inr (Or.inr (Or.inl ⟨e, h⟩))
    · have e : y1 = x2 := by linear_combination hr
      rcases two_root (b := x1) (c := x3) (y2 := y2) (y3 := y3) e (by linear_combination h1) (by linear_combination hp)
        (hne (a := x2) (b := x1) (c := x3) (by linear_combination hx)) with h | h
      · exact Or.inr (Or.inl ⟨e, h⟩)
      · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ⟨e, h⟩))))
  · have e : y1 = x3 := by linear_combination hr
    rcases two_root (b := x1) (c := x2) (y2 := y2) (y3 := y3) e (by linear_combination h1) (by linear_combination hp)
      (hne (a := x3) (b := x1) (c := x2) (by linear_combination hx)) with h | h
    · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨e, h⟩)))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr ⟨e, h⟩))))

lemma coe_third (x : Tr) : (third x : ℂ) = ((x.1 : ℂ) * x.2)⁻¹ := by simp [third]

lemma prod_third (x : Tr) : (x.1 : ℂ) * x.2 * (third x : ℂ) = 1 := by
  rw [coe_third]; field_simp

lemma e2_conj (x : Tr) : (x.1 : ℂ) * x.2 + x.1 * (third x : ℂ) + x.2 * (third x : ℂ) = conj (sumT x) := by
  simp only [sumT, coe_third, map_add, map_inv₀, map_mul, conj_circle]; field_simp; ring

/-- The six reorderings of a triple. -/
noncomputable def reord : Fin 6 → Tr → Tr
  | 0 => id
  | 1 => fun x => (x.2, x.1)
  | 2 => fun x => (x.1, third x)
  | 3 => fun x => (third x, x.1)
  | 4 => fun x => (x.2, third x)
  | 5 => fun x => (third x, x.2)

lemma continuous_reord (k : Fin 6) : Continuous (reord k) := by
  fin_cases k <;> simp only [reord, third] <;> fun_prop

lemma sumT_reord (k : Fin 6) (x : Tr) : sumT (reord k x) = sumT x := by
  have h1 := Circle.coe_ne_zero x.1
  have h2 := Circle.coe_ne_zero x.2
  fin_cases k <;> simp only [reord, sumT, coe_third, id] <;> field_simp <;> ring

lemma fibre {x y : Tr} (h : sumT x = sumT y) : ∃ k, y = reord k x := by
  have h2 : (x.1 : ℂ) * x.2 + x.1 * (third x : ℂ) + x.2 * (third x : ℂ) =
      (y.1 : ℂ) * y.2 + y.1 * (third y : ℂ) + y.2 * (third y : ℂ) := by rw [e2_conj, e2_conj, h]
  have hc : ∀ {u v : Circle}, (u : ℂ) = v → u = v := fun h => Circle.coe_injective h
  rcases fibre_poly (prod_third x) (prod_third y) h h2 with ⟨a, b⟩ | ⟨a, b⟩ | ⟨a, b⟩ | ⟨a, b⟩ | ⟨a, b⟩ | ⟨a, b⟩
  · exact ⟨0, Prod.ext (hc a) (hc b)⟩
  · exact ⟨1, Prod.ext (hc a) (hc b)⟩
  · exact ⟨2, Prod.ext (hc a) (hc b)⟩
  · exact ⟨3, Prod.ext (hc a) (hc b)⟩
  · exact ⟨4, Prod.ext (hc a) (hc b)⟩
  · exact ⟨5, Prod.ext (hc a) (hc b)⟩

/-! ### Local maxima of `R` are relative local maxima of `ℛ` on `D × D` -/

lemma sumT_inD (x : Tr) : InD (sumT x) :=
  ⟨x.1, x.2, third x, Circle.normSq_coe _, Circle.normSq_coe _, Circle.normSq_coe _, prod_third x, rfl⟩

lemma exists_sumT {U : ℂ} (hU : InD U) : ∃ x : Tr, sumT x = U := by
  obtain ⟨a, b, c, ha, hb, hc, habc, rfl⟩ := hU
  have hn : ∀ {z : ℂ}, Complex.normSq z = 1 → z ∈ Submonoid.unitSphere ℂ := fun {z} h => by
    show z ∈ Metric.sphere (0 : ℂ) 1
    rw [mem_sphere_zero_iff_norm]; rw [Complex.normSq_eq_norm_sq] at h
    exact (pow_eq_one_iff_of_nonneg (norm_nonneg z) two_ne_zero).mp h
  refine ⟨(⟨a, hn ha⟩, ⟨b, hn hb⟩), ?_⟩
  have h0 : a * b ≠ 0 := by intro h0; rw [h0, zero_mul] at habc; exact zero_ne_one habc
  simp only [sumT, coe_third]
  show a + b + (a * b)⁻¹ = a + b + c
  rw [← eq_inv_of_mul_eq_one_right habc]

/-- A continuous map from a compact space: near the image of `q₀`, every preimage lies in any open set
containing the whole fibre of `q₀`. -/
lemma eventually_fibre_mem {Y Z : Type*} [TopologicalSpace Y] [CompactSpace Y] [TopologicalSpace Z] [T2Space Z]
    {Φ : Y → Z} (hΦ : Continuous Φ) {q₀ : Y} {S : Set Y} (hS : IsOpen S) (hfib : ∀ q, Φ q = Φ q₀ → q ∈ S) :
    ∀ᶠ z in 𝓝 (Φ q₀), ∀ q, Φ q = z → q ∈ S := by
  have hC : IsClosed (Φ '' Sᶜ) := (hS.isClosed_compl.isCompact.image hΦ).isClosed
  have hnot : Φ q₀ ∉ Φ '' Sᶜ := fun ⟨q, hq, hq0⟩ => hq (hfib q hq0)
  filter_upwards [hC.isOpen_compl.mem_nhds hnot] with z hz q hq
  by_contra hqS; exact hz ⟨q, hqS, hq⟩

/-- **Seed maxima are trace maxima.** -/
theorem relmax_of_seed {q₀ : Tr × Tr} (hmax : IsLocalMax seedR (Psi q₀)) :
    IsLocalMaxOn calRUV' DD (Phi q₀) := by
  obtain ⟨t, htW, ht, hq₀t⟩ := mem_nhds_iff.mp hmax
  let Good : (Tr × Tr → Tr × Tr) → Prop := fun g => Continuous g ∧ ∀ z, Phi (g z) = Phi z
  set S : Set (Tr × Tr) := {q | ∃ g, Good g ∧ Psi (g q) ∈ t}
  have hS : IsOpen S := by
    refine isOpen_iff_forall_mem_open.mpr fun q ⟨g, hg, hq⟩ => ⟨(Psi ∘ g) ⁻¹' t,
      fun q' hq' => ⟨g, hg, hq'⟩, ht.preimage (continuous_Psi.comp hg.1), hq⟩
  have hfib : ∀ q, Phi q = Phi q₀ → q ∈ S := by
    intro q hq
    obtain ⟨k1, hk1⟩ := fibre (Prod.ext_iff.mp hq).1
    obtain ⟨k2, hk2⟩ := fibre (Prod.ext_iff.mp hq).2
    refine ⟨Prod.map (reord k1) (reord k2), ⟨(continuous_reord k1).prodMap (continuous_reord k2),
      fun z => ?_⟩, ?_⟩
    · simp only [Phi, Prod.map_fst, Prod.map_snd, sumT_reord]
    · have : Prod.map (reord k1) (reord k2) q = q₀ := Prod.ext hk1.symm hk2.symm
      rw [this]; exact hq₀t
  have hev := eventually_fibre_mem continuous_Phi hS hfib
  rw [IsLocalMaxOn, IsMaxFilter, eventually_nhdsWithin_iff]
  filter_upwards [hev] with z hz hzD
  obtain ⟨x, hx⟩ := exists_sumT hzD.1
  obtain ⟨y, hy⟩ := exists_sumT hzD.2
  obtain ⟨g, ⟨_, hgΦ⟩, hgt⟩ := hz (x, y) (Prod.ext hx hy)
  have hle := htW hgt
  rw [Set.mem_ofPred_eq, seedR_Psi, seedR_Psi, hgΦ] at hle
  have : Phi (x, y) = z := Prod.ext hx hy
  rwa [this] at hle

end NoFourMUBs.Step1Geo
