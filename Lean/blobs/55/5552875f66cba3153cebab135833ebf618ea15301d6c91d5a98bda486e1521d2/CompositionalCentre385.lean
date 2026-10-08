import SquareConcretePhaseChecksNoInit
import Mathlib.Tactic.FinCases

/- Source-only candidate. Leaf arithmetic is checked separately; all32
literal masks are composed through the existing coveredCell_split theorem.
No whole-tape reduction or new arithmetic predicate is used. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
open Seed0024ClusterTubeCover20261007
namespace Seed0024ClusterTube20261007.CompositionalCentre385

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

abbrev cell0 : Cell := ordinalCell 2241383

abbrev cell1 : Cell := childCell (ordinalCell 2241383) 0

theorem covered1 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell1 := by
  apply covered_accept cell1 0
  · decide +kernel
  · decide +kernel

abbrev cell2 : Cell := childCell (ordinalCell 2241383) 1

theorem covered2 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell2 := by
  apply covered_accept cell2 0
  · decide +kernel
  · decide +kernel

abbrev cell3 : Cell := childCell (ordinalCell 2241383) 2

theorem covered3 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell3 := by
  apply covered_accept cell3 0
  · decide +kernel
  · decide +kernel

abbrev cell4 : Cell := childCell (ordinalCell 2241383) 3

theorem covered4 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell4 := by
  apply covered_accept cell4 0
  · decide +kernel
  · decide +kernel

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

abbrev cell38 : Cell := childCell (ordinalCell 2241383) 5

theorem covered38 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell38 := by
  apply covered_accept cell38 0
  · decide +kernel
  · decide +kernel

abbrev cell39 : Cell := childCell (ordinalCell 2241383) 6

abbrev cell40 : Cell := childCell (childCell (ordinalCell 2241383) 6) 0

theorem covered40 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell40 := by
  apply covered_reject cell40 1
  · decide +kernel
  · decide +kernel

abbrev cell41 : Cell := childCell (childCell (ordinalCell 2241383) 6) 1

theorem covered41 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell41 := by
  apply covered_reject cell41 4
  · decide +kernel
  · decide +kernel

abbrev cell42 : Cell := childCell (childCell (ordinalCell 2241383) 6) 2

theorem covered42 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell42 := by
  apply covered_reject cell42 4
  · decide +kernel
  · decide +kernel

abbrev cell43 : Cell := childCell (childCell (ordinalCell 2241383) 6) 3

theorem covered43 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell43 := by
  apply covered_reject cell43 4
  · decide +kernel
  · decide +kernel

abbrev cell44 : Cell := childCell (childCell (ordinalCell 2241383) 6) 4

theorem covered44 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell44 := by
  apply covered_reject cell44 1
  · decide +kernel
  · decide +kernel

abbrev cell45 : Cell := childCell (childCell (ordinalCell 2241383) 6) 5

theorem covered45 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell45 := by
  apply covered_reject cell45 1
  · decide +kernel
  · decide +kernel

abbrev cell46 : Cell := childCell (childCell (ordinalCell 2241383) 6) 6

theorem covered46 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell46 := by
  apply covered_reject cell46 1
  · decide +kernel
  · decide +kernel

abbrev cell47 : Cell := childCell (childCell (ordinalCell 2241383) 6) 7

theorem covered47 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell47 := by
  apply covered_reject cell47 4
  · decide +kernel
  · decide +kernel

abbrev cell48 : Cell := childCell (childCell (ordinalCell 2241383) 6) 8

theorem covered48 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell48 := by
  apply covered_reject cell48 1
  · decide +kernel
  · decide +kernel

abbrev cell49 : Cell := childCell (childCell (ordinalCell 2241383) 6) 9

theorem covered49 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell49 := by
  apply covered_reject cell49 1
  · decide +kernel
  · decide +kernel

abbrev cell50 : Cell := childCell (childCell (ordinalCell 2241383) 6) 10

theorem covered50 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell50 := by
  apply covered_reject cell50 1
  · decide +kernel
  · decide +kernel

abbrev cell51 : Cell := childCell (childCell (ordinalCell 2241383) 6) 11

theorem covered51 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell51 := by
  apply covered_reject cell51 4
  · decide +kernel
  · decide +kernel

abbrev cell52 : Cell := childCell (childCell (ordinalCell 2241383) 6) 12

theorem covered52 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell52 := by
  apply covered_reject cell52 1
  · decide +kernel
  · decide +kernel

abbrev cell53 : Cell := childCell (childCell (ordinalCell 2241383) 6) 13

theorem covered53 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell53 := by
  apply covered_reject cell53 1
  · decide +kernel
  · decide +kernel

abbrev cell54 : Cell := childCell (childCell (ordinalCell 2241383) 6) 14

theorem covered54 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell54 := by
  apply covered_reject cell54 1
  · decide +kernel
  · decide +kernel

abbrev cell55 : Cell := childCell (childCell (ordinalCell 2241383) 6) 15

theorem covered55 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell55 := by
  apply covered_reject cell55 1
  · decide +kernel
  · decide +kernel

abbrev cell56 : Cell := childCell (childCell (ordinalCell 2241383) 6) 16

theorem covered56 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell56 := by
  apply covered_reject cell56 4
  · decide +kernel
  · decide +kernel

abbrev cell57 : Cell := childCell (childCell (ordinalCell 2241383) 6) 17

theorem covered57 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell57 := by
  apply covered_reject cell57 4
  · decide +kernel
  · decide +kernel

abbrev cell58 : Cell := childCell (childCell (ordinalCell 2241383) 6) 18

theorem covered58 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell58 := by
  apply covered_reject cell58 4
  · decide +kernel
  · decide +kernel

abbrev cell59 : Cell := childCell (childCell (ordinalCell 2241383) 6) 19

theorem covered59 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell59 := by
  apply covered_reject cell59 4
  · decide +kernel
  · decide +kernel

abbrev cell60 : Cell := childCell (childCell (ordinalCell 2241383) 6) 20

theorem covered60 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell60 := by
  apply covered_reject cell60 1
  · decide +kernel
  · decide +kernel

abbrev cell61 : Cell := childCell (childCell (ordinalCell 2241383) 6) 21

theorem covered61 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell61 := by
  apply covered_reject cell61 4
  · decide +kernel
  · decide +kernel

abbrev cell62 : Cell := childCell (childCell (ordinalCell 2241383) 6) 22

theorem covered62 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell62 := by
  apply covered_reject cell62 4
  · decide +kernel
  · decide +kernel

abbrev cell63 : Cell := childCell (childCell (ordinalCell 2241383) 6) 23

theorem covered63 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell63 := by
  apply covered_reject cell63 4
  · decide +kernel
  · decide +kernel

abbrev cell64 : Cell := childCell (childCell (ordinalCell 2241383) 6) 24

theorem covered64 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell64 := by
  apply covered_reject cell64 1
  · decide +kernel
  · decide +kernel

abbrev cell65 : Cell := childCell (childCell (ordinalCell 2241383) 6) 25

theorem covered65 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell65 := by
  apply covered_accept cell65 0
  · decide +kernel
  · decide +kernel

abbrev cell66 : Cell := childCell (childCell (ordinalCell 2241383) 6) 26

theorem covered66 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell66 := by
  apply covered_reject cell66 4
  · decide +kernel
  · decide +kernel

abbrev cell67 : Cell := childCell (childCell (ordinalCell 2241383) 6) 27

theorem covered67 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell67 := by
  apply covered_reject cell67 4
  · decide +kernel
  · decide +kernel

abbrev cell68 : Cell := childCell (childCell (ordinalCell 2241383) 6) 28

theorem covered68 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell68 := by
  apply covered_reject cell68 1
  · decide +kernel
  · decide +kernel

abbrev cell69 : Cell := childCell (childCell (ordinalCell 2241383) 6) 29

theorem covered69 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell69 := by
  apply covered_reject cell69 1
  · decide +kernel
  · decide +kernel

abbrev cell70 : Cell := childCell (childCell (ordinalCell 2241383) 6) 30

theorem covered70 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell70 := by
  apply covered_reject cell70 1
  · decide +kernel
  · decide +kernel

abbrev cell71 : Cell := childCell (childCell (ordinalCell 2241383) 6) 31

theorem covered71 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell71 := by
  apply covered_reject cell71 4
  · decide +kernel
  · decide +kernel

theorem covered39 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell39 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered40
  · exact covered41
  · exact covered42
  · exact covered43
  · exact covered44
  · exact covered45
  · exact covered46
  · exact covered47
  · exact covered48
  · exact covered49
  · exact covered50
  · exact covered51
  · exact covered52
  · exact covered53
  · exact covered54
  · exact covered55
  · exact covered56
  · exact covered57
  · exact covered58
  · exact covered59
  · exact covered60
  · exact covered61
  · exact covered62
  · exact covered63
  · exact covered64
  · exact covered65
  · exact covered66
  · exact covered67
  · exact covered68
  · exact covered69
  · exact covered70
  · exact covered71

abbrev cell72 : Cell := childCell (ordinalCell 2241383) 7

theorem covered72 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell72 := by
  apply covered_accept cell72 0
  · decide +kernel
  · decide +kernel

abbrev cell73 : Cell := childCell (ordinalCell 2241383) 8

abbrev cell74 : Cell := childCell (childCell (ordinalCell 2241383) 8) 0

theorem covered74 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell74 := by
  apply covered_reject cell74 1
  · decide +kernel
  · decide +kernel

abbrev cell75 : Cell := childCell (childCell (ordinalCell 2241383) 8) 1

theorem covered75 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell75 := by
  apply covered_reject cell75 1
  · decide +kernel
  · decide +kernel

abbrev cell76 : Cell := childCell (childCell (ordinalCell 2241383) 8) 2

theorem covered76 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell76 := by
  apply covered_reject cell76 1
  · decide +kernel
  · decide +kernel

abbrev cell77 : Cell := childCell (childCell (ordinalCell 2241383) 8) 3

