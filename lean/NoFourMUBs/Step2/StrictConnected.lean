import NoFourMUBs.Step1.Census
import NoFourMUBs.Step2.TopologyCore

/-!
# The strict seeds are connected

**Theorem (`isConnected_strict`).** The strict seed region `Ω = {p ∈ T⁴ : R(p) > 0}` is connected.

Every connected component of `Ω` contains a positive local maximum of `R` (`TopologyCore.superlevel_clopen_eq_univ`:
`R` is continuous on the compact `T⁴`), and these are the 18 `anchors` (`Step1Geo.maximumCensus`).  So it suffices
to join the anchors inside `Ω`.

For unit `u, v` let `pathSeed i j u v = Ψ(ordT i (uv), ordT j (uv̄))`: the seed whose two trace triples are the
orderings `i`, `j` of `(uv, uv, ū²v̄²)` and `(uv̄, uv̄, ū²v²)`.  Its traces are `Tp u v`, so
(`seedR_pathSeed`, from `seedR_Psi` and `calRUV_Tp`)

  `R(pathSeed i j u v) = Rch(Re v, Re u³)`.

The anchor `(k, ±, i, j)` is `pathSeed i j ζᵏ q^{±1}` (`anchorSeed_eq_pathSeed`), with `q = e^{iα}`, `cos α = 1/4`.
* Along `v = e^{iθ}` (or `e^{−iθ}`), `θ ∈ [α, π/2]`, at `u = ζᵏ`: `Re v = cos θ ∈ [0, 1/4]` and
  `Rch(c, 1) = 256 (1 + 2c²)² (1 + 2c)⁸ (1 − 2c) (4c³ − 2c + 1)² > 0` (`linked_arc`).
* On `v = ±i`: `Rch(0, h) = 256`, so `u` moves freely around the circle (`linked_circle`).
* At `uv = 1` the first triple is `(1, 1, 1)`, so the ordering `i` does not matter; at `uv̄ = 1` the ordering `j`
  does not matter; and `(u, v)`, `(−u, −v)` give the same seed (`linked_base`, `linked_anchor`).

Hence every anchor is joined to `baseSeed = pathSeed 0 0 1 i`, and a clopen set of strict seeds containing
`baseSeed` contains every positive local maximum, so it is everything.
-/

open Set ComplexConjugate NoFourMUBs.Step1Geo

noncomputable section

namespace NoFourMUBs.Step2

/-! ### The two-parameter family -/

/-- The seed with trace triples the orderings `i`, `j` of `(uv, uv, ū²v̄²)` and `(uv̄, uv̄, ū²v²)`. -/
def pathSeed (i j : Fin 3) (u v : Circle) : Seed := Psi (ordT i (u * v), ordT j (u * v⁻¹))

lemma seedR_pathSeed (i j : Fin 3) (u v : Circle) :
    seedR (pathSeed i j u v) = Rch (v : ℂ).re ((u : ℂ) ^ 3).re := by
  have hΦ : Phi (ordT i (u * v), ordT j (u * v⁻¹)) = Tp u v := by
    simp only [Phi, sumT_ordT, Tp, Circle.coe_mul, Circle.coe_inv_eq_conj, Complex.star_def]
  rw [pathSeed, seedR_Psi, hΦ, calRUV_Tp (Circle.normSq_coe u) (Circle.normSq_coe v)]

lemma continuous_ordT (i : Fin 3) : Continuous (ordT i) := by
  have h : Continuous fun a : Circle => third (a, a) := by unfold third; fun_prop
  fin_cases i
  · exact continuous_id.prodMk continuous_id
  · exact continuous_id.prodMk h
  · exact h.prodMk continuous_id

lemma continuous_Psi : Continuous Psi := by
  refine continuous_pi fun m => ?_
  fin_cases m <;> simp only [Psi] <;> dsimp <;> fun_prop

lemma continuous_pathSeed (i j : Fin 3) {X : Type*} [TopologicalSpace X] {f g : X → Circle}
    (hf : Continuous f) (hg : Continuous g) : Continuous fun x => pathSeed i j (f x) (g x) :=
  continuous_Psi.comp (((continuous_ordT i).comp (hf.mul hg)).prodMk ((continuous_ordT j).comp (hf.mul hg.inv)))

lemma ordT_one (i : Fin 3) : ordT i 1 = (1, 1) := by
  fin_cases i <;> simp [ordT, reord, third]

