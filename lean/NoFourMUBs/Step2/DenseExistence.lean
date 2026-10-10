import NoFourMUBs.Step2.Statements

/-!
# Matched existence from a dense set of seeds

The matched relation is closed and the space of order-six Hadamards is compact, so the set of strict seeds
that admit a matched completion is closed (projection along a compact factor is a closed map).  Hence matched
existence on any dense set of strict seeds gives `MatchedExistence` (the limit argument of
`MinimalConstruction/Proofs/MATCHED_FLATNESS.md` §3).
-/

open Set Hadamard6

namespace NoFourMUBs.Step2

/-- The seeds admitting a matched completion form a closed set. -/
theorem isClosed_matchedSeeds : IsClosed {s : StrictSeed | ∃ H : Had6, Matched s H} := by
  have : {s : StrictSeed | ∃ H : Had6, Matched s H} = Prod.fst '' {z : StrictSeed × Had6 | Matched z.1 z.2} := by
    ext s; constructor
    · rintro ⟨H, hH⟩; exact ⟨(s, H), hH, rfl⟩
    · rintro ⟨⟨s', H⟩, hH, rfl⟩; exact ⟨H, hH⟩
  rw [this]
  exact isClosedMap_fst_of_compactSpace _ isClosed_matched

/-- **L1 reduces to a dense set of strict seeds.** -/
theorem matchedExistence_of_dense {S : Set StrictSeed} (hS : Dense S) (h : ∀ s ∈ S, ∃ H : Had6, Matched s H) :
    MatchedExistence := by
  intro s
  have hsub : S ⊆ {s : StrictSeed | ∃ H : Had6, Matched s H} := fun s hs => h s hs
  have := (isClosed_matchedSeeds.closure_subset_iff.mpr hsub) (hS s)
  exact this

end NoFourMUBs.Step2