theorem covered77 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell77 := by
  apply covered_accept cell77 0
  · decide +kernel
  · decide +kernel

abbrev cell78 : Cell := childCell (childCell (ordinalCell 2241383) 8) 4

theorem covered78 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell78 := by
  apply covered_reject cell78 1
  · decide +kernel
  · decide +kernel

abbrev cell79 : Cell := childCell (childCell (ordinalCell 2241383) 8) 5

theorem covered79 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell79 := by
  apply covered_reject cell79 1
  · decide +kernel
  · decide +kernel

abbrev cell80 : Cell := childCell (childCell (ordinalCell 2241383) 8) 6

theorem covered80 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell80 := by
  apply covered_reject cell80 1
  · decide +kernel
  · decide +kernel

abbrev cell81 : Cell := childCell (childCell (ordinalCell 2241383) 8) 7

theorem covered81 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell81 := by
  apply covered_reject cell81 1
  · decide +kernel
  · decide +kernel

abbrev cell82 : Cell := childCell (childCell (ordinalCell 2241383) 8) 8

theorem covered82 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell82 := by
  apply covered_reject cell82 1
  · decide +kernel
  · decide +kernel

abbrev cell83 : Cell := childCell (childCell (ordinalCell 2241383) 8) 9

theorem covered83 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell83 := by
  apply covered_reject cell83 1
  · decide +kernel
  · decide +kernel

abbrev cell84 : Cell := childCell (childCell (ordinalCell 2241383) 8) 10

theorem covered84 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell84 := by
  apply covered_reject cell84 1
  · decide +kernel
  · decide +kernel

abbrev cell85 : Cell := childCell (childCell (ordinalCell 2241383) 8) 11

theorem covered85 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell85 := by
  apply covered_reject cell85 1
  · decide +kernel
  · decide +kernel

abbrev cell86 : Cell := childCell (childCell (ordinalCell 2241383) 8) 12

theorem covered86 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell86 := by
  apply covered_reject cell86 1
  · decide +kernel
  · decide +kernel

abbrev cell87 : Cell := childCell (childCell (ordinalCell 2241383) 8) 13

theorem covered87 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell87 := by
  apply covered_reject cell87 1
  · decide +kernel
  · decide +kernel

abbrev cell88 : Cell := childCell (childCell (ordinalCell 2241383) 8) 14

theorem covered88 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell88 := by
  apply covered_reject cell88 1
  · decide +kernel
  · decide +kernel

abbrev cell89 : Cell := childCell (childCell (ordinalCell 2241383) 8) 15

theorem covered89 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell89 := by
  apply covered_reject cell89 1
  · decide +kernel
  · decide +kernel

abbrev cell90 : Cell := childCell (childCell (ordinalCell 2241383) 8) 16

theorem covered90 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell90 := by
  apply covered_reject cell90 1
  · decide +kernel
  · decide +kernel

abbrev cell91 : Cell := childCell (childCell (ordinalCell 2241383) 8) 17

theorem covered91 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell91 := by
  apply covered_accept cell91 0
  · decide +kernel
  · decide +kernel

abbrev cell92 : Cell := childCell (childCell (ordinalCell 2241383) 8) 18

theorem covered92 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell92 := by
  apply covered_accept cell92 0
  · decide +kernel
  · decide +kernel

abbrev cell93 : Cell := childCell (childCell (ordinalCell 2241383) 8) 19

theorem covered93 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell93 := by
  apply covered_accept cell93 0
  · decide +kernel
  · decide +kernel

abbrev cell94 : Cell := childCell (childCell (ordinalCell 2241383) 8) 20

theorem covered94 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell94 := by
  apply covered_reject cell94 1
  · decide +kernel
  · decide +kernel

abbrev cell95 : Cell := childCell (childCell (ordinalCell 2241383) 8) 21

theorem covered95 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell95 := by
  apply covered_reject cell95 1
  · decide +kernel
  · decide +kernel

abbrev cell96 : Cell := childCell (childCell (ordinalCell 2241383) 8) 22

theorem covered96 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell96 := by
  apply covered_reject cell96 1
  · decide +kernel
  · decide +kernel

abbrev cell97 : Cell := childCell (childCell (ordinalCell 2241383) 8) 23

theorem covered97 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell97 := by
  apply covered_accept cell97 0
  · decide +kernel
  · decide +kernel

abbrev cell98 : Cell := childCell (childCell (ordinalCell 2241383) 8) 24

theorem covered98 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell98 := by
  apply covered_reject cell98 1
  · decide +kernel
  · decide +kernel

abbrev cell99 : Cell := childCell (childCell (ordinalCell 2241383) 8) 25

theorem covered99 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell99 := by
  apply covered_reject cell99 1
  · decide +kernel
  · decide +kernel

abbrev cell100 : Cell := childCell (childCell (ordinalCell 2241383) 8) 26

theorem covered100 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell100 := by
  apply covered_reject cell100 1
  · decide +kernel
  · decide +kernel

abbrev cell101 : Cell := childCell (childCell (ordinalCell 2241383) 8) 27

theorem covered101 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell101 := by
  apply covered_accept cell101 0
  · decide +kernel
  · decide +kernel

abbrev cell102 : Cell := childCell (childCell (ordinalCell 2241383) 8) 28

theorem covered102 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell102 := by
  apply covered_reject cell102 1
  · decide +kernel
  · decide +kernel

abbrev cell103 : Cell := childCell (childCell (ordinalCell 2241383) 8) 29

theorem covered103 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell103 := by
  apply covered_reject cell103 1
  · decide +kernel
  · decide +kernel

abbrev cell104 : Cell := childCell (childCell (ordinalCell 2241383) 8) 30

theorem covered104 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell104 := by
  apply covered_reject cell104 1
  · decide +kernel
  · decide +kernel

abbrev cell105 : Cell := childCell (childCell (ordinalCell 2241383) 8) 31

theorem covered105 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell105 := by
  apply covered_reject cell105 1
  · decide +kernel
  · decide +kernel

theorem covered73 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell73 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered74
  · exact covered75
  · exact covered76
  · exact covered77
  · exact covered78
  · exact covered79
  · exact covered80
  · exact covered81
  · exact covered82
  · exact covered83
  · exact covered84
  · exact covered85
  · exact covered86
  · exact covered87
  · exact covered88
  · exact covered89
  · exact covered90
  · exact covered91
  · exact covered92
  · exact covered93
  · exact covered94
  · exact covered95
  · exact covered96
  · exact covered97
  · exact covered98
  · exact covered99
  · exact covered100
  · exact covered101
  · exact covered102
  · exact covered103
  · exact covered104
  · exact covered105

abbrev cell106 : Cell := childCell (ordinalCell 2241383) 9

theorem covered106 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell106 := by
  apply covered_accept cell106 0
  · decide +kernel
  · decide +kernel

abbrev cell107 : Cell := childCell (ordinalCell 2241383) 10

abbrev cell108 : Cell := childCell (childCell (ordinalCell 2241383) 10) 0

theorem covered108 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell108 := by
  apply covered_reject cell108 1
  · decide +kernel
  · decide +kernel

abbrev cell109 : Cell := childCell (childCell (ordinalCell 2241383) 10) 1

theorem covered109 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell109 := by
  apply covered_accept cell109 0
  · decide +kernel
  · decide +kernel

abbrev cell110 : Cell := childCell (childCell (ordinalCell 2241383) 10) 2

theorem covered110 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell110 := by
  apply covered_reject cell110 1
  · decide +kernel
  · decide +kernel

abbrev cell111 : Cell := childCell (childCell (ordinalCell 2241383) 10) 3

theorem covered111 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell111 := by
  apply covered_accept cell111 0
  · decide +kernel
  · decide +kernel

abbrev cell112 : Cell := childCell (childCell (ordinalCell 2241383) 10) 4

theorem covered112 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell112 := by
  apply covered_reject cell112 1
  · decide +kernel
  · decide +kernel

abbrev cell113 : Cell := childCell (childCell (ordinalCell 2241383) 10) 5

theorem covered113 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell113 := by
  apply covered_reject cell113 1
  · decide +kernel
  · decide +kernel

abbrev cell114 : Cell := childCell (childCell (ordinalCell 2241383) 10) 6

theorem covered114 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell114 := by
  apply covered_reject cell114 1
  · decide +kernel
  · decide +kernel

abbrev cell115 : Cell := childCell (childCell (ordinalCell 2241383) 10) 7

theorem covered115 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell115 := by
  apply covered_reject cell115 1
  · decide +kernel
  · decide +kernel

abbrev cell116 : Cell := childCell (childCell (ordinalCell 2241383) 10) 8

theorem covered116 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell116 := by
  apply covered_reject cell116 1
  · decide +kernel
  · decide +kernel

abbrev cell117 : Cell := childCell (childCell (ordinalCell 2241383) 10) 9

theorem covered117 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell117 := by
  apply covered_reject cell117 1
  · decide +kernel
  · decide +kernel

abbrev cell118 : Cell := childCell (childCell (ordinalCell 2241383) 10) 10

theorem covered118 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell118 := by
  apply covered_reject cell118 1
  · decide +kernel
  · decide +kernel

abbrev cell119 : Cell := childCell (childCell (ordinalCell 2241383) 10) 11

theorem covered119 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell119 := by
  apply covered_reject cell119 1
  · decide +kernel
  · decide +kernel

abbrev cell120 : Cell := childCell (childCell (ordinalCell 2241383) 10) 12

theorem covered120 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell120 := by
  apply covered_reject cell120 1
  · decide +kernel
  · decide +kernel

abbrev cell121 : Cell := childCell (childCell (ordinalCell 2241383) 10) 13

theorem covered121 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell121 := by
  apply covered_reject cell121 1
  · decide +kernel
  · decide +kernel

abbrev cell122 : Cell := childCell (childCell (ordinalCell 2241383) 10) 14

theorem covered122 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell122 := by
  apply covered_reject cell122 1
  · decide +kernel
  · decide +kernel

