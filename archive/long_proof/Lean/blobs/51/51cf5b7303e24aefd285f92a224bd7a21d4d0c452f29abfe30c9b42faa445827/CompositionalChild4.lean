import SquareConcretePhaseChecksNoInit
import Mathlib.Tactic.FinCases

/- Source-only candidate. Leaf arithmetic is checked separately; all32
literal masks are composed through the existing coveredCell_split theorem.
No whole-tape reduction or new arithmetic predicate is used. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
open Seed0024ClusterTubeCover20261007
namespace Seed0024ClusterTube20261007.CompositionalChild4

theorem covered_reject (s : Cell) (j : Fin 6) (hv : Valid s)
    (hc : squareConcretePhaseChecks.reject s j=true) :
    CoveredCell ClosedPhaseDomain phaseCentreLabel s := by
  intro theta ht hf
  exact False.elim (squareConcretePhaseChecks_sound.rejection s j theta hv ht hc hf)

theorem covered_accept (s : Cell) (k : Fin 48) (hv : Valid s)
    (hc : squareConcretePhaseChecks.accept s k=true) :
    CoveredCell ClosedPhaseDomain phaseCentreLabel s := by
  intro theta ht hf
  exact ⟨k,squareConcretePhaseChecks_sound.inclusion s k theta hv ht hc⟩

abbrev cell5 : Cell := childCell (ordinalCell 2241383) 4

abbrev cell6 : Cell := childCell (childCell (ordinalCell 2241383) 4) 0

theorem covered6 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell6 := by
  apply covered_reject cell6 1
  · decide +kernel
  · decide +kernel

abbrev cell7 : Cell := childCell (childCell (ordinalCell 2241383) 4) 1

theorem covered7 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell7 := by
  apply covered_reject cell7 1
  · decide +kernel
  · decide +kernel

abbrev cell8 : Cell := childCell (childCell (ordinalCell 2241383) 4) 2

theorem covered8 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell8 := by
  apply covered_reject cell8 1
  · decide +kernel
  · decide +kernel

abbrev cell9 : Cell := childCell (childCell (ordinalCell 2241383) 4) 3

theorem covered9 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell9 := by
  apply covered_accept cell9 0
  · decide +kernel
  · decide +kernel

abbrev cell10 : Cell := childCell (childCell (ordinalCell 2241383) 4) 4

theorem covered10 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell10 := by
  apply covered_reject cell10 1
  · decide +kernel
  · decide +kernel

abbrev cell11 : Cell := childCell (childCell (ordinalCell 2241383) 4) 5

theorem covered11 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell11 := by
  apply covered_reject cell11 1
  · decide +kernel
  · decide +kernel

abbrev cell12 : Cell := childCell (childCell (ordinalCell 2241383) 4) 6

theorem covered12 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell12 := by
  apply covered_reject cell12 1
  · decide +kernel
  · decide +kernel

abbrev cell13 : Cell := childCell (childCell (ordinalCell 2241383) 4) 7

theorem covered13 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell13 := by
  apply covered_reject cell13 1
  · decide +kernel
  · decide +kernel

abbrev cell14 : Cell := childCell (childCell (ordinalCell 2241383) 4) 8

theorem covered14 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell14 := by
  apply covered_reject cell14 1
  · decide +kernel
  · decide +kernel

abbrev cell15 : Cell := childCell (childCell (ordinalCell 2241383) 4) 9

theorem covered15 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell15 := by
  apply covered_reject cell15 1
  · decide +kernel
  · decide +kernel

abbrev cell16 : Cell := childCell (childCell (ordinalCell 2241383) 4) 10

theorem covered16 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell16 := by
  apply covered_reject cell16 1
  · decide +kernel
  · decide +kernel

abbrev cell17 : Cell := childCell (childCell (ordinalCell 2241383) 4) 11

theorem covered17 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell17 := by
  apply covered_reject cell17 1
  · decide +kernel
  · decide +kernel

abbrev cell18 : Cell := childCell (childCell (ordinalCell 2241383) 4) 12

theorem covered18 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell18 := by
  apply covered_reject cell18 1
  · decide +kernel
  · decide +kernel

abbrev cell19 : Cell := childCell (childCell (ordinalCell 2241383) 4) 13

theorem covered19 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell19 := by
  apply covered_reject cell19 1
  · decide +kernel
  · decide +kernel

abbrev cell20 : Cell := childCell (childCell (ordinalCell 2241383) 4) 14

theorem covered20 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell20 := by
  apply covered_reject cell20 1
  · decide +kernel
  · decide +kernel

