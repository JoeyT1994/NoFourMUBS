import KernelAtlas.Seed.RecBox

/-!
# `RecBoundaryCover` from the listed boxes (FORMAT §6)

A record's boundary certificate is a list of entries `⟨b, g⟩`: a dyadic box `b` (in units of `eta_scale`) and the
index `g` of its group.  The entries are sorted in preorder of the boxes (`Seed/Cover.lean`; the kernel reads
`es.map REntry.b` as a stream).  Groups `g < D.tg.length` are `rec` groups (target `D.tg[g]` of a `BData` `D`, the
kernel test `recBoxOK`); groups `g ≥ D.tg.length` are `T1prime` groups, whose claim is supplied from outside (the T1′
check, `Seed/T1P*.lean`).

* `recCover_of`: the shell traversal (`shellOK`, `shell_cover'`) and a claim per entry give
  `Nonempty (RecBoundaryCover S A l)` (one box per entry);
* `ShellD` against `D` (`shellMatch`: `E = W`, `r_H`, `lo ≤ R² − n̄²`, `R² ≤ hi`, the Gram matrix `Ĝ_T / DT²`), so
  that for a `recordK` record the shell hypotheses are discharged by the same `bdMatch` as the `rec` test;
* `recCoverK`: the whole boundary field of a `recordK` record from the kernel checks
  `gOK`, `tOK`, `bdMatch`, `shellMatch`, `shellOK`, `recEntriesOK`, the link hypotheses of the `rec` targets, and the
  T1′ claims as a hypothesis.
-/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas

namespace NoFourMUBs.KernelAtlas.Seed

/-- A listed box of a record's boundary and the index of its group. -/
structure REntry where
  b : Bx
  g : ℕ

/-! ### The generic assembly -/