abbrev cell123 : Cell := childCell (childCell (ordinalCell 2241383) 10) 15

theorem covered123 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell123 := by
  apply covered_reject cell123 1
  · decide +kernel
  · decide +kernel

abbrev cell124 : Cell := childCell (childCell (ordinalCell 2241383) 10) 16

theorem covered124 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell124 := by
  apply covered_accept cell124 0
  · decide +kernel
  · decide +kernel

abbrev cell125 : Cell := childCell (childCell (ordinalCell 2241383) 10) 17

theorem covered125 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell125 := by
  apply covered_accept cell125 0
  · decide +kernel
  · decide +kernel

abbrev cell126 : Cell := childCell (childCell (ordinalCell 2241383) 10) 18

theorem covered126 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell126 := by
  apply covered_reject cell126 5
  · decide +kernel
  · decide +kernel

abbrev cell127 : Cell := childCell (childCell (ordinalCell 2241383) 10) 19

theorem covered127 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell127 := by
  apply covered_accept cell127 0
  · decide +kernel
  · decide +kernel

abbrev cell128 : Cell := childCell (childCell (ordinalCell 2241383) 10) 20

theorem covered128 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell128 := by
  apply covered_reject cell128 1
  · decide +kernel
  · decide +kernel

abbrev cell129 : Cell := childCell (childCell (ordinalCell 2241383) 10) 21

theorem covered129 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell129 := by
  apply covered_accept cell129 0
  · decide +kernel
  · decide +kernel

abbrev cell130 : Cell := childCell (childCell (ordinalCell 2241383) 10) 22

theorem covered130 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell130 := by
  apply covered_accept cell130 0
  · decide +kernel
  · decide +kernel

abbrev cell131 : Cell := childCell (childCell (ordinalCell 2241383) 10) 23

theorem covered131 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell131 := by
  apply covered_accept cell131 0
  · decide +kernel
  · decide +kernel

abbrev cell132 : Cell := childCell (childCell (ordinalCell 2241383) 10) 24

theorem covered132 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell132 := by
  apply covered_reject cell132 1
  · decide +kernel
  · decide +kernel

abbrev cell133 : Cell := childCell (childCell (ordinalCell 2241383) 10) 25

theorem covered133 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell133 := by
  apply covered_accept cell133 0
  · decide +kernel
  · decide +kernel

abbrev cell134 : Cell := childCell (childCell (ordinalCell 2241383) 10) 26

theorem covered134 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell134 := by
  apply covered_reject cell134 1
  · decide +kernel
  · decide +kernel

abbrev cell135 : Cell := childCell (childCell (ordinalCell 2241383) 10) 27

theorem covered135 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell135 := by
  apply covered_reject cell135 5
  · decide +kernel
  · decide +kernel

abbrev cell136 : Cell := childCell (childCell (ordinalCell 2241383) 10) 28

theorem covered136 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell136 := by
  apply covered_reject cell136 1
  · decide +kernel
  · decide +kernel

abbrev cell137 : Cell := childCell (childCell (ordinalCell 2241383) 10) 29

theorem covered137 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell137 := by
  apply covered_reject cell137 1
  · decide +kernel
  · decide +kernel

abbrev cell138 : Cell := childCell (childCell (ordinalCell 2241383) 10) 30

theorem covered138 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell138 := by
  apply covered_reject cell138 1
  · decide +kernel
  · decide +kernel

abbrev cell139 : Cell := childCell (childCell (ordinalCell 2241383) 10) 31

theorem covered139 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell139 := by
  apply covered_accept cell139 0
  · decide +kernel
  · decide +kernel

theorem covered107 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell107 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered108
  · exact covered109
  · exact covered110
  · exact covered111
  · exact covered112
  · exact covered113
  · exact covered114
  · exact covered115
  · exact covered116
  · exact covered117
  · exact covered118
  · exact covered119
  · exact covered120
  · exact covered121
  · exact covered122
  · exact covered123
  · exact covered124
  · exact covered125
  · exact covered126
  · exact covered127
  · exact covered128
  · exact covered129
  · exact covered130
  · exact covered131
  · exact covered132
  · exact covered133
  · exact covered134
  · exact covered135
  · exact covered136
  · exact covered137
  · exact covered138
  · exact covered139

abbrev cell140 : Cell := childCell (ordinalCell 2241383) 11

theorem covered140 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell140 := by
  apply covered_accept cell140 0
  · decide +kernel
  · decide +kernel

abbrev cell141 : Cell := childCell (ordinalCell 2241383) 12

theorem covered141 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell141 := by
  apply covered_reject cell141 1
  · decide +kernel
  · decide +kernel

abbrev cell142 : Cell := childCell (ordinalCell 2241383) 13

abbrev cell143 : Cell := childCell (childCell (ordinalCell 2241383) 13) 0

theorem covered143 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell143 := by
  apply covered_reject cell143 1
  · decide +kernel
  · decide +kernel

abbrev cell144 : Cell := childCell (childCell (ordinalCell 2241383) 13) 1

theorem covered144 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell144 := by
  apply covered_reject cell144 1
  · decide +kernel
  · decide +kernel

abbrev cell145 : Cell := childCell (childCell (ordinalCell 2241383) 13) 2

theorem covered145 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell145 := by
  apply covered_reject cell145 1
  · decide +kernel
  · decide +kernel

abbrev cell146 : Cell := childCell (childCell (ordinalCell 2241383) 13) 3

theorem covered146 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell146 := by
  apply covered_accept cell146 0
  · decide +kernel
  · decide +kernel

abbrev cell147 : Cell := childCell (childCell (ordinalCell 2241383) 13) 4

theorem covered147 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell147 := by
  apply covered_reject cell147 1
  · decide +kernel
  · decide +kernel

abbrev cell148 : Cell := childCell (childCell (ordinalCell 2241383) 13) 5

theorem covered148 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell148 := by
  apply covered_reject cell148 1
  · decide +kernel
  · decide +kernel

abbrev cell149 : Cell := childCell (childCell (ordinalCell 2241383) 13) 6

theorem covered149 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell149 := by
  apply covered_reject cell149 1
  · decide +kernel
  · decide +kernel

abbrev cell150 : Cell := childCell (childCell (ordinalCell 2241383) 13) 7

theorem covered150 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell150 := by
  apply covered_reject cell150 1
  · decide +kernel
  · decide +kernel

abbrev cell151 : Cell := childCell (childCell (ordinalCell 2241383) 13) 8

theorem covered151 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell151 := by
  apply covered_reject cell151 1
  · decide +kernel
  · decide +kernel

abbrev cell152 : Cell := childCell (childCell (ordinalCell 2241383) 13) 9

theorem covered152 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell152 := by
  apply covered_reject cell152 1
  · decide +kernel
  · decide +kernel

abbrev cell153 : Cell := childCell (childCell (ordinalCell 2241383) 13) 10

theorem covered153 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell153 := by
  apply covered_reject cell153 1
  · decide +kernel
  · decide +kernel

abbrev cell154 : Cell := childCell (childCell (ordinalCell 2241383) 13) 11

theorem covered154 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell154 := by
  apply covered_reject cell154 1
  · decide +kernel
  · decide +kernel

abbrev cell155 : Cell := childCell (childCell (ordinalCell 2241383) 13) 12

theorem covered155 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell155 := by
  apply covered_reject cell155 1
  · decide +kernel
  · decide +kernel

abbrev cell156 : Cell := childCell (childCell (ordinalCell 2241383) 13) 13

theorem covered156 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell156 := by
  apply covered_reject cell156 1
  · decide +kernel
  · decide +kernel

abbrev cell157 : Cell := childCell (childCell (ordinalCell 2241383) 13) 14

theorem covered157 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell157 := by
  apply covered_reject cell157 1
  · decide +kernel
  · decide +kernel

abbrev cell158 : Cell := childCell (childCell (ordinalCell 2241383) 13) 15

theorem covered158 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell158 := by
  apply covered_reject cell158 1
  · decide +kernel
  · decide +kernel

abbrev cell159 : Cell := childCell (childCell (ordinalCell 2241383) 13) 16

theorem covered159 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell159 := by
  apply covered_reject cell159 1
  · decide +kernel
  · decide +kernel

abbrev cell160 : Cell := childCell (childCell (ordinalCell 2241383) 13) 17

theorem covered160 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell160 := by
  apply covered_accept cell160 0
  · decide +kernel
  · decide +kernel

abbrev cell161 : Cell := childCell (childCell (ordinalCell 2241383) 13) 18

theorem covered161 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell161 := by
  apply covered_accept cell161 0
  · decide +kernel
  · decide +kernel

abbrev cell162 : Cell := childCell (childCell (ordinalCell 2241383) 13) 19

theorem covered162 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell162 := by
  apply covered_accept cell162 0
  · decide +kernel
  · decide +kernel

abbrev cell163 : Cell := childCell (childCell (ordinalCell 2241383) 13) 20

theorem covered163 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell163 := by
  apply covered_reject cell163 1
  · decide +kernel
  · decide +kernel

abbrev cell164 : Cell := childCell (childCell (ordinalCell 2241383) 13) 21

theorem covered164 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell164 := by
  apply covered_reject cell164 1
  · decide +kernel
  · decide +kernel

abbrev cell165 : Cell := childCell (childCell (ordinalCell 2241383) 13) 22

theorem covered165 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell165 := by
  apply covered_reject cell165 1
  · decide +kernel
  · decide +kernel

abbrev cell166 : Cell := childCell (childCell (ordinalCell 2241383) 13) 23

theorem covered166 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell166 := by
  apply covered_accept cell166 0
  · decide +kernel
  · decide +kernel

abbrev cell167 : Cell := childCell (childCell (ordinalCell 2241383) 13) 24

theorem covered167 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell167 := by
  apply covered_reject cell167 1
  · decide +kernel
  · decide +kernel