lemma pathSeed_left (i i' j : Fin 3) {u v : Circle} (h : u * v = 1) :
    pathSeed i j u v = pathSeed i' j u v := by
  simp only [pathSeed, h, ordT_one]

lemma pathSeed_right (i j j' : Fin 3) {u v : Circle} (h : u * v⁻¹ = 1) :
    pathSeed i j u v = pathSeed i j' u v := by
  simp only [pathSeed, h, ordT_one]

lemma anchorSeed_eq_pathSeed (k : Fin 3) (s : Bool) (i j : Fin 3) :
    anchorSeed (k, s, i, j) = pathSeed i j (ζC ^ (k : ℕ)) (if s then qC else qC⁻¹) := by
  cases s <;> simp [anchorSeed, anchorQ, pathSeed, aOf, bOf]

/-! ### Positivity of `R` along the paths -/

lemma rch_pos {c : ℝ} (h0 : 0 ≤ c) (h1 : c ≤ 1 / 4) : 0 < Rch c 1 := by
  have e : Rch c 1 = 256 * (2 * c ^ 2 + 1) ^ 2 * ((1 + 2 * c) * (4 * c ^ 3 - 2 * c + 1)) ^ 2 *
      ((1 - 2 * c) * (1 + 2 * c) ^ 3) := by
    unfold Rch Lp Mp Np; ring
  have hm : 0 < 4 * c ^ 3 - 2 * c + 1 := by nlinarith
  have hn : 0 < 1 - 2 * c := by linarith
  rw [e]
  positivity

lemma rch_zero (h : ℝ) : Rch 0 h = 256 := by norm_num [Rch, Lp, Mp, Np]

/-! ### Joining strict seeds -/

/-- `p` and `q` are strict seeds in one connected component of the strict seeds. -/
def Linked (p q : Seed) : Prop :=
  ∃ (hp : 0 < seedR p) (hq : 0 < seedR q),
    connectedComponent (⟨p, hp⟩ : StrictSeed) = connectedComponent ⟨q, hq⟩

lemma Linked.trans {p q r : Seed} (h : Linked p q) (h' : Linked q r) : Linked p r := by
  obtain ⟨hp, hq, e⟩ := h
  obtain ⟨hq', hr, e'⟩ := h'
  exact ⟨hp, hr, e.trans e'⟩

/-- A continuous strict family over a preconnected space stays in one component. -/
lemma linked_of_preconnected {X : Type*} [TopologicalSpace X] [PreconnectedSpace X] (g : X → Seed)
    (hg : Continuous g) (hpos : ∀ x, 0 < seedR (g x)) (x y : X) : Linked (g x) (g y) := by
  let G : X → StrictSeed := fun x => ⟨g x, hpos x⟩
  refine ⟨hpos x, hpos y, connectedComponent_eq ?_⟩
  exact (isPreconnected_range (hg.subtype_mk hpos : Continuous G)).subset_connectedComponent
    ⟨x, rfl⟩ ⟨y, rfl⟩

/-- `i` on the circle. -/
def iC : Circle := Circle.exp (Real.pi / 2)

lemma coe_iC : (iC : ℂ) = Complex.I := by
  apply Complex.ext <;> simp [iC, Circle.coe_exp]

lemma iC_re : (iC : ℂ).re = 0 := by rw [coe_iC, Complex.I_re]

/-- **On `v = ±i`, `u` moves freely.** -/
lemma linked_circle (i j : Fin 3) {v : Circle} (hv : (v : ℂ).re = 0) (u u' : Circle) :
    Linked (pathSeed i j u v) (pathSeed i j u' v) := by
  have hpos : ∀ w : Circle, 0 < seedR (pathSeed i j w v) := fun w => by
    rw [seedR_pathSeed, hv, rch_zero]; norm_num
  exact linked_of_preconnected (fun w => pathSeed i j w v)
    (continuous_pathSeed i j continuous_id continuous_const) hpos u u'

/-- **From an anchor to `v = ±i`**, along `v = e^{±iθ}`, `θ ∈ [α, π/2]`. -/
lemma linked_arc (i j : Fin 3) {u : Circle} (hu : ((u : ℂ) ^ 3).re = 1) (b : Bool) :
    Linked (pathSeed i j u (if b then qC else qC⁻¹)) (pathSeed i j u (if b then iC else iC⁻¹)) := by
  set α := Real.arccos (1 / 4)
  have hα0 : 0 ≤ α := Real.arccos_nonneg _
  have hαπ : α ≤ Real.pi / 2 := Real.arccos_le_pi_div_two.2 (by norm_num)
  have hcα : Real.cos α = 1 / 4 := Real.cos_arccos (by norm_num) (by norm_num)
  have : PreconnectedSpace (Icc α (Real.pi / 2)) :=
    isPreconnected_iff_preconnectedSpace.mp isPreconnected_Icc
  let v : Icc α (Real.pi / 2) → Circle := fun θ => if b then Circle.exp θ else (Circle.exp θ)⁻¹
  have hv : Continuous v := by
    cases b
    · exact (Circle.exp.continuous.comp continuous_subtype_val).inv
    · exact Circle.exp.continuous.comp continuous_subtype_val
  have hre : ∀ θ, ((v θ : Circle) : ℂ).re = Real.cos θ := by
    intro θ
    cases b
    · simp only [v, Bool.false_eq_true, ↓reduceIte]
      rw [Circle.coe_inv_eq_conj, Complex.conj_re, Circle.coe_exp, Complex.exp_ofReal_mul_I_re]
    · simp only [v, ↓reduceIte]
      rw [Circle.coe_exp, Complex.exp_ofReal_mul_I_re]
  have hpos : ∀ θ, 0 < seedR (pathSeed i j u (v θ)) := by
    intro θ
    rw [seedR_pathSeed, hre, hu]
    apply rch_pos
    · exact Real.cos_nonneg_of_mem_Icc ⟨by linarith [θ.2.1, Real.pi_pos], θ.2.2⟩
    · rw [← hcα]; exact Real.cos_le_cos_of_nonneg_of_le_pi hα0 (by linarith [θ.2.2, Real.pi_pos]) θ.2.1
  have h := linked_of_preconnected (fun θ => pathSeed i j u (v θ))
    (continuous_pathSeed i j continuous_const hv) hpos
    ⟨α, left_mem_Icc.2 hαπ⟩ ⟨Real.pi / 2, right_mem_Icc.2 hαπ⟩
  cases b <;> exact h

/-- The base point `pathSeed 0 0 1 i`. -/
def baseSeed : Seed := pathSeed 0 0 1 iC

lemma baseSeed_pos : 0 < seedR baseSeed := by
  rw [baseSeed, seedR_pathSeed, iC_re, rch_zero]; norm_num

/-- **Every point of the circle `v = i` is joined to the base point**: at `u = ī` (`uv = 1`) change `i`, at
`u = i` (`uv̄ = 1`) change `j`. -/
lemma linked_base (i j : Fin 3) (u : Circle) : Linked (pathSeed i j u iC) baseSeed := by
  refine (linked_circle i j iC_re u iC⁻¹).trans ?_
  rw [pathSeed_left i 0 j (inv_mul_cancel iC)]
  refine (linked_circle 0 j iC_re iC⁻¹ iC).trans ?_
  rw [pathSeed_right 0 j 0 (mul_inv_cancel iC)]
  exact linked_circle 0 0 iC_re iC 1

/-- **Every anchor is joined to the base point.**  For the sign `−`, `(u, −i)` and `(−u, i)` give the same seed. -/
lemma linked_anchor (k : Fin 3) (s : Bool) (i j : Fin 3) : Linked (anchorSeed (k, s, i, j)) baseSeed := by
  have hu : (((ζC ^ (k : ℕ) : Circle) : ℂ) ^ 3).re = 1 := by
    rw [Circle.coe_pow, ← pow_mul, mul_comm, pow_mul, ζC_prim.pow_eq_one, one_pow, Complex.one_re]
  rw [anchorSeed_eq_pathSeed]
  refine (linked_arc i j hu s).trans ?_
  cases s
  · have e : pathSeed i j (ζC ^ (k : ℕ)) iC⁻¹ = pathSeed i j (ζC ^ (k : ℕ) * iC * iC) iC := by
      have h1 : ζC ^ (k : ℕ) * iC⁻¹ = ζC ^ (k : ℕ) * iC * iC * iC := by
        apply Circle.ext
        simp only [Circle.coe_mul, Circle.coe_inv_eq_conj, coe_iC, Complex.conj_I]
        linear_combination (-(ζC ^ (k : ℕ) : Circle) : ℂ) * Complex.I * Complex.I_sq
      have h2 : ζC ^ (k : ℕ) * iC⁻¹⁻¹ = ζC ^ (k : ℕ) * iC * iC * iC⁻¹ := by group
      simp only [pathSeed, h1, h2]
    simp only [Bool.false_eq_true, ↓reduceIte, e]
    exact linked_base i j _
  · exact linked_base i j _

/-! ### Connectedness -/

/-- **The strict seeds are connected.** -/
theorem isConnected_strict : IsConnected {p : Seed | 0 < seedR p} := by
  have key : ∀ V : Set StrictSeed, IsClopen V → ⟨baseSeed, baseSeed_pos⟩ ∈ V → V = univ := by
    intro V hV hb
    apply Step2.TopologyCore.superlevel_clopen_eq_univ seedR continuous_seedR V hV
    intro p hp hmax
    have hA := maximumCensus p hp hmax
    simp only [anchors, Finset.mem_image, Finset.mem_univ, true_and] at hA
    obtain ⟨⟨k, s, i, j⟩, hn⟩ := hA
    obtain ⟨ha, hb', e⟩ := linked_anchor k s i j
    rw [← hn]
    exact hV.connectedComponent_subset hb (by rw [← e]; exact mem_connectedComponent)
  have hpre : PreconnectedSpace StrictSeed := by
    rw [preconnectedSpace_iff_clopen]
    intro V hV
    by_cases h : ⟨baseSeed, baseSeed_pos⟩ ∈ V
    · exact Or.inr (key V hV h)
    · exact Or.inl (Set.compl_univ_iff.1 (key Vᶜ hV.compl h))
  exact isConnected_iff_connectedSpace.mpr (@ConnectedSpace.mk StrictSeed _ hpre ⟨⟨baseSeed, baseSeed_pos⟩⟩)

instance : ConnectedSpace StrictSeed := isConnected_iff_connectedSpace.mp isConnected_strict

end NoFourMUBs.Step2