/-- **The record boundary field from listed boxes**: the shell traversal over `es.map REntry.b` and, for each
entry, its target's claim on the shell points of its box. -/
theorem recCover_of {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {l : ιr} {Sh : ShellD} {maxl : ℕ}
    {es : List REntry} (hsh : shellOK Sh maxl (es.map REntry.b) = true) (hG : GramOf Sh (A l).T)
    (hrH : (A l).rH ≤ Sh.rH) (hlo : (Sh.lo : ℝ) ≤ (A l).R ^ 2 - (A l).n ^ 2) (hhi : (A l).R ^ 2 ≤ Sh.hi)
    (tgt : ℕ → RecTarget σs ιr)
    (hent : ∀ e ∈ es, ∀ η, e.b.Mem (Sh.E : ℝ) η → Real.sqrt (∑ k, η k ^ 2) ≤ (A l).rH →
      (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (tang (A l).T η) → sumsq (tang (A l).T η) ≤ (A l).R ^ 2 →
      RecTargetHolds S A l (tgt e.g) η) :
    Nonempty (RecBoundaryCover S A l) := by
  refine ⟨⟨{e // e ∈ es}, fun e => {η | e.1.b.Mem (Sh.E : ℝ) η}, fun e => tgt e.1.g, ?_,
    fun e η hη h1 h2 h3 => hent e.1 e.2 η hη h1 h2 h3⟩⟩
  intro η h1 h2 h3
  obtain ⟨b, hb, hm⟩ := shell_cover' hsh hG hrH hlo hhi η h1 h2 h3
  obtain ⟨e, he, rfl⟩ := List.mem_map.mp hb
  exact ⟨⟨e, he⟩, hm⟩

/-! ### The shell data against `D` -/

/-- The shell data are those of `D`: `E = W`, `r_H ≤ r̄_H`, `lo ≤ R² − n̄²`, `R² ≤ hi`, `GZ = Ĝ_T`, `Gd = DT²`. -/
def shellMatch (Sh : ShellD) (D : BData) : Bool :=
  decide (Sh.E = D.W) && decide (D.rH ≤ Sh.rH) && decide (Sh.lo ≤ D.R ^ 2 - D.nbar ^ 2) && decide (D.R ^ 2 ≤ Sh.hi) &&
    decide (Sh.GZ = D.GT) && decide (Sh.Gd = D.DT ^ 2)

/-- The shell hypotheses of `recCover_of` for a record matching `D`. -/
theorem shell_facts {Sh : ShellD} {D : BData} {Th : ℕ → I6 → I6 → ℤ} (G : GFacts D Th) (h : shellMatch Sh D = true)
    {C : RecordCert} (hT : ∀ (k : Fin 4) a b, C.T k a b = (Th k a b : ℝ) / D.DT) (hR : C.R = D.R)
    (hrH : C.rH = D.rH) (hn0 : 0 ≤ C.n) (hn : C.n ≤ D.nbar) :
    (Sh.E : ℝ) = D.W ∧ GramOf Sh C.T ∧ C.rH ≤ Sh.rH ∧ (Sh.lo : ℝ) ≤ C.R ^ 2 - C.n ^ 2 ∧ C.R ^ 2 ≤ Sh.hi := by
  simp only [shellMatch, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨hE, hrH'⟩, hlo⟩, hhi⟩, hGZ⟩, hGd⟩ := h
  refine ⟨by rw [hE], fun k l => ?_, ?_, ?_, ?_⟩
  · have := ip_T G hT k l
    simp only [ip] at this
    rw [this, hGZ, hGd]
    push_cast; rfl
  · rw [hrH]; exact_mod_cast hrH'
  · have h1 : ((Sh.lo : ℚ) : ℝ) ≤ ((D.R ^ 2 - D.nbar ^ 2 : ℚ) : ℝ) := by exact_mod_cast hlo
    push_cast at h1
    have h2 : C.n ^ 2 ≤ (D.nbar : ℝ) ^ 2 := pow_le_pow_left₀ hn0 hn 2
    rw [hR]; linarith
  · have h1 : ((D.R ^ 2 : ℚ) : ℝ) ≤ ((Sh.hi : ℚ) : ℝ) := by exact_mod_cast hhi
    push_cast at h1
    rw [hR]; exact h1

/-! ### The entries' check and the targets -/

/-- **The `rec` entries' kernel check**: every entry of a `rec` group passes `recBoxOK` (the `T1prime` entries,
`g ≥ D.tg.length`, are checked elsewhere). -/
def recEntriesOK (D : BData) (es : List REntry) : Bool :=
  es.all fun e => decide (D.tg.length ≤ e.g) || recBoxOK D e.g e.b

/-- The target of group `g`: `rec` group `g` of `D` into record `idx g`, or the `T1prime` target `t1 (g − |D.tg|)`. -/
noncomputable def recTgt {σs ιr : Type} (D : BData) (idx : ℕ → ιr) (t1 : ℕ → RecTarget σs ιr) (g : ℕ) :
    RecTarget σs ιr :=
  match D.tg[g]? with
  | some t => .record (idx g) t.sp t.wind
  | none => t1 (g - D.tg.length)

/-- **The boundary field of a record matching `D`** from the kernel checks, the `rec` targets' links and the
`T1prime` claims (`ht1`, one per `T1prime` entry). -/
theorem recCover_match {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {l : ιr} {D : BData}
    {pq : I6 → I6 → ℚ} {Th : ℕ → I6 → I6 → ℤ} (G : GFacts D Th) (ht : D.tg.all (tOK D pq Th) = true)
    (hP : (A l).P = Pmat pq) (hT : ∀ (k : Fin 4) a b, (A l).T k a b = (Th k a b : ℝ) / D.DT)
    (hlam : (A l).lam ≤ D.lam) (hR : (A l).R = D.R) (hrH : (A l).rH = D.rH) (hn0 : 0 ≤ (A l).n)
    (hn : (A l).n ≤ D.nbar) {Sh : ShellD} (hsm : shellMatch Sh D = true) {maxl : ℕ} {es : List REntry}
    (hsh : shellOK Sh maxl (es.map REntry.b) = true) (hrec : recEntriesOK D es = true) (idx : ℕ → ιr)
    (hlink : ∀ j t, D.tg[j]? = some t → (A (idx j)).P = Pmat t.pt ∧ (t.Rt : ℝ) ≤ (A (idx j)).R)
    (t1 : ℕ → RecTarget σs ιr)
    (ht1 : ∀ e ∈ es, D.tg.length ≤ e.g → ∀ η, e.b.Mem (Sh.E : ℝ) η → Real.sqrt (∑ k, η k ^ 2) ≤ (A l).rH →
      (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (tang (A l).T η) → sumsq (tang (A l).T η) ≤ (A l).R ^ 2 →
      RecTargetHolds S A l (t1 (e.g - D.tg.length)) η) :
    Nonempty (RecBoundaryCover S A l) := by
  obtain ⟨hE, hG, hrH', hlo, hhi⟩ := shell_facts G hsm hT hR hrH hn0 hn
  refine recCover_of hsh hG hrH' hlo hhi (recTgt D idx t1) fun e he η hη h1 h2 h3 => ?_
  have hok := List.all_eq_true.mp hrec e he
  simp only [Bool.or_eq_true, decide_eq_true_eq] at hok
  unfold recTgt
  split
  · rename_i t hj
    have hlt : e.g < D.tg.length := (List.getElem?_eq_some_iff.mp hj).1
    have hb : recBoxOK D e.g e.b = true := hok.resolve_left (by omega)
    obtain ⟨hPt, hRt⟩ := hlink e.g t hj
    rw [hE] at hη
    exact recBox_holds G ht hP hT hlam hn hj hPt hRt hb hη
  · rename_i hj
    have hge : D.tg.length ≤ e.g := List.getElem?_eq_none_iff.mp hj
    exact ht1 e he hge η hη h1 h2 h3

/-- No entry belongs to a `T1prime` group: the `T1prime` hypothesis of `recCover_match`/`recCoverK` is vacuous. -/
lemma noT1 {D : BData} {es : List REntry} (h : es.all (fun e => decide (e.g < D.tg.length)) = true)
    {P : REntry → Prop} : ∀ e ∈ es, D.tg.length ≤ e.g → P e := fun e he hge =>
  absurd (of_decide_eq_true (List.all_eq_true.mp h e he)) (by omega)

/-- **The boundary field of a `recordK` record** (the old per-record pipeline's `RecordCert`), for any family `A`
with `A l` that record: the kernel checks `gOK`, `tOK`, `bdMatch` (the `rec` test's data against the record),
`shellMatch`, `shellOK` (the traversal of the shell), `recEntriesOK` (every `rec` entry), the links of the `rec`
targets, and the `T1prime` entries' claims. -/
theorem recCoverK {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {l : ιr}
    {tb tbN : Tab} {tc : TCfg} {fq : FrameQ} {SQ : SigQ} {B : BarsQ} {pq : ParQ} {tq : TParQ}
    {hPq : tbN.pq = tb.pq} {hF : KernelAtlas.frameOK (frameOf tc tq) fq = true}
    {hS : sigmaOK tbN (frameOf tc tq) SQ B.sigma = true} {he : e0OK tbN B.e0 = true}
    {hj : j1OK tbN (frameOf tc tq) B.j1 = true} {hB : barsOK B fq pq tq = true}
    {SC : ∀ {rH n r rF K : ℝ}, 0 ≤ K →
      (∀ z, StageC.cnorm (StageC.Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * StageC.cnorm z) →
      K ≤ pq.Kbar → r ≤ pq.rbar → rF ≤ pq.rFbar → rH ≤ tq.rHbar → n ≤ tq.nbar →
      StageC.StageCCert ((1 / (2 * Real.pi)) • Pmat tb.pq) (frameOf tc tq).toR rH n r rF}
    (hl : A l = recordK hPq hF hS he hj hB SC) {D : BData} (hg : gOK D (tcTh tc) = true)
    (ht : D.tg.all (tOK D tb.pq (tcTh tc)) = true) (hm : bdMatch D fq B tq = true)
    {Sh : ShellD} (hsm : shellMatch Sh D = true) {maxl : ℕ} {es : List REntry}
    (hsh : shellOK Sh maxl (es.map REntry.b) = true) (hrec : recEntriesOK D es = true) (idx : ℕ → ιr)
    (hlink : ∀ j t, D.tg[j]? = some t → (A (idx j)).P = Pmat t.pt ∧ (t.Rt : ℝ) ≤ (A (idx j)).R)
    (t1 : ℕ → RecTarget σs ιr)
    (ht1 : ∀ e ∈ es, D.tg.length ≤ e.g → ∀ η, e.b.Mem (Sh.E : ℝ) η → Real.sqrt (∑ k, η k ^ 2) ≤ (A l).rH →
      (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (tang (A l).T η) → sumsq (tang (A l).T η) ≤ (A l).R ^ 2 →
      RecTargetHolds S A l (t1 (e.g - D.tg.length)) η) :
    Nonempty (RecBoundaryCover S A l) := by
  obtain ⟨hP, hT, hlam, hR, hrH, hn0, hn⟩ := recordK_match hl hm
  exact recCover_match (gOK_facts hg) ht hP hT hlam hR hrH hn0 hn hsm hsh hrec idx hlink t1 ht1

end NoFourMUBs.KernelAtlas.Seed