abbrev cell168 : Cell := childCell (childCell (ordinalCell 2241383) 13) 25

theorem covered168 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell168 := by
  apply covered_reject cell168 1
  · decide +kernel
  · decide +kernel

abbrev cell169 : Cell := childCell (childCell (ordinalCell 2241383) 13) 26

theorem covered169 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell169 := by
  apply covered_reject cell169 1
  · decide +kernel
  · decide +kernel

abbrev cell170 : Cell := childCell (childCell (ordinalCell 2241383) 13) 27

theorem covered170 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell170 := by
  apply covered_accept cell170 0
  · decide +kernel
  · decide +kernel

abbrev cell171 : Cell := childCell (childCell (ordinalCell 2241383) 13) 28

theorem covered171 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell171 := by
  apply covered_reject cell171 1
  · decide +kernel
  · decide +kernel

abbrev cell172 : Cell := childCell (childCell (ordinalCell 2241383) 13) 29

theorem covered172 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell172 := by
  apply covered_reject cell172 1
  · decide +kernel
  · decide +kernel

abbrev cell173 : Cell := childCell (childCell (ordinalCell 2241383) 13) 30

theorem covered173 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell173 := by
  apply covered_reject cell173 1
  · decide +kernel
  · decide +kernel

abbrev cell174 : Cell := childCell (childCell (ordinalCell 2241383) 13) 31

theorem covered174 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell174 := by
  apply covered_reject cell174 1
  · decide +kernel
  · decide +kernel

theorem covered142 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell142 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered143
  · exact covered144
  · exact covered145
  · exact covered146
  · exact covered147
  · exact covered148
  · exact covered149
  · exact covered150
  · exact covered151
  · exact covered152
  · exact covered153
  · exact covered154
  · exact covered155
  · exact covered156
  · exact covered157
  · exact covered158
  · exact covered159
  · exact covered160
  · exact covered161
  · exact covered162
  · exact covered163
  · exact covered164
  · exact covered165
  · exact covered166
  · exact covered167
  · exact covered168
  · exact covered169
  · exact covered170
  · exact covered171
  · exact covered172
  · exact covered173
  · exact covered174

abbrev cell175 : Cell := childCell (ordinalCell 2241383) 14

abbrev cell176 : Cell := childCell (childCell (ordinalCell 2241383) 14) 0

theorem covered176 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell176 := by
  apply covered_reject cell176 1
  · decide +kernel
  · decide +kernel

abbrev cell177 : Cell := childCell (childCell (ordinalCell 2241383) 14) 1

theorem covered177 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell177 := by
  apply covered_reject cell177 1
  · decide +kernel
  · decide +kernel

abbrev cell178 : Cell := childCell (childCell (ordinalCell 2241383) 14) 2

theorem covered178 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell178 := by
  apply covered_reject cell178 1
  · decide +kernel
  · decide +kernel

abbrev cell179 : Cell := childCell (childCell (ordinalCell 2241383) 14) 3

theorem covered179 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell179 := by
  apply covered_reject cell179 1
  · decide +kernel
  · decide +kernel

abbrev cell180 : Cell := childCell (childCell (ordinalCell 2241383) 14) 4

theorem covered180 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell180 := by
  apply covered_reject cell180 1
  · decide +kernel
  · decide +kernel

abbrev cell181 : Cell := childCell (childCell (ordinalCell 2241383) 14) 5

theorem covered181 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell181 := by
  apply covered_reject cell181 1
  · decide +kernel
  · decide +kernel

abbrev cell182 : Cell := childCell (childCell (ordinalCell 2241383) 14) 6

theorem covered182 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell182 := by
  apply covered_reject cell182 1
  · decide +kernel
  · decide +kernel

abbrev cell183 : Cell := childCell (childCell (ordinalCell 2241383) 14) 7

theorem covered183 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell183 := by
  apply covered_reject cell183 1
  · decide +kernel
  · decide +kernel

abbrev cell184 : Cell := childCell (childCell (ordinalCell 2241383) 14) 8

theorem covered184 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell184 := by
  apply covered_reject cell184 1
  · decide +kernel
  · decide +kernel

abbrev cell185 : Cell := childCell (childCell (ordinalCell 2241383) 14) 9

theorem covered185 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell185 := by
  apply covered_reject cell185 1
  · decide +kernel
  · decide +kernel

abbrev cell186 : Cell := childCell (childCell (ordinalCell 2241383) 14) 10

theorem covered186 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell186 := by
  apply covered_reject cell186 1
  · decide +kernel
  · decide +kernel

abbrev cell187 : Cell := childCell (childCell (ordinalCell 2241383) 14) 11

theorem covered187 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell187 := by
  apply covered_reject cell187 1
  · decide +kernel
  · decide +kernel

abbrev cell188 : Cell := childCell (childCell (ordinalCell 2241383) 14) 12

theorem covered188 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell188 := by
  apply covered_reject cell188 1
  · decide +kernel
  · decide +kernel

abbrev cell189 : Cell := childCell (childCell (ordinalCell 2241383) 14) 13

theorem covered189 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell189 := by
  apply covered_reject cell189 1
  · decide +kernel
  · decide +kernel

abbrev cell190 : Cell := childCell (childCell (ordinalCell 2241383) 14) 14

theorem covered190 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell190 := by
  apply covered_reject cell190 1
  · decide +kernel
  · decide +kernel

abbrev cell191 : Cell := childCell (childCell (ordinalCell 2241383) 14) 15

theorem covered191 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell191 := by
  apply covered_reject cell191 1
  · decide +kernel
  · decide +kernel

abbrev cell192 : Cell := childCell (childCell (ordinalCell 2241383) 14) 16

theorem covered192 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell192 := by
  apply covered_reject cell192 1
  · decide +kernel
  · decide +kernel

abbrev cell193 : Cell := childCell (childCell (ordinalCell 2241383) 14) 17

theorem covered193 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell193 := by
  apply covered_reject cell193 1
  · decide +kernel
  · decide +kernel

abbrev cell194 : Cell := childCell (childCell (ordinalCell 2241383) 14) 18

theorem covered194 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell194 := by
  apply covered_reject cell194 1
  · decide +kernel
  · decide +kernel

abbrev cell195 : Cell := childCell (childCell (ordinalCell 2241383) 14) 19

theorem covered195 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell195 := by
  apply covered_accept cell195 0
  · decide +kernel
  · decide +kernel

abbrev cell196 : Cell := childCell (childCell (ordinalCell 2241383) 14) 20

theorem covered196 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell196 := by
  apply covered_reject cell196 1
  · decide +kernel
  · decide +kernel

abbrev cell197 : Cell := childCell (childCell (ordinalCell 2241383) 14) 21

theorem covered197 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell197 := by
  apply covered_reject cell197 1
  · decide +kernel
  · decide +kernel

abbrev cell198 : Cell := childCell (childCell (ordinalCell 2241383) 14) 22

theorem covered198 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell198 := by
  apply covered_reject cell198 1
  · decide +kernel
  · decide +kernel

abbrev cell199 : Cell := childCell (childCell (ordinalCell 2241383) 14) 23

theorem covered199 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell199 := by
  apply covered_reject cell199 1
  · decide +kernel
  · decide +kernel

abbrev cell200 : Cell := childCell (childCell (ordinalCell 2241383) 14) 24

theorem covered200 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell200 := by
  apply covered_reject cell200 1
  · decide +kernel
  · decide +kernel

abbrev cell201 : Cell := childCell (childCell (ordinalCell 2241383) 14) 25

theorem covered201 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell201 := by
  apply covered_reject cell201 1
  · decide +kernel
  · decide +kernel

abbrev cell202 : Cell := childCell (childCell (ordinalCell 2241383) 14) 26

theorem covered202 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell202 := by
  apply covered_reject cell202 1
  · decide +kernel
  · decide +kernel

abbrev cell203 : Cell := childCell (childCell (ordinalCell 2241383) 14) 27

theorem covered203 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell203 := by
  apply covered_reject cell203 1
  · decide +kernel
  · decide +kernel

abbrev cell204 : Cell := childCell (childCell (ordinalCell 2241383) 14) 28

theorem covered204 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell204 := by
  apply covered_reject cell204 1
  · decide +kernel
  · decide +kernel

abbrev cell205 : Cell := childCell (childCell (ordinalCell 2241383) 14) 29

theorem covered205 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell205 := by
  apply covered_reject cell205 1
  · decide +kernel
  · decide +kernel

abbrev cell206 : Cell := childCell (childCell (ordinalCell 2241383) 14) 30

theorem covered206 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell206 := by
  apply covered_reject cell206 1
  · decide +kernel
  · decide +kernel

abbrev cell207 : Cell := childCell (childCell (ordinalCell 2241383) 14) 31

theorem covered207 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell207 := by
  apply covered_reject cell207 1
  · decide +kernel
  · decide +kernel

theorem covered175 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell175 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered176
  · exact covered177
  · exact covered178
  · exact covered179
  · exact covered180
  · exact covered181
  · exact covered182
  · exact covered183
  · exact covered184
  · exact covered185
  · exact covered186
  · exact covered187
  · exact covered188
  · exact covered189
  · exact covered190
  · exact covered191
  · exact covered192
  · exact covered193
  · exact covered194
  · exact covered195
  · exact covered196
  · exact covered197
  · exact covered198
  · exact covered199
  · exact covered200
  · exact covered201
  · exact covered202
  · exact covered203
  · exact covered204
  · exact covered205
  · exact covered206
  · exact covered207

abbrev cell208 : Cell := childCell (ordinalCell 2241383) 15

theorem covered208 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell208 := by
  apply covered_accept cell208 0
  · decide +kernel
  · decide +kernel

abbrev cell209 : Cell := childCell (ordinalCell 2241383) 16

theorem covered209 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell209 := by
  apply covered_accept cell209 0
  · decide +kernel
  · decide +kernel

abbrev cell210 : Cell := childCell (ordinalCell 2241383) 17

