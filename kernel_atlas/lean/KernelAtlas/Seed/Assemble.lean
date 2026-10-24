import KernelAtlas.Seed.Boundary
import KernelAtlas.Seed.Frame
import KernelAtlas.Seed.StageC

/-!
# Small lemmas for the generated per-ball modules (`seed_kball.py`)
-/

namespace NoFourMUBs.KernelAtlas.Seed

/-- The C1 boxes listed for the ball cover are the `BoxD`s of the C1 checks (checked pairwise). -/
lemma hmatch_of_zip {r : ℕ} {Ls : List Bx} {boxes : List BoxD}
    (h : ((Ls.zip boxes).all fun p => decide (r % 2 ^ p.1.m = 0) && decide (p.2.wc = p.1.wcZ r) &&
      decide (p.2.hb = p.1.hbN r)) = true ∧ Ls.length = boxes.length) :
    ∀ b ∈ Ls, r % 2 ^ b.m = 0 ∧ ∃ D ∈ boxes, D.wc = b.wcZ r ∧ D.hb = b.hbN r := by
  obtain ⟨hall, hlen⟩ := h
  intro b hb
  obtain ⟨i, hi, rfl⟩ := List.getElem_of_mem hb
  have hi' : i < boxes.length := hlen ▸ hi
  have hmem : (Ls[i], boxes[i]) ∈ Ls.zip boxes := by
    rw [List.mem_iff_getElem]
    exact ⟨i, by simp [hi, hi'], by simp⟩
  have := List.all_eq_true.1 hall _ hmem
  simp only [Bool.and_eq_true, decide_eq_true_eq] at this
  exact ⟨this.1.1, boxes[i], List.getElem_mem _, this.1.2, this.2⟩

end NoFourMUBs.KernelAtlas.Seed
