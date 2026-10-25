import KernelAtlas.Edge.FullBox
import KernelAtlas.Edge.GlobalOpen
import KernelAtlas.Edge.CoverChecks
import KernelAtlas.Edge.Fourier.Sound
import KernelAtlas.Edge.Graph
import NoFourMUBs.SeedAtlas.EdgeX

/-! Assembly of the X-excluded edge ball from checked local boxes and their finite cover. -/

open Hadamard6 NoFourMUBs.StageC NoFourMUBs.SeedAtlas Filter Topology Set

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

/-- Enclosure frame bounds need only the two positive-semidefinite checks, not a seed chart. -/
def enclosureFrameOK (R : EnclosureD) (t lam : ℕ) : Bool :=
  Seed.colOK ⟨R.ball, 0, t, lam⟩ && Seed.frobOK ⟨R.ball, 0, t, lam⟩

theorem enclosureFrame_sound {R : EnclosureD} {t lam : ℕ} (h : enclosureFrameOK R t lam = true) :
    (∀ (w : Fin 4 → ℝ) (i : I6), colnorm (tang R.Um w) i ≤ rn t*wnorm w) ∧
      ∀ w : Fin 4 → ℝ, frob (tang R.Um w) ≤ rn lam*wnorm w := by
  simp only [enclosureFrameOK, Bool.and_eq_true] at h
  constructor
  · intro w i
    have hp : psdOK (shiftA t (gramC R.U (Seed.sidx i))) = true := all_l6' h.1 (sidx_lt i)
    unfold EnclosureD.Um colnorm vnorm
    rw [col_sq]
    exact sqrt_scaled_le (wq_le hp w)
  · intro w
    rw [← vnorm_colnorm]
    unfold vnorm colnorm vnorm
    have he : ∑ i : I6, Real.sqrt (∑ j : I6, tang R.Um w j i ^ 2) ^ 2 =
        (∑ k : Fin 4, ∑ l : Fin 4, w k*w l*(gramF R.U k l : ℝ))/2^(2*pp) := by
      have h1 (i : I6) : Real.sqrt (∑ j : I6, tang R.Um w j i ^ 2)^2 =
          (∑ k : Fin 4, ∑ l : Fin 4, w k*w l*(gramC R.U (sidx i) k l : ℝ))/2^(2*pp) := by
        rw [Real.sq_sqrt (Finset.sum_nonneg fun j _ => sq_nonneg _)]
        exact col_sq R.ball w i
      simp only [h1]
      rw [← Finset.sum_div]
      congr 1
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [← Finset.mul_sum, gramF_cast]
    rw [he]
    exact sqrt_scaled_le (wq_le h.2 w)

/-- A globally glued chart, retaining equality to every local chart in the closed ball. -/
structure BallChart (B : EBallD) (r : ℕ) {ι : Type*} (D : ι → EBoxD) (C : ∀ i, BoxChart B (D i)) where
  Q : (Fin 4 → ℝ) → RMat6
  continuous : ContinuousOn Q {w | wnorm w ≤ rn r}
  local_eq : ∀ i w, wnorm w ≤ rn r → ∀ hw : w ∈ boxRegion (D i),
    Q w = (C i).Q ⟨localOf (D i) w, hw⟩

theorem exists_ballChart {ι : Type*} [Finite ι] (B : EBallD) (r : ℕ) (D : ι → EBoxD)
    (hk : ∀ i, coreOK B (D i) = true) (C : ∀ i, BoxChart B (D i))
    (hcover : ∀ w, wnorm w ≤ rn r → ∃ i, w ∈ boxRegion (D i))
    (hover : ∀ i j w, wnorm w ≤ rn r → w ∈ boxRegion (D i) → w ∈ boxRegion (D j) → overlapOK (D i) (D j) = true) :
    Nonempty (BallChart B r D C) := by
  classical
  obtain ⟨Q, hc, hq⟩ := glue_boxCharts B D hk C {w | wnorm w ≤ rn r} hcover hover
  let Q' := fun w => if h : wnorm w ≤ rn r then Q ⟨w, h⟩ else 0
  refine ⟨⟨Q', ?_, ?_⟩⟩
  · rw [continuousOn_iff_continuous_restrict]
    apply hc.congr
    intro w
    change Q w = Q' w.1
    have hw : wnorm w.1 ≤ rn r := w.2
    simp only [Q']
    rw [dif_pos hw]
  · intro i w hw hi
    exact (show Q' w = Q ⟨w, hw⟩ by simp only [Q', dif_pos hw]).trans (hq i ⟨w, hw⟩ hi)

/-- The selected global chart is public so boundary proofs use the same function as the certificate. -/
def assembledChart {ι : Type*} [Finite ι] (B : EBallD) (R : EnclosureD) (r : ℕ)
    (X : ι → FullBoxD) (hx : ∀ i, fullBox B R Fourier.frame Fourier.fq (X i) = true)
    (hcover : ∀ w, wnorm w ≤ rn r → ∃ i, w ∈ boxRegion (X i).box)
    (hover : ∀ i j w, wnorm w ≤ rn r → w ∈ boxRegion (X i).box → w ∈ boxRegion (X j).box →
      overlapOK (X i).box (X j).box = true) :
    BallChart B r (fun i => (X i).box) (fun i => (X i).chart (hx i)) :=
  Classical.choice (exists_ballChart B r (fun i => (X i).box)
    (fun i => (fullBox_sound (hx i)).core) (fun i => (X i).chart (hx i)) hcover hover)