theorem covered210 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell210 := by
  apply covered_accept cell210 0
  · decide +kernel
  · decide +kernel

abbrev cell211 : Cell := childCell (ordinalCell 2241383) 18

theorem covered211 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell211 := by
  apply covered_accept cell211 0
  · decide +kernel
  · decide +kernel

abbrev cell212 : Cell := childCell (ordinalCell 2241383) 19

theorem covered212 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell212 := by
  apply covered_accept cell212 0
  · decide +kernel
  · decide +kernel

abbrev cell213 : Cell := childCell (ordinalCell 2241383) 20

abbrev cell214 : Cell := childCell (childCell (ordinalCell 2241383) 20) 0

theorem covered214 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell214 := by
  apply covered_reject cell214 2
  · decide +kernel
  · decide +kernel

abbrev cell215 : Cell := childCell (childCell (ordinalCell 2241383) 20) 1

theorem covered215 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell215 := by
  apply covered_accept cell215 0
  · decide +kernel
  · decide +kernel

abbrev cell216 : Cell := childCell (childCell (ordinalCell 2241383) 20) 2

theorem covered216 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell216 := by
  apply covered_accept cell216 0
  · decide +kernel
  · decide +kernel

abbrev cell217 : Cell := childCell (childCell (ordinalCell 2241383) 20) 3

theorem covered217 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell217 := by
  apply covered_accept cell217 0
  · decide +kernel
  · decide +kernel

abbrev cell218 : Cell := childCell (childCell (ordinalCell 2241383) 20) 4

theorem covered218 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell218 := by
  apply covered_reject cell218 2
  · decide +kernel
  · decide +kernel

abbrev cell219 : Cell := childCell (childCell (ordinalCell 2241383) 20) 5

theorem covered219 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell219 := by
  apply covered_reject cell219 2
  · decide +kernel
  · decide +kernel

abbrev cell220 : Cell := childCell (childCell (ordinalCell 2241383) 20) 6

theorem covered220 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell220 := by
  apply covered_reject cell220 2
  · decide +kernel
  · decide +kernel

abbrev cell221 : Cell := childCell (childCell (ordinalCell 2241383) 20) 7

theorem covered221 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell221 := by
  apply covered_accept cell221 0
  · decide +kernel
  · decide +kernel

abbrev cell222 : Cell := childCell (childCell (ordinalCell 2241383) 20) 8

theorem covered222 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell222 := by
  apply covered_reject cell222 1
  · decide +kernel
  · decide +kernel

abbrev cell223 : Cell := childCell (childCell (ordinalCell 2241383) 20) 9

theorem covered223 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell223 := by
  apply covered_accept cell223 0
  · decide +kernel
  · decide +kernel

abbrev cell224 : Cell := childCell (childCell (ordinalCell 2241383) 20) 10

theorem covered224 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell224 := by
  apply covered_accept cell224 0
  · decide +kernel
  · decide +kernel

abbrev cell225 : Cell := childCell (childCell (ordinalCell 2241383) 20) 11

theorem covered225 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell225 := by
  apply covered_accept cell225 0
  · decide +kernel
  · decide +kernel

abbrev cell226 : Cell := childCell (childCell (ordinalCell 2241383) 20) 12

theorem covered226 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell226 := by
  apply covered_reject cell226 1
  · decide +kernel
  · decide +kernel

abbrev cell227 : Cell := childCell (childCell (ordinalCell 2241383) 20) 13

theorem covered227 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell227 := by
  apply covered_accept cell227 0
  · decide +kernel
  · decide +kernel

abbrev cell228 : Cell := childCell (childCell (ordinalCell 2241383) 20) 14

theorem covered228 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell228 := by
  apply covered_reject cell228 1
  · decide +kernel
  · decide +kernel

abbrev cell229 : Cell := childCell (childCell (ordinalCell 2241383) 20) 15

theorem covered229 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell229 := by
  apply covered_accept cell229 0
  · decide +kernel
  · decide +kernel

abbrev cell230 : Cell := childCell (childCell (ordinalCell 2241383) 20) 16

theorem covered230 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell230 := by
  apply covered_reject cell230 2
  · decide +kernel
  · decide +kernel

abbrev cell231 : Cell := childCell (childCell (ordinalCell 2241383) 20) 17

theorem covered231 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell231 := by
  apply covered_reject cell231 2
  · decide +kernel
  · decide +kernel

abbrev cell232 : Cell := childCell (childCell (ordinalCell 2241383) 20) 18

theorem covered232 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell232 := by
  apply covered_reject cell232 2
  · decide +kernel
  · decide +kernel

abbrev cell233 : Cell := childCell (childCell (ordinalCell 2241383) 20) 19

theorem covered233 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell233 := by
  apply covered_reject cell233 2
  · decide +kernel
  · decide +kernel

abbrev cell234 : Cell := childCell (childCell (ordinalCell 2241383) 20) 20

theorem covered234 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell234 := by
  apply covered_reject cell234 0
  · decide +kernel
  · decide +kernel

abbrev cell235 : Cell := childCell (childCell (ordinalCell 2241383) 20) 21

theorem covered235 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell235 := by
  apply covered_reject cell235 0
  · decide +kernel
  · decide +kernel

abbrev cell236 : Cell := childCell (childCell (ordinalCell 2241383) 20) 22

theorem covered236 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell236 := by
  apply covered_reject cell236 2
  · decide +kernel
  · decide +kernel

abbrev cell237 : Cell := childCell (childCell (ordinalCell 2241383) 20) 23

theorem covered237 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell237 := by
  apply covered_reject cell237 2
  · decide +kernel
  · decide +kernel

abbrev cell238 : Cell := childCell (childCell (ordinalCell 2241383) 20) 24

theorem covered238 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell238 := by
  apply covered_reject cell238 0
  · decide +kernel
  · decide +kernel

abbrev cell239 : Cell := childCell (childCell (ordinalCell 2241383) 20) 25

theorem covered239 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell239 := by
  apply covered_reject cell239 0
  · decide +kernel
  · decide +kernel

abbrev cell240 : Cell := childCell (childCell (ordinalCell 2241383) 20) 26

theorem covered240 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell240 := by
  apply covered_accept cell240 0
  · decide +kernel
  · decide +kernel

abbrev cell241 : Cell := childCell (childCell (ordinalCell 2241383) 20) 27

theorem covered241 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell241 := by
  apply covered_accept cell241 0
  · decide +kernel
  · decide +kernel

abbrev cell242 : Cell := childCell (childCell (ordinalCell 2241383) 20) 28

theorem covered242 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell242 := by
  apply covered_reject cell242 0
  · decide +kernel
  · decide +kernel

abbrev cell243 : Cell := childCell (childCell (ordinalCell 2241383) 20) 29

theorem covered243 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell243 := by
  apply covered_reject cell243 0
  · decide +kernel
  · decide +kernel

abbrev cell244 : Cell := childCell (childCell (ordinalCell 2241383) 20) 30

theorem covered244 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell244 := by
  apply covered_reject cell244 2
  · decide +kernel
  · decide +kernel

abbrev cell245 : Cell := childCell (childCell (ordinalCell 2241383) 20) 31

theorem covered245 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell245 := by
  apply covered_accept cell245 0
  · decide +kernel
  · decide +kernel

theorem covered213 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell213 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered214
  · exact covered215
  · exact covered216
  · exact covered217
  · exact covered218
  · exact covered219
  · exact covered220
  · exact covered221
  · exact covered222
  · exact covered223
  · exact covered224
  · exact covered225
  · exact covered226
  · exact covered227
  · exact covered228
  · exact covered229
  · exact covered230
  · exact covered231
  · exact covered232
  · exact covered233
  · exact covered234
  · exact covered235
  · exact covered236
  · exact covered237
  · exact covered238
  · exact covered239
  · exact covered240
  · exact covered241
  · exact covered242
  · exact covered243
  · exact covered244
  · exact covered245

abbrev cell246 : Cell := childCell (ordinalCell 2241383) 21

theorem covered246 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell246 := by
  apply covered_accept cell246 0
  · decide +kernel
  · decide +kernel

abbrev cell247 : Cell := childCell (ordinalCell 2241383) 22

abbrev cell248 : Cell := childCell (childCell (ordinalCell 2241383) 22) 0

theorem covered248 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell248 := by
  apply covered_reject cell248 4
  · decide +kernel
  · decide +kernel

abbrev cell249 : Cell := childCell (childCell (ordinalCell 2241383) 22) 1

theorem covered249 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell249 := by
  apply covered_accept cell249 0
  · decide +kernel
  · decide +kernel

abbrev cell250 : Cell := childCell (childCell (ordinalCell 2241383) 22) 2

theorem covered250 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell250 := by
  apply covered_reject cell250 4
  · decide +kernel
  · decide +kernel

abbrev cell251 : Cell := childCell (childCell (ordinalCell 2241383) 22) 3

theorem covered251 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell251 := by
  apply covered_reject cell251 4
  · decide +kernel
  · decide +kernel

abbrev cell252 : Cell := childCell (childCell (ordinalCell 2241383) 22) 4

theorem covered252 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell252 := by
  apply covered_reject cell252 4
  · decide +kernel
  · decide +kernel

abbrev cell253 : Cell := childCell (childCell (ordinalCell 2241383) 22) 5

theorem covered253 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell253 := by
  apply covered_reject cell253 4
  · decide +kernel
  · decide +kernel

abbrev cell254 : Cell := childCell (childCell (ordinalCell 2241383) 22) 6

theorem covered254 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell254 := by
  apply covered_reject cell254 4
  · decide +kernel
  · decide +kernel

abbrev cell255 : Cell := childCell (childCell (ordinalCell 2241383) 22) 7

theorem covered255 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell255 := by
  apply covered_reject cell255 4
  · decide +kernel
  · decide +kernel

abbrev cell256 : Cell := childCell (childCell (ordinalCell 2241383) 22) 8

theorem covered256 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell256 := by
  apply covered_accept cell256 0
  · decide +kernel
  · decide +kernel

