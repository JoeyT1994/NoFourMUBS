import KarlssonSeamSymmetry

import KarlssonCertificateReuse

import KarlssonConditionedManifest0Bits24

set_option autoImplicit false

set_option maxHeartbeats 4000000

set_option maxRecDepth 32768

namespace KarlssonCanonicalRootQueue

open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonLedger Mub6.Classification.KarlssonCover

open Mub6.Classification.KarlssonSeamSymmetry Mub6.Numerical.GraphKernel

noncomputable section

abbrev j0 : Job := ⟨.raw (.regular,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j1 : Job := ⟨.raw (.regular,true),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j2 : Job := ⟨.raw (.singularAInput,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j3 : Job := ⟨.raw (.singularAInput,true),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j4 : Job := ⟨.raw (.singularAOutput,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j5 : Job := ⟨.raw (.singularAOutput,true),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j6 : Job := ⟨.raw (.singularBInput,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j7 : Job := ⟨.raw (.singularBInput,true),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j8 : Job := ⟨.raw (.singularBOutput,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j9 : Job := ⟨.raw (.singularBOutput,true),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j10 : Job := ⟨.seam (false,false,false,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j11 : Job := ⟨.seam (false,false,false,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j12 : Job := ⟨.seam (false,false,true,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j13 : Job := ⟨.seam (false,false,true,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j14 : Job := ⟨.seam (false,true,false,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j15 : Job := ⟨.seam (false,true,false,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j16 : Job := ⟨.seam (false,true,true,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j17 : Job := ⟨.seam (false,true,true,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j18 : Job := ⟨.seam (true,false,false,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j19 : Job := ⟨.seam (true,false,false,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j20 : Job := ⟨.seam (true,false,true,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j21 : Job := ⟨.seam (true,false,true,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j22 : Job := ⟨.seam (true,true,false,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j23 : Job := ⟨.seam (true,true,false,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j24 : Job := ⟨.seam (true,true,true,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev j25 : Job := ⟨.seam (true,true,true,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

/-- Reuse an entire checked adaptive tree, retaining the original seam root. -/
def reuse_seam_tree (label : SeamLabel) (bounds : Fin 2 → Interval)
    (tree : Tree ⟨.seam canonicalLabel,bounds⟩) : Tree ⟨.seam label,bounds⟩ :=
  .rechart _ _ (seam_job_canonical_covers label bounds) tree

theorem reuse_seam_frontier (label : SeamLabel) (bounds : Fin 2 → Interval)
    (tree : Tree ⟨.seam canonicalLabel,bounds⟩) :
    (reuse_seam_tree label bounds tree).frontier=tree.frontier := rfl

def assemble (t0 : Tree j0) (t1 : Tree j1) (t2 : Tree j2) (t3 : Tree j3) (t4 : Tree j4) (t5 : Tree j5) (t6 : Tree j6) (t7 : Tree j7) (t8 : Tree j8) (t9 : Tree j9) (t10 : Tree j10) : ForestOn roots := ForestOn.cons t0 (ForestOn.cons t1 (ForestOn.cons t2 (ForestOn.cons t3 (ForestOn.cons t4 (ForestOn.cons t5 (ForestOn.cons t6 (ForestOn.cons t7 (ForestOn.cons t8 (ForestOn.cons t9 (ForestOn.cons (reuse_seam_tree (false,false,false,false) j10.bounds t10) (ForestOn.cons (reuse_seam_tree (false,false,false,true) j11.bounds t10) (ForestOn.cons (reuse_seam_tree (false,false,true,false) j12.bounds t10) (ForestOn.cons (reuse_seam_tree (false,false,true,true) j13.bounds t10) (ForestOn.cons (reuse_seam_tree (false,true,false,false) j14.bounds t10) (ForestOn.cons (reuse_seam_tree (false,true,false,true) j15.bounds t10) (ForestOn.cons (reuse_seam_tree (false,true,true,false) j16.bounds t10) (ForestOn.cons (reuse_seam_tree (false,true,true,true) j17.bounds t10) (ForestOn.cons (reuse_seam_tree (true,false,false,false) j18.bounds t10) (ForestOn.cons (reuse_seam_tree (true,false,false,true) j19.bounds t10) (ForestOn.cons (reuse_seam_tree (true,false,true,false) j20.bounds t10) (ForestOn.cons (reuse_seam_tree (true,false,true,true) j21.bounds t10) (ForestOn.cons (reuse_seam_tree (true,true,false,false) j22.bounds t10) (ForestOn.cons (reuse_seam_tree (true,true,false,true) j23.bounds t10) (ForestOn.cons (reuse_seam_tree (true,true,true,false) j24.bounds t10) (ForestOn.cons (reuse_seam_tree (true,true,true,true) j25.bounds t10) (ForestOn.nil))))))))))))))))))))))))))

def forest : ForestOn roots := assemble (Tree.pending j0) (Tree.pending j1) (Tree.pending j2) (Tree.pending j3) (Tree.pending j4) (Tree.pending j5) (Tree.pending j6) (Tree.pending j7) (Tree.pending j8) (Tree.pending j9) (Tree.pending j10)

theorem literal_frontier : forest.frontier=[j0,j1,j2,j3,j4,j5,j6,j7,j8,j9,j10,j10,j10,j10,j10,j10,j10,j10,j10,j10,j10,j10,j10,j10,j10,j10] := rfl

theorem retained_root_count : roots.length=26 := root_count

theorem pending_path_count : forest.frontier.length=26 := rfl

def representatives : List Job := [j0,j1,j2,j3,j4,j5,j6,j7,j8,j9,j10]

theorem representative_count : representatives.length=11 := rfl

theorem every_frontier_job {j : Job} (hj : j ∈ forest.frontier) :
    j ∈ representatives := by
  rw [literal_frontier] at hj
  simpa only [representatives,List.mem_cons,List.mem_singleton,or_self] using hj

theorem physical_job_cover {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ j ∈ representatives, Live j := by
  obtain ⟨j,hj,hLive⟩ := serialized_forest_cover forest hH h₂
  exact ⟨j,every_frontier_job hj,hLive⟩

theorem closure_from_representatives
    (closed : ∀ j ∈ representatives, ¬ Live j)
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) : False := by
  obtain ⟨j,hj,hLive⟩ := physical_job_cover hH h₂
  exact closed j hj hLive

def carriers : List CarrierRegion := [KarlssonConditionedCella80d9290da6eda19.carrier,KarlssonConditionedCelld1b4b95866a8997a.carrier,KarlssonConditionedCellb63f6cdf201602a2.carrier,KarlssonConditionedCelle2b4c571f4eafc9b.carrier,KarlssonConditionedCellad3fe71ac2a31c3d.carrier]

theorem carrier_work_item_count : carriers.length=5 := rfl

theorem enclosure_0 : Encloses j0 KarlssonConditionedCella80d9290da6eda19.carrier := by
  change Encloses (rawJob KarlssonConditionedCella80d9290da6eda19.input) KarlssonConditionedCella80d9290da6eda19.carrier
  exact raw_output_encloses _ KarlssonConditionedCella80d9290da6eda19.sqrt_valid _ KarlssonConditionedCella80d9290da6eda19.output_valid

theorem carrier_binding_0 : KarlssonConditionedCella80d9290da6eda19.carrier = KarlssonConditionedCella80d9290da6eda19.carrier := rfl

theorem enclosure_1 : Encloses j1 KarlssonConditionedCell5a0de2bc145c20b5.carrier := by
  change Encloses (rawJob KarlssonConditionedCell5a0de2bc145c20b5.input) KarlssonConditionedCell5a0de2bc145c20b5.carrier
  exact raw_output_encloses _ KarlssonConditionedCell5a0de2bc145c20b5.sqrt_valid _ KarlssonConditionedCell5a0de2bc145c20b5.output_valid

theorem carrier_binding_1 : KarlssonConditionedCell5a0de2bc145c20b5.carrier = KarlssonConditionedCella80d9290da6eda19.carrier := rfl

theorem enclosure_2 : Encloses j2 KarlssonConditionedCelld1b4b95866a8997a.carrier := by
  change Encloses (rawJob KarlssonConditionedCelld1b4b95866a8997a.input) KarlssonConditionedCelld1b4b95866a8997a.carrier
  exact raw_output_encloses _ KarlssonConditionedCelld1b4b95866a8997a.sqrt_valid _ KarlssonConditionedCelld1b4b95866a8997a.output_valid

theorem carrier_binding_2 : KarlssonConditionedCelld1b4b95866a8997a.carrier = KarlssonConditionedCelld1b4b95866a8997a.carrier := rfl

theorem enclosure_3 : Encloses j3 KarlssonConditionedCellf68adeab26c573db.carrier := by
  change Encloses (rawJob KarlssonConditionedCellf68adeab26c573db.input) KarlssonConditionedCellf68adeab26c573db.carrier
  exact raw_output_encloses _ KarlssonConditionedCellf68adeab26c573db.sqrt_valid _ KarlssonConditionedCellf68adeab26c573db.output_valid

theorem carrier_binding_3 : KarlssonConditionedCellf68adeab26c573db.carrier = KarlssonConditionedCelld1b4b95866a8997a.carrier := rfl

theorem enclosure_4 : Encloses j4 KarlssonConditionedCellb63f6cdf201602a2.carrier := by
  change Encloses (rawJob KarlssonConditionedCellb63f6cdf201602a2.input) KarlssonConditionedCellb63f6cdf201602a2.carrier
  exact raw_output_encloses _ KarlssonConditionedCellb63f6cdf201602a2.sqrt_valid _ KarlssonConditionedCellb63f6cdf201602a2.output_valid

theorem carrier_binding_4 : KarlssonConditionedCellb63f6cdf201602a2.carrier = KarlssonConditionedCellb63f6cdf201602a2.carrier := rfl

theorem enclosure_5 : Encloses j5 KarlssonConditionedCell55b1b83ba927c786.carrier := by
  change Encloses (rawJob KarlssonConditionedCell55b1b83ba927c786.input) KarlssonConditionedCell55b1b83ba927c786.carrier
  exact raw_output_encloses _ KarlssonConditionedCell55b1b83ba927c786.sqrt_valid _ KarlssonConditionedCell55b1b83ba927c786.output_valid

theorem carrier_binding_5 : KarlssonConditionedCell55b1b83ba927c786.carrier = KarlssonConditionedCellb63f6cdf201602a2.carrier := rfl

theorem enclosure_6 : Encloses j6 KarlssonConditionedCell178264642840b610.carrier := by
  change Encloses (rawJob KarlssonConditionedCell178264642840b610.input) KarlssonConditionedCell178264642840b610.carrier
  exact raw_output_encloses _ KarlssonConditionedCell178264642840b610.sqrt_valid _ KarlssonConditionedCell178264642840b610.output_valid

theorem carrier_binding_6 : KarlssonConditionedCell178264642840b610.carrier = KarlssonConditionedCelld1b4b95866a8997a.carrier := rfl

theorem enclosure_7 : Encloses j7 KarlssonConditionedCelle34647e6c017bbc1.carrier := by
  change Encloses (rawJob KarlssonConditionedCelle34647e6c017bbc1.input) KarlssonConditionedCelle34647e6c017bbc1.carrier
  exact raw_output_encloses _ KarlssonConditionedCelle34647e6c017bbc1.sqrt_valid _ KarlssonConditionedCelle34647e6c017bbc1.output_valid

theorem carrier_binding_7 : KarlssonConditionedCelle34647e6c017bbc1.carrier = KarlssonConditionedCelld1b4b95866a8997a.carrier := rfl

theorem enclosure_8 : Encloses j8 KarlssonConditionedCelle2b4c571f4eafc9b.carrier := by
  change Encloses (rawJob KarlssonConditionedCelle2b4c571f4eafc9b.input) KarlssonConditionedCelle2b4c571f4eafc9b.carrier
  exact raw_output_encloses _ KarlssonConditionedCelle2b4c571f4eafc9b.sqrt_valid _ KarlssonConditionedCelle2b4c571f4eafc9b.output_valid

theorem carrier_binding_8 : KarlssonConditionedCelle2b4c571f4eafc9b.carrier = KarlssonConditionedCelle2b4c571f4eafc9b.carrier := rfl

theorem enclosure_9 : Encloses j9 KarlssonConditionedCellae19dccf3d6ecff0.carrier := by
  change Encloses (rawJob KarlssonConditionedCellae19dccf3d6ecff0.input) KarlssonConditionedCellae19dccf3d6ecff0.carrier
  exact raw_output_encloses _ KarlssonConditionedCellae19dccf3d6ecff0.sqrt_valid _ KarlssonConditionedCellae19dccf3d6ecff0.output_valid

theorem carrier_binding_9 : KarlssonConditionedCellae19dccf3d6ecff0.carrier = KarlssonConditionedCelle2b4c571f4eafc9b.carrier := rfl

theorem enclosure_10 : Encloses j10 KarlssonConditionedCellad3fe71ac2a31c3d.carrier := by
  change Encloses (seamJob KarlssonConditionedCellad3fe71ac2a31c3d.input) KarlssonConditionedCellad3fe71ac2a31c3d.carrier
  exact seam_output_encloses _ KarlssonConditionedCellad3fe71ac2a31c3d.sqrt_valid _ KarlssonConditionedCellad3fe71ac2a31c3d.output_valid

theorem carrier_binding_10 : KarlssonConditionedCellad3fe71ac2a31c3d.carrier = KarlssonConditionedCellad3fe71ac2a31c3d.carrier := rfl

theorem representative_bound : ∀ j ∈ representatives, ∃ E ∈ carriers, Encloses j E := by
  intro j hj
  simp only [representatives,List.mem_cons,List.mem_singleton] at hj
  rcases hj with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10

  · subst j
    refine ⟨KarlssonConditionedCella80d9290da6eda19.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_0]
    exact enclosure_0

  · subst j
    refine ⟨KarlssonConditionedCella80d9290da6eda19.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_1]
    exact enclosure_1

  · subst j
    refine ⟨KarlssonConditionedCelld1b4b95866a8997a.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_2]
    exact enclosure_2

  · subst j
    refine ⟨KarlssonConditionedCelld1b4b95866a8997a.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_3]
    exact enclosure_3

  · subst j
    refine ⟨KarlssonConditionedCellb63f6cdf201602a2.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_4]
    exact enclosure_4

  · subst j
    refine ⟨KarlssonConditionedCellb63f6cdf201602a2.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_5]
    exact enclosure_5

  · subst j
    refine ⟨KarlssonConditionedCelld1b4b95866a8997a.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_6]
    exact enclosure_6

  · subst j
    refine ⟨KarlssonConditionedCelld1b4b95866a8997a.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_7]
    exact enclosure_7

  · subst j
    refine ⟨KarlssonConditionedCelle2b4c571f4eafc9b.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_8]
    exact enclosure_8

  · subst j
    refine ⟨KarlssonConditionedCelle2b4c571f4eafc9b.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_9]
    exact enclosure_9

  · subst j
    refine ⟨KarlssonConditionedCellad3fe71ac2a31c3d.carrier, by simp [carriers], ?_⟩
    rw [← carrier_binding_10]
    exact enclosure_10

theorem frontier_bound : ∀ j ∈ forest.frontier, ∃ E ∈ carriers, Encloses j E :=
  fun j hj => representative_bound j (every_frontier_job hj)

theorem all_first_rows : ∀ E ∈ carriers, StandardFirstRow E := by
  intro E hE
  simp only [carriers,List.mem_cons,List.mem_singleton] at hE
  rcases hE with h0 | h1 | h2 | h3 | h4

  · subst E; intro j; fin_cases j <;> rfl

  · subst E; intro j; fin_cases j <;> rfl

  · subst E; intro j; fin_cases j <;> rfl

  · subst E; intro j; fin_cases j <;> rfl

  · subst E; intro j; fin_cases j <;> rfl

theorem physical_cover {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6, OccursAsQuartetEdge (normalized K) ∧
      ∃ E ∈ carriers, CarrierBox E (ClassificationCover.toNumerical K) :=
  exported_ledger_cover forest carriers frontier_bound hH h₂

theorem accept_reused_certificate {n : ℕ} {j : Job} {inner outer : CarrierRegion}
    (houter : outer ∈ carriers) (hencl : Encloses j inner)
    (hsub : CarrierSubregion inner outer) (cert : LocalCertificate n)
    (hcheck : checkLocal outer cert=true) : ¬ Live j :=
  checked_carrier_reuse hencl hsub cert hcheck (all_first_rows outer houter)

theorem closure_from_carriers (closed : ∀ E ∈ carriers, CarrierExcluded E)
    {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) : False := by
  obtain ⟨K,hK,E,hE,hbox⟩ := physical_cover hH h₂
  exact closed E hE K (normalized_occurs_hadamard hK) hbox hK

#print axioms reuse_seam_frontier

#print axioms literal_frontier

#print axioms retained_root_count

#print axioms pending_path_count

#print axioms representative_count

#print axioms every_frontier_job

#print axioms physical_job_cover

#print axioms closure_from_representatives

#print axioms carrier_work_item_count

#print axioms representative_bound

#print axioms frontier_bound

#print axioms all_first_rows

#print axioms physical_cover

#print axioms accept_reused_certificate

#print axioms closure_from_carriers

end

end KarlssonCanonicalRootQueue