abbrev cell21 : Cell := childCell (childCell (ordinalCell 2241383) 4) 15

theorem covered21 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell21 := by
  apply covered_reject cell21 1
  · decide +kernel
  · decide +kernel

abbrev cell22 : Cell := childCell (childCell (ordinalCell 2241383) 4) 16

theorem covered22 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell22 := by
  apply covered_reject cell22 1
  · decide +kernel
  · decide +kernel

abbrev cell23 : Cell := childCell (childCell (ordinalCell 2241383) 4) 17

theorem covered23 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell23 := by
  apply covered_accept cell23 0
  · decide +kernel
  · decide +kernel

abbrev cell24 : Cell := childCell (childCell (ordinalCell 2241383) 4) 18

theorem covered24 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell24 := by
  apply covered_accept cell24 0
  · decide +kernel
  · decide +kernel

abbrev cell25 : Cell := childCell (childCell (ordinalCell 2241383) 4) 19

theorem covered25 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell25 := by
  apply covered_accept cell25 0
  · decide +kernel
  · decide +kernel

abbrev cell26 : Cell := childCell (childCell (ordinalCell 2241383) 4) 20

theorem covered26 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell26 := by
  apply covered_reject cell26 1
  · decide +kernel
  · decide +kernel

abbrev cell27 : Cell := childCell (childCell (ordinalCell 2241383) 4) 21

theorem covered27 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell27 := by
  apply covered_accept cell27 0
  · decide +kernel
  · decide +kernel

abbrev cell28 : Cell := childCell (childCell (ordinalCell 2241383) 4) 22

theorem covered28 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell28 := by
  apply covered_reject cell28 1
  · decide +kernel
  · decide +kernel

abbrev cell29 : Cell := childCell (childCell (ordinalCell 2241383) 4) 23

theorem covered29 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell29 := by
  apply covered_reject cell29 4
  · decide +kernel
  · decide +kernel

abbrev cell30 : Cell := childCell (childCell (ordinalCell 2241383) 4) 24

theorem covered30 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell30 := by
  apply covered_reject cell30 1
  · decide +kernel
  · decide +kernel

abbrev cell31 : Cell := childCell (childCell (ordinalCell 2241383) 4) 25

theorem covered31 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell31 := by
  apply covered_reject cell31 1
  · decide +kernel
  · decide +kernel

abbrev cell32 : Cell := childCell (childCell (ordinalCell 2241383) 4) 26

theorem covered32 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell32 := by
  apply covered_reject cell32 1
  · decide +kernel
  · decide +kernel

abbrev cell33 : Cell := childCell (childCell (ordinalCell 2241383) 4) 27

theorem covered33 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell33 := by
  apply covered_accept cell33 0
  · decide +kernel
  · decide +kernel

abbrev cell34 : Cell := childCell (childCell (ordinalCell 2241383) 4) 28

theorem covered34 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell34 := by
  apply covered_reject cell34 1
  · decide +kernel
  · decide +kernel

abbrev cell35 : Cell := childCell (childCell (ordinalCell 2241383) 4) 29

theorem covered35 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell35 := by
  apply covered_reject cell35 1
  · decide +kernel
  · decide +kernel

abbrev cell36 : Cell := childCell (childCell (ordinalCell 2241383) 4) 30

theorem covered36 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell36 := by
  apply covered_reject cell36 1
  · decide +kernel
  · decide +kernel

abbrev cell37 : Cell := childCell (childCell (ordinalCell 2241383) 4) 31

theorem covered37 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell37 := by
  apply covered_reject cell37 1
  · decide +kernel
  · decide +kernel

theorem covered5 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell5 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered6
  · exact covered7
  · exact covered8
  · exact covered9
  · exact covered10
  · exact covered11
  · exact covered12
  · exact covered13
  · exact covered14
  · exact covered15
  · exact covered16
  · exact covered17
  · exact covered18
  · exact covered19
  · exact covered20
  · exact covered21
  · exact covered22
  · exact covered23
  · exact covered24
  · exact covered25
  · exact covered26
  · exact covered27
  · exact covered28
  · exact covered29
  · exact covered30
  · exact covered31
  · exact covered32
  · exact covered33
  · exact covered34
  · exact covered35
  · exact covered36
  · exact covered37

end Seed0024ClusterTube20261007.CompositionalChild4

#print axioms Seed0024ClusterTube20261007.CompositionalChild4.covered_reject
#print axioms Seed0024ClusterTube20261007.CompositionalChild4.covered_accept
#print axioms Seed0024ClusterTube20261007.CompositionalChild4.covered5