abbrev cell257 : Cell := childCell (childCell (ordinalCell 2241383) 22) 9

theorem covered257 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell257 := by
  apply covered_accept cell257 0
  · decide +kernel
  · decide +kernel

abbrev cell258 : Cell := childCell (childCell (ordinalCell 2241383) 22) 10

theorem covered258 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell258 := by
  apply covered_reject cell258 4
  · decide +kernel
  · decide +kernel

abbrev cell259 : Cell := childCell (childCell (ordinalCell 2241383) 22) 11

theorem covered259 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell259 := by
  apply covered_accept cell259 0
  · decide +kernel
  · decide +kernel

abbrev cell260 : Cell := childCell (childCell (ordinalCell 2241383) 22) 12

theorem covered260 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell260 := by
  apply covered_reject cell260 1
  · decide +kernel
  · decide +kernel

abbrev cell261 : Cell := childCell (childCell (ordinalCell 2241383) 22) 13

theorem covered261 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell261 := by
  apply covered_accept cell261 0
  · decide +kernel
  · decide +kernel

abbrev cell262 : Cell := childCell (childCell (ordinalCell 2241383) 22) 14

theorem covered262 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell262 := by
  apply covered_reject cell262 4
  · decide +kernel
  · decide +kernel

abbrev cell263 : Cell := childCell (childCell (ordinalCell 2241383) 22) 15

theorem covered263 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell263 := by
  apply covered_reject cell263 4
  · decide +kernel
  · decide +kernel

abbrev cell264 : Cell := childCell (childCell (ordinalCell 2241383) 22) 16

theorem covered264 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell264 := by
  apply covered_accept cell264 0
  · decide +kernel
  · decide +kernel

abbrev cell265 : Cell := childCell (childCell (ordinalCell 2241383) 22) 17

theorem covered265 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell265 := by
  apply covered_accept cell265 0
  · decide +kernel
  · decide +kernel

abbrev cell266 : Cell := childCell (childCell (ordinalCell 2241383) 22) 18

theorem covered266 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell266 := by
  apply covered_reject cell266 4
  · decide +kernel
  · decide +kernel

abbrev cell267 : Cell := childCell (childCell (ordinalCell 2241383) 22) 19

theorem covered267 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell267 := by
  apply covered_accept cell267 0
  · decide +kernel
  · decide +kernel

abbrev cell268 : Cell := childCell (childCell (ordinalCell 2241383) 22) 20

theorem covered268 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell268 := by
  apply covered_reject cell268 2
  · decide +kernel
  · decide +kernel

abbrev cell269 : Cell := childCell (childCell (ordinalCell 2241383) 22) 21

theorem covered269 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell269 := by
  apply covered_accept cell269 0
  · decide +kernel
  · decide +kernel

abbrev cell270 : Cell := childCell (childCell (ordinalCell 2241383) 22) 22

theorem covered270 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell270 := by
  apply covered_reject cell270 4
  · decide +kernel
  · decide +kernel

abbrev cell271 : Cell := childCell (childCell (ordinalCell 2241383) 22) 23

theorem covered271 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell271 := by
  apply covered_reject cell271 4
  · decide +kernel
  · decide +kernel

abbrev cell272 : Cell := childCell (childCell (ordinalCell 2241383) 22) 24

theorem covered272 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell272 := by
  apply covered_accept cell272 0
  · decide +kernel
  · decide +kernel

abbrev cell273 : Cell := childCell (childCell (ordinalCell 2241383) 22) 25

theorem covered273 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell273 := by
  apply covered_accept cell273 0
  · decide +kernel
  · decide +kernel

abbrev cell274 : Cell := childCell (childCell (ordinalCell 2241383) 22) 26

theorem covered274 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell274 := by
  apply covered_accept cell274 0
  · decide +kernel
  · decide +kernel

abbrev cell275 : Cell := childCell (childCell (ordinalCell 2241383) 22) 27

theorem covered275 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell275 := by
  apply covered_accept cell275 0
  · decide +kernel
  · decide +kernel

abbrev cell276 : Cell := childCell (childCell (ordinalCell 2241383) 22) 28

theorem covered276 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell276 := by
  apply covered_accept cell276 0
  · decide +kernel
  · decide +kernel

abbrev cell277 : Cell := childCell (childCell (ordinalCell 2241383) 22) 29

theorem covered277 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell277 := by
  apply covered_accept cell277 0
  · decide +kernel
  · decide +kernel

abbrev cell278 : Cell := childCell (childCell (ordinalCell 2241383) 22) 30

theorem covered278 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell278 := by
  apply covered_reject cell278 4
  · decide +kernel
  · decide +kernel

abbrev cell279 : Cell := childCell (childCell (ordinalCell 2241383) 22) 31

theorem covered279 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell279 := by
  apply covered_accept cell279 0
  · decide +kernel
  · decide +kernel

theorem covered247 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell247 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered248
  · exact covered249
  · exact covered250
  · exact covered251
  · exact covered252
  · exact covered253
  · exact covered254
  · exact covered255
  · exact covered256
  · exact covered257
  · exact covered258
  · exact covered259
  · exact covered260
  · exact covered261
  · exact covered262
  · exact covered263
  · exact covered264
  · exact covered265
  · exact covered266
  · exact covered267
  · exact covered268
  · exact covered269
  · exact covered270
  · exact covered271
  · exact covered272
  · exact covered273
  · exact covered274
  · exact covered275
  · exact covered276
  · exact covered277
  · exact covered278
  · exact covered279

abbrev cell280 : Cell := childCell (ordinalCell 2241383) 23

theorem covered280 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell280 := by
  apply covered_accept cell280 0
  · decide +kernel
  · decide +kernel

abbrev cell281 : Cell := childCell (ordinalCell 2241383) 24

abbrev cell282 : Cell := childCell (childCell (ordinalCell 2241383) 24) 0

theorem covered282 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell282 := by
  apply covered_reject cell282 3
  · decide +kernel
  · decide +kernel

abbrev cell283 : Cell := childCell (childCell (ordinalCell 2241383) 24) 1

theorem covered283 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell283 := by
  apply covered_accept cell283 0
  · decide +kernel
  · decide +kernel

abbrev cell284 : Cell := childCell (childCell (ordinalCell 2241383) 24) 2

theorem covered284 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell284 := by
  apply covered_reject cell284 3
  · decide +kernel
  · decide +kernel

abbrev cell285 : Cell := childCell (childCell (ordinalCell 2241383) 24) 3

theorem covered285 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell285 := by
  apply covered_accept cell285 0
  · decide +kernel
  · decide +kernel

abbrev cell286 : Cell := childCell (childCell (ordinalCell 2241383) 24) 4

theorem covered286 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell286 := by
  apply covered_reject cell286 1
  · decide +kernel
  · decide +kernel

abbrev cell287 : Cell := childCell (childCell (ordinalCell 2241383) 24) 5

theorem covered287 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell287 := by
  apply covered_accept cell287 0
  · decide +kernel
  · decide +kernel

abbrev cell288 : Cell := childCell (childCell (ordinalCell 2241383) 24) 6

theorem covered288 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell288 := by
  apply covered_accept cell288 0
  · decide +kernel
  · decide +kernel

abbrev cell289 : Cell := childCell (childCell (ordinalCell 2241383) 24) 7

theorem covered289 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell289 := by
  apply covered_accept cell289 0
  · decide +kernel
  · decide +kernel

abbrev cell290 : Cell := childCell (childCell (ordinalCell 2241383) 24) 8

theorem covered290 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell290 := by
  apply covered_reject cell290 1
  · decide +kernel
  · decide +kernel

abbrev cell291 : Cell := childCell (childCell (ordinalCell 2241383) 24) 9

theorem covered291 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell291 := by
  apply covered_reject cell291 3
  · decide +kernel
  · decide +kernel

abbrev cell292 : Cell := childCell (childCell (ordinalCell 2241383) 24) 10

theorem covered292 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell292 := by
  apply covered_reject cell292 3
  · decide +kernel
  · decide +kernel

abbrev cell293 : Cell := childCell (childCell (ordinalCell 2241383) 24) 11

theorem covered293 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell293 := by
  apply covered_reject cell293 3
  · decide +kernel
  · decide +kernel

abbrev cell294 : Cell := childCell (childCell (ordinalCell 2241383) 24) 12

theorem covered294 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell294 := by
  apply covered_reject cell294 1
  · decide +kernel
  · decide +kernel

abbrev cell295 : Cell := childCell (childCell (ordinalCell 2241383) 24) 13

theorem covered295 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell295 := by
  apply covered_reject cell295 1
  · decide +kernel
  · decide +kernel

abbrev cell296 : Cell := childCell (childCell (ordinalCell 2241383) 24) 14

theorem covered296 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell296 := by
  apply covered_reject cell296 1
  · decide +kernel
  · decide +kernel

abbrev cell297 : Cell := childCell (childCell (ordinalCell 2241383) 24) 15

theorem covered297 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell297 := by
  apply covered_accept cell297 0
  · decide +kernel
  · decide +kernel

abbrev cell298 : Cell := childCell (childCell (ordinalCell 2241383) 24) 16

theorem covered298 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell298 := by
  apply covered_reject cell298 3
  · decide +kernel
  · decide +kernel

abbrev cell299 : Cell := childCell (childCell (ordinalCell 2241383) 24) 17

theorem covered299 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell299 := by
  apply covered_accept cell299 0
  · decide +kernel
  · decide +kernel

abbrev cell300 : Cell := childCell (childCell (ordinalCell 2241383) 24) 18

theorem covered300 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell300 := by
  apply covered_reject cell300 3
  · decide +kernel
  · decide +kernel

abbrev cell301 : Cell := childCell (childCell (ordinalCell 2241383) 24) 19

theorem covered301 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell301 := by
  apply covered_accept cell301 0
  · decide +kernel
  · decide +kernel