set_option maxHeartbeats 2000000 in
/-- A finite compatible cover of fully checked boxes supplies every field of the edge ball.
The exclusion theorem is the independent return-X input; all geometric fields come from kernel checks. -/
def assemble {ι : Type*} [Finite ι] (B : EBallD) (R : EnclosureD) (r t lam : ℕ)
    (X : ι → FullBoxD) (hx : ∀ i, fullBox B R Fourier.frame Fourier.fq (X i) = true)
    (hframe : enclosureFrameOK R t lam = true) (hg : graphImageOK B = true)
    (hcover : ∀ w, wnorm w ≤ rn r → ∃ i, w ∈ boxRegion (X i).box)
    (hinterior : ∀ w, wnorm w < rn r → ∃ i,
      {u | Seed.InBox (X i).box.hb u} ∈ 𝓝 (localOf (X i).box w))
    (hover : ∀ i j w, wnorm w ≤ rn r → w ∈ boxRegion (X i).box → w ∈ boxRegion (X j).box →
      overlapOK (X i).box (X j).box = true)
    {ρ : ℝ} (hρ : rn B.nX/36 ≤ ρ) (hX : XExclusion ρ) : EdgeX.EdgeBallCert := by
  let C : ∀ i, BoxChart B (X i).box := fun i => (X i).chart (hx i)
  let G : BallChart B r (fun i => (X i).box) C := assembledChart B R r X hx hcover hover
  clear_value G C
  have hbounds := enclosureFrame_sound hframe
  refine {
    r := rn r, Q := G.Q, P := R.Pm, U := R.Um, n := rn R.n, t := rn t, lamF := rn lam
    ht0 := rn_nonneg _, hF0 := rn_nonneg _, hcol := hbounds.1, hfrob := hbounds.2
    hC1e := ?_, hcont := G.continuous, ρ := ρ, exclusion := hX, hX := ?_
    PF := F6phase, TF := Fourier.frame.toR, σF := 17/10
    hσF := Fourier.normal_bound, RG := 9/20, hRG := graph_radius, hG := ?_
    eta := frameEta Fourier.frame Fourier.fq, heta := frameEta_normal Fourier.frame_checked
    hopen := ?_
  }
  · intro w hw
    obtain ⟨i, hi⟩ := hcover w hw
    rw [G.local_eq i w hw hi]
    have h := fullBox_sound (hx i)
    refine ⟨(C i).hadamard h.core h.label _, R.Nm, ?_⟩
    have he := enclosureOK_sound (B := B) (D := (X i).box) (R := R)
      (Q := (C i).Q ⟨localOf (X i).box w, hi⟩) h.enclosure hi ((C i).q_models ⟨localOf (X i).box w, hi⟩)
    rwa [ewOf_localOf] at he
  · intro w hw
    obtain ⟨i, hi⟩ := hcover w hw
    refine ⟨0, ?_⟩
    have hz : wind (0 : Matrix I6 I6 ℤ) = 0 := by ext a b; simp [wind, Matrix.map_apply]
    rw [hz, add_zero]
    rw [G.local_eq i w hw hi]
    exact (image_bound (h := (X i).box.hb) (L := qModels B (X i).box)
      (Q := (C i).Q ⟨localOf (X i).box w, hi⟩)
      hi ((C i).q_models _) (fullBox_sound (hx i)).image).trans hρ
  · intro w hw
    obtain ⟨i, hi⟩ := hcover w hw
    rw [G.local_eq i w hw hi]
    exact graphImageOK_sound hg (fullBox_sound (hx i)).image hi ((C i).q_models _)
  · intro w hw
    obtain ⟨i, hi⟩ := hinterior w hw
    have h := fullBox_sound (hx i)
    apply open_of_local_chart (C i) h.core Fourier.frame Fourier.fq Fourier.frame_checked F6phase
      (X i).derivativeP h.diffH h.diffV h.slope G.Q ?_ ?_ hw hi
    · exact isOpen_lt continuous_wnorm continuous_const
    · intro v hv hvb
      exact G.local_eq i v hv.le hvb

lemma assemble_Q {ι : Type*} [Finite ι] (B : EBallD) (R : EnclosureD) (r t lam : ℕ)
    (X : ι → FullBoxD) (hx : ∀ i, fullBox B R Fourier.frame Fourier.fq (X i) = true)
    (hframe : enclosureFrameOK R t lam = true) (hg : graphImageOK B = true)
    (hcover : ∀ w, wnorm w ≤ rn r → ∃ i, w ∈ boxRegion (X i).box)
    (hinterior : ∀ w, wnorm w < rn r → ∃ i,
      {u | Seed.InBox (X i).box.hb u} ∈ 𝓝 (localOf (X i).box w))
    (hover : ∀ i j w, wnorm w ≤ rn r → w ∈ boxRegion (X i).box → w ∈ boxRegion (X j).box →
      overlapOK (X i).box (X j).box = true)
    {ρ : ℝ} (hρ : rn B.nX/36 ≤ ρ) (hX : XExclusion ρ) :
    (assemble B R r t lam X hx hframe hg hcover hinterior hover hρ hX).Q =
      (assembledChart B R r X hx hcover hover).Q := rfl

end NoFourMUBs.KernelAtlas.Edge