abbrev cell302 : Cell := childCell (childCell (ordinalCell 2241383) 24) 20

theorem covered302 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell302 := by
  apply covered_reject cell302 0
  · decide +kernel
  · decide +kernel

abbrev cell303 : Cell := childCell (childCell (ordinalCell 2241383) 24) 21

theorem covered303 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell303 := by
  apply covered_accept cell303 0
  · decide +kernel
  · decide +kernel

abbrev cell304 : Cell := childCell (childCell (ordinalCell 2241383) 24) 22

theorem covered304 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell304 := by
  apply covered_accept cell304 0
  · decide +kernel
  · decide +kernel

abbrev cell305 : Cell := childCell (childCell (ordinalCell 2241383) 24) 23

theorem covered305 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell305 := by
  apply covered_accept cell305 0
  · decide +kernel
  · decide +kernel

abbrev cell306 : Cell := childCell (childCell (ordinalCell 2241383) 24) 24

theorem covered306 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell306 := by
  apply covered_reject cell306 3
  · decide +kernel
  · decide +kernel

abbrev cell307 : Cell := childCell (childCell (ordinalCell 2241383) 24) 25

theorem covered307 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell307 := by
  apply covered_reject cell307 3
  · decide +kernel
  · decide +kernel

abbrev cell308 : Cell := childCell (childCell (ordinalCell 2241383) 24) 26

theorem covered308 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell308 := by
  apply covered_reject cell308 3
  · decide +kernel
  · decide +kernel

abbrev cell309 : Cell := childCell (childCell (ordinalCell 2241383) 24) 27

theorem covered309 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell309 := by
  apply covered_reject cell309 3
  · decide +kernel
  · decide +kernel

abbrev cell310 : Cell := childCell (childCell (ordinalCell 2241383) 24) 28

theorem covered310 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell310 := by
  apply covered_reject cell310 0
  · decide +kernel
  · decide +kernel

abbrev cell311 : Cell := childCell (childCell (ordinalCell 2241383) 24) 29

theorem covered311 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell311 := by
  apply covered_reject cell311 0
  · decide +kernel
  · decide +kernel

abbrev cell312 : Cell := childCell (childCell (ordinalCell 2241383) 24) 30

theorem covered312 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell312 := by
  apply covered_reject cell312 3
  · decide +kernel
  · decide +kernel

abbrev cell313 : Cell := childCell (childCell (ordinalCell 2241383) 24) 31

theorem covered313 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell313 := by
  apply covered_accept cell313 0
  · decide +kernel
  · decide +kernel

theorem covered281 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell281 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered282
  · exact covered283
  · exact covered284
  · exact covered285
  · exact covered286
  · exact covered287
  · exact covered288
  · exact covered289
  · exact covered290
  · exact covered291
  · exact covered292
  · exact covered293
  · exact covered294
  · exact covered295
  · exact covered296
  · exact covered297
  · exact covered298
  · exact covered299
  · exact covered300
  · exact covered301
  · exact covered302
  · exact covered303
  · exact covered304
  · exact covered305
  · exact covered306
  · exact covered307
  · exact covered308
  · exact covered309
  · exact covered310
  · exact covered311
  · exact covered312
  · exact covered313

abbrev cell314 : Cell := childCell (ordinalCell 2241383) 25

theorem covered314 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell314 := by
  apply covered_accept cell314 0
  · decide +kernel
  · decide +kernel

abbrev cell315 : Cell := childCell (ordinalCell 2241383) 26

theorem covered315 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell315 := by
  apply covered_accept cell315 0
  · decide +kernel
  · decide +kernel

abbrev cell316 : Cell := childCell (ordinalCell 2241383) 27

theorem covered316 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell316 := by
  apply covered_accept cell316 0
  · decide +kernel
  · decide +kernel

abbrev cell317 : Cell := childCell (ordinalCell 2241383) 28

abbrev cell318 : Cell := childCell (childCell (ordinalCell 2241383) 28) 0

theorem covered318 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell318 := by
  apply covered_reject cell318 1
  · decide +kernel
  · decide +kernel

abbrev cell319 : Cell := childCell (childCell (ordinalCell 2241383) 28) 1

theorem covered319 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell319 := by
  apply covered_reject cell319 1
  · decide +kernel
  · decide +kernel

abbrev cell320 : Cell := childCell (childCell (ordinalCell 2241383) 28) 2

theorem covered320 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell320 := by
  apply covered_reject cell320 1
  · decide +kernel
  · decide +kernel

abbrev cell321 : Cell := childCell (childCell (ordinalCell 2241383) 28) 3

theorem covered321 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell321 := by
  apply covered_accept cell321 0
  · decide +kernel
  · decide +kernel

abbrev cell322 : Cell := childCell (childCell (ordinalCell 2241383) 28) 4

theorem covered322 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell322 := by
  apply covered_reject cell322 0
  · decide +kernel
  · decide +kernel

abbrev cell323 : Cell := childCell (childCell (ordinalCell 2241383) 28) 5

theorem covered323 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell323 := by
  apply covered_reject cell323 0
  · decide +kernel
  · decide +kernel

abbrev cell324 : Cell := childCell (childCell (ordinalCell 2241383) 28) 6

theorem covered324 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell324 := by
  apply covered_reject cell324 1
  · decide +kernel
  · decide +kernel

abbrev cell325 : Cell := childCell (childCell (ordinalCell 2241383) 28) 7

theorem covered325 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell325 := by
  apply covered_reject cell325 1
  · decide +kernel
  · decide +kernel

abbrev cell326 : Cell := childCell (childCell (ordinalCell 2241383) 28) 8

theorem covered326 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell326 := by
  apply covered_reject cell326 0
  · decide +kernel
  · decide +kernel

abbrev cell327 : Cell := childCell (childCell (ordinalCell 2241383) 28) 9

theorem covered327 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell327 := by
  apply covered_reject cell327 1
  · decide +kernel
  · decide +kernel

abbrev cell328 : Cell := childCell (childCell (ordinalCell 2241383) 28) 10

theorem covered328 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell328 := by
  apply covered_reject cell328 1
  · decide +kernel
  · decide +kernel

abbrev cell329 : Cell := childCell (childCell (ordinalCell 2241383) 28) 11

theorem covered329 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell329 := by
  apply covered_reject cell329 1
  · decide +kernel
  · decide +kernel

abbrev cell330 : Cell := childCell (childCell (ordinalCell 2241383) 28) 12

theorem covered330 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell330 := by
  apply covered_reject cell330 0
  · decide +kernel
  · decide +kernel

abbrev cell331 : Cell := childCell (childCell (ordinalCell 2241383) 28) 13

theorem covered331 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell331 := by
  apply covered_reject cell331 0
  · decide +kernel
  · decide +kernel

abbrev cell332 : Cell := childCell (childCell (ordinalCell 2241383) 28) 14

theorem covered332 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell332 := by
  apply covered_reject cell332 1
  · decide +kernel
  · decide +kernel

abbrev cell333 : Cell := childCell (childCell (ordinalCell 2241383) 28) 15

theorem covered333 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell333 := by
  apply covered_reject cell333 1
  · decide +kernel
  · decide +kernel

abbrev cell334 : Cell := childCell (childCell (ordinalCell 2241383) 28) 16

theorem covered334 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell334 := by
  apply covered_reject cell334 0
  · decide +kernel
  · decide +kernel

abbrev cell335 : Cell := childCell (childCell (ordinalCell 2241383) 28) 17

theorem covered335 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell335 := by
  apply covered_reject cell335 0
  · decide +kernel
  · decide +kernel

abbrev cell336 : Cell := childCell (childCell (ordinalCell 2241383) 28) 18

theorem covered336 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell336 := by
  apply covered_accept cell336 0
  · decide +kernel
  · decide +kernel

abbrev cell337 : Cell := childCell (childCell (ordinalCell 2241383) 28) 19

theorem covered337 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell337 := by
  apply covered_accept cell337 0
  · decide +kernel
  · decide +kernel

abbrev cell338 : Cell := childCell (childCell (ordinalCell 2241383) 28) 20

theorem covered338 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell338 := by
  apply covered_reject cell338 0
  · decide +kernel
  · decide +kernel

abbrev cell339 : Cell := childCell (childCell (ordinalCell 2241383) 28) 21

theorem covered339 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell339 := by
  apply covered_reject cell339 0
  · decide +kernel
  · decide +kernel

abbrev cell340 : Cell := childCell (childCell (ordinalCell 2241383) 28) 22

theorem covered340 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell340 := by
  apply covered_reject cell340 0
  · decide +kernel
  · decide +kernel

abbrev cell341 : Cell := childCell (childCell (ordinalCell 2241383) 28) 23

theorem covered341 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell341 := by
  apply covered_reject cell341 0
  · decide +kernel
  · decide +kernel

abbrev cell342 : Cell := childCell (childCell (ordinalCell 2241383) 28) 24

theorem covered342 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell342 := by
  apply covered_reject cell342 0
  · decide +kernel
  · decide +kernel

abbrev cell343 : Cell := childCell (childCell (ordinalCell 2241383) 28) 25

theorem covered343 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell343 := by
  apply covered_reject cell343 0
  · decide +kernel
  · decide +kernel

abbrev cell344 : Cell := childCell (childCell (ordinalCell 2241383) 28) 26

theorem covered344 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell344 := by
  apply covered_reject cell344 1
  · decide +kernel
  · decide +kernel

abbrev cell345 : Cell := childCell (childCell (ordinalCell 2241383) 28) 27

theorem covered345 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell345 := by
  apply covered_accept cell345 0
  · decide +kernel
  · decide +kernel

abbrev cell346 : Cell := childCell (childCell (ordinalCell 2241383) 28) 28

theorem covered346 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell346 := by
  apply covered_reject cell346 0
  · decide +kernel
  · decide +kernel

abbrev cell347 : Cell := childCell (childCell (ordinalCell 2241383) 28) 29

theorem covered347 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell347 := by
  apply covered_reject cell347 0
  · decide +kernel
  · decide +kernel

abbrev cell348 : Cell := childCell (childCell (ordinalCell 2241383) 28) 30

theorem covered348 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell348 := by
  apply covered_reject cell348 0
  · decide +kernel
  · decide +kernel

abbrev cell349 : Cell := childCell (childCell (ordinalCell 2241383) 28) 31

theorem covered349 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell349 := by
  apply covered_reject cell349 0
  · decide +kernel
  · decide +kernel

theorem covered317 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell317 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered318
  · exact covered319
  · exact covered320
  · exact covered321
  · exact covered322
  · exact covered323
  · exact covered324
  · exact covered325
  · exact covered326
  · exact covered327
  · exact covered328
  · exact covered329
  · exact covered330
  · exact covered331
  · exact covered332
  · exact covered333
  · exact covered334
  · exact covered335
  · exact covered336
  · exact covered337
  · exact covered338
  · exact covered339
  · exact covered340
  · exact covered341
  · exact covered342
  · exact covered343
  · exact covered344
  · exact covered345
  · exact covered346
  · exact covered347
  · exact covered348
  · exact covered349

abbrev cell350 : Cell := childCell (ordinalCell 2241383) 29

theorem covered350 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell350 := by
  apply covered_accept cell350 0
  · decide +kernel
  · decide +kernel

abbrev cell351 : Cell := childCell (ordinalCell 2241383) 30

abbrev cell352 : Cell := childCell (childCell (ordinalCell 2241383) 30) 0

theorem covered352 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell352 := by
  apply covered_reject cell352 1
  · decide +kernel
  · decide +kernel

abbrev cell353 : Cell := childCell (childCell (ordinalCell 2241383) 30) 1

theorem covered353 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell353 := by
  apply covered_accept cell353 0
  · decide +kernel
  · decide +kernel

abbrev cell354 : Cell := childCell (childCell (ordinalCell 2241383) 30) 2

theorem covered354 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell354 := by
  apply covered_accept cell354 0
  · decide +kernel
  · decide +kernel

abbrev cell355 : Cell := childCell (childCell (ordinalCell 2241383) 30) 3

theorem covered355 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell355 := by
  apply covered_accept cell355 0
  · decide +kernel
  · decide +kernel

abbrev cell356 : Cell := childCell (childCell (ordinalCell 2241383) 30) 4

theorem covered356 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell356 := by
  apply covered_reject cell356 1
  · decide +kernel
  · decide +kernel

abbrev cell357 : Cell := childCell (childCell (ordinalCell 2241383) 30) 5

theorem covered357 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell357 := by
  apply covered_reject cell357 1
  · decide +kernel
  · decide +kernel

abbrev cell358 : Cell := childCell (childCell (ordinalCell 2241383) 30) 6

theorem covered358 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell358 := by
  apply covered_reject cell358 1
  · decide +kernel
  · decide +kernel

abbrev cell359 : Cell := childCell (childCell (ordinalCell 2241383) 30) 7

theorem covered359 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell359 := by
  apply covered_reject cell359 4
  · decide +kernel
  · decide +kernel

abbrev cell360 : Cell := childCell (childCell (ordinalCell 2241383) 30) 8

theorem covered360 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell360 := by
  apply covered_reject cell360 1
  · decide +kernel
  · decide +kernel

abbrev cell361 : Cell := childCell (childCell (ordinalCell 2241383) 30) 9

theorem covered361 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell361 := by
  apply covered_reject cell361 1
  · decide +kernel
  · decide +kernel

abbrev cell362 : Cell := childCell (childCell (ordinalCell 2241383) 30) 10

theorem covered362 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell362 := by
  apply covered_reject cell362 1
  · decide +kernel
  · decide +kernel

abbrev cell363 : Cell := childCell (childCell (ordinalCell 2241383) 30) 11

theorem covered363 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell363 := by
  apply covered_accept cell363 0
  · decide +kernel
  · decide +kernel

abbrev cell364 : Cell := childCell (childCell (ordinalCell 2241383) 30) 12

theorem covered364 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell364 := by
  apply covered_reject cell364 1
  · decide +kernel
  · decide +kernel

abbrev cell365 : Cell := childCell (childCell (ordinalCell 2241383) 30) 13

theorem covered365 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell365 := by
  apply covered_reject cell365 1
  · decide +kernel
  · decide +kernel

abbrev cell366 : Cell := childCell (childCell (ordinalCell 2241383) 30) 14

theorem covered366 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell366 := by
  apply covered_reject cell366 1
  · decide +kernel
  · decide +kernel

abbrev cell367 : Cell := childCell (childCell (ordinalCell 2241383) 30) 15

theorem covered367 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell367 := by
  apply covered_reject cell367 1
  · decide +kernel
  · decide +kernel

abbrev cell368 : Cell := childCell (childCell (ordinalCell 2241383) 30) 16

theorem covered368 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell368 := by
  apply covered_accept cell368 0
  · decide +kernel
  · decide +kernel

abbrev cell369 : Cell := childCell (childCell (ordinalCell 2241383) 30) 17

theorem covered369 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell369 := by
  apply covered_accept cell369 0
  · decide +kernel
  · decide +kernel

abbrev cell370 : Cell := childCell (childCell (ordinalCell 2241383) 30) 18

theorem covered370 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell370 := by
  apply covered_reject cell370 5
  · decide +kernel
  · decide +kernel

abbrev cell371 : Cell := childCell (childCell (ordinalCell 2241383) 30) 19

theorem covered371 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell371 := by
  apply covered_accept cell371 0
  · decide +kernel
  · decide +kernel

abbrev cell372 : Cell := childCell (childCell (ordinalCell 2241383) 30) 20

theorem covered372 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell372 := by
  apply covered_reject cell372 1
  · decide +kernel
  · decide +kernel

abbrev cell373 : Cell := childCell (childCell (ordinalCell 2241383) 30) 21

theorem covered373 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell373 := by
  apply covered_accept cell373 0
  · decide +kernel
  · decide +kernel

abbrev cell374 : Cell := childCell (childCell (ordinalCell 2241383) 30) 22

theorem covered374 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell374 := by
  apply covered_reject cell374 4
  · decide +kernel
  · decide +kernel

abbrev cell375 : Cell := childCell (childCell (ordinalCell 2241383) 30) 23

theorem covered375 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell375 := by
  apply covered_accept cell375 0
  · decide +kernel
  · decide +kernel

abbrev cell376 : Cell := childCell (childCell (ordinalCell 2241383) 30) 24

theorem covered376 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell376 := by
  apply covered_reject cell376 1
  · decide +kernel
  · decide +kernel

abbrev cell377 : Cell := childCell (childCell (ordinalCell 2241383) 30) 25

theorem covered377 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell377 := by
  apply covered_accept cell377 0
  · decide +kernel
  · decide +kernel

abbrev cell378 : Cell := childCell (childCell (ordinalCell 2241383) 30) 26

theorem covered378 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell378 := by
  apply covered_reject cell378 5
  · decide +kernel
  · decide +kernel

abbrev cell379 : Cell := childCell (childCell (ordinalCell 2241383) 30) 27

theorem covered379 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell379 := by
  apply covered_reject cell379 5
  · decide +kernel
  · decide +kernel

abbrev cell380 : Cell := childCell (childCell (ordinalCell 2241383) 30) 28

theorem covered380 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell380 := by
  apply covered_reject cell380 1
  · decide +kernel
  · decide +kernel

abbrev cell381 : Cell := childCell (childCell (ordinalCell 2241383) 30) 29

theorem covered381 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell381 := by
  apply covered_reject cell381 1
  · decide +kernel
  · decide +kernel

abbrev cell382 : Cell := childCell (childCell (ordinalCell 2241383) 30) 30

theorem covered382 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell382 := by
  apply covered_reject cell382 1
  · decide +kernel
  · decide +kernel

abbrev cell383 : Cell := childCell (childCell (ordinalCell 2241383) 30) 31

theorem covered383 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell383 := by
  apply covered_accept cell383 0
  · decide +kernel
  · decide +kernel

theorem covered351 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell351 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered352
  · exact covered353
  · exact covered354
  · exact covered355
  · exact covered356
  · exact covered357
  · exact covered358
  · exact covered359
  · exact covered360
  · exact covered361
  · exact covered362
  · exact covered363
  · exact covered364
  · exact covered365
  · exact covered366
  · exact covered367
  · exact covered368
  · exact covered369
  · exact covered370
  · exact covered371
  · exact covered372
  · exact covered373
  · exact covered374
  · exact covered375
  · exact covered376
  · exact covered377
  · exact covered378
  · exact covered379
  · exact covered380
  · exact covered381
  · exact covered382
  · exact covered383

abbrev cell384 : Cell := childCell (ordinalCell 2241383) 31

theorem covered384 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell384 := by
  apply covered_accept cell384 0
  · decide +kernel
  · decide +kernel

theorem covered0 : CoveredCell ClosedPhaseDomain phaseCentreLabel cell0 := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered1
  · exact covered2
  · exact covered3
  · exact covered4
  · exact covered5
  · exact covered38
  · exact covered39
  · exact covered72
  · exact covered73
  · exact covered106
  · exact covered107
  · exact covered140
  · exact covered141
  · exact covered142
  · exact covered175
  · exact covered208
  · exact covered209
  · exact covered210
  · exact covered211
  · exact covered212
  · exact covered213
  · exact covered246
  · exact covered247
  · exact covered280
  · exact covered281
  · exact covered314
  · exact covered315
  · exact covered316
  · exact covered317
  · exact covered350
  · exact covered351
  · exact covered384

end Seed0024ClusterTube20261007.CompositionalCentre385

#print axioms Seed0024ClusterTube20261007.CompositionalCentre385.covered_reject
#print axioms Seed0024ClusterTube20261007.CompositionalCentre385.covered_accept
#print axioms Seed0024ClusterTube20261007.CompositionalCentre385.covered0
