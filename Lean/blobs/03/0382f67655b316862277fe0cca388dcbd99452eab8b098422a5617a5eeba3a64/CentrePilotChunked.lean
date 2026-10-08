import ConcretePhaseChecksNoInit
import Mathlib.Tactic.FinCases
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
open Seed0024ClusterTubeCover20261007
namespace Seed0024ClusterTube20261007.CentrePilotChunked

def tags0 : List UInt8 := [6]
theorem checked0 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 0] tags0=true := by
  decide +kernel

theorem covered0 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 0) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags0 [childCell (ordinalCell 2241383) 0] checked0
  exact List.mem_cons_self
#print axioms checked0

def tags1 : List UInt8 := [6]
theorem checked1 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 1] tags1=true := by
  decide +kernel

theorem covered1 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 1) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags1 [childCell (ordinalCell 2241383) 1] checked1
  exact List.mem_cons_self
#print axioms checked1

def tags2 : List UInt8 := [6]
theorem checked2 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 2] tags2=true := by
  decide +kernel

theorem covered2 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 2) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags2 [childCell (ordinalCell 2241383) 2] checked2
  exact List.mem_cons_self
#print axioms checked2

def tags3 : List UInt8 := [6]
theorem checked3 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 3] tags3=true := by
  decide +kernel

theorem covered3 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 3) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags3 [childCell (ordinalCell 2241383) 3] checked3
  exact List.mem_cons_self
#print axioms checked3

def tags4 : List UInt8 := [54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 6, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1]
theorem checked4 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 4] tags4=true := by
  decide +kernel

theorem covered4 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 4) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags4 [childCell (ordinalCell 2241383) 4] checked4
  exact List.mem_cons_self
#print axioms checked4

def tags5 : List UInt8 := [6]
theorem checked5 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 5] tags5=true := by
  decide +kernel

theorem covered5 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 5) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags5 [childCell (ordinalCell 2241383) 5] checked5
  exact List.mem_cons_self
#print axioms checked5

def tags6 : List UInt8 := [54, 1, 4, 4, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 1, 6, 4, 4, 1, 1, 1, 4]
theorem checked6 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 6] tags6=true := by
  decide +kernel

theorem covered6 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 6) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags6 [childCell (ordinalCell 2241383) 6] checked6
  exact List.mem_cons_self
#print axioms checked6

def tags7 : List UInt8 := [6]
theorem checked7 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 7] tags7=true := by
  decide +kernel

theorem covered7 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 7) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags7 [childCell (ordinalCell 2241383) 7] checked7
  exact List.mem_cons_self
#print axioms checked7

def tags8 : List UInt8 := [54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 1, 1, 6, 1, 1, 1, 6, 1, 1, 1, 1]
theorem checked8 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 8] tags8=true := by
  decide +kernel

theorem covered8 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 8) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags8 [childCell (ordinalCell 2241383) 8] checked8
  exact List.mem_cons_self
#print axioms checked8

def tags9 : List UInt8 := [6]
theorem checked9 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 9] tags9=true := by
  decide +kernel

theorem covered9 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 9) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags9 [childCell (ordinalCell 2241383) 9] checked9
  exact List.mem_cons_self
#print axioms checked9

def tags10 : List UInt8 := [54, 1, 6, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 6, 6, 1, 6, 1, 5, 1, 1, 1, 6]
theorem checked10 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 10] tags10=true := by
  decide +kernel

theorem covered10 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 10) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags10 [childCell (ordinalCell 2241383) 10] checked10
  exact List.mem_cons_self
#print axioms checked10

def tags11 : List UInt8 := [6]
theorem checked11 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 11] tags11=true := by
  decide +kernel

theorem covered11 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 11) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags11 [childCell (ordinalCell 2241383) 11] checked11
  exact List.mem_cons_self
#print axioms checked11

def tags12 : List UInt8 := [1]
theorem checked12 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 12] tags12=true := by
  decide +kernel

theorem covered12 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 12) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags12 [childCell (ordinalCell 2241383) 12] checked12
  exact List.mem_cons_self
#print axioms checked12

def tags13 : List UInt8 := [54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 1, 1, 6, 1, 1, 1, 6, 1, 1, 1, 1]
theorem checked13 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 13] tags13=true := by
  decide +kernel

theorem covered13 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 13) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags13 [childCell (ordinalCell 2241383) 13] checked13
  exact List.mem_cons_self
#print axioms checked13

def tags14 : List UInt8 := [54, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
theorem checked14 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 14] tags14=true := by
  decide +kernel

theorem covered14 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 14) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags14 [childCell (ordinalCell 2241383) 14] checked14
  exact List.mem_cons_self
#print axioms checked14

def tags15 : List UInt8 := [6]
theorem checked15 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 15] tags15=true := by
  decide +kernel

theorem covered15 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 15) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags15 [childCell (ordinalCell 2241383) 15] checked15
  exact List.mem_cons_self
#print axioms checked15

def tags16 : List UInt8 := [6]
theorem checked16 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 16] tags16=true := by
  decide +kernel

theorem covered16 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 16) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags16 [childCell (ordinalCell 2241383) 16] checked16
  exact List.mem_cons_self
#print axioms checked16

def tags17 : List UInt8 := [6]
theorem checked17 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 17] tags17=true := by
  decide +kernel

theorem covered17 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 17) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags17 [childCell (ordinalCell 2241383) 17] checked17
  exact List.mem_cons_self
#print axioms checked17

def tags18 : List UInt8 := [6]
theorem checked18 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 18] tags18=true := by
  decide +kernel

theorem covered18 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 18) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags18 [childCell (ordinalCell 2241383) 18] checked18
  exact List.mem_cons_self
#print axioms checked18

def tags19 : List UInt8 := [6]
theorem checked19 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 19] tags19=true := by
  decide +kernel

theorem covered19 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 19) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags19 [childCell (ordinalCell 2241383) 19] checked19
  exact List.mem_cons_self
#print axioms checked19

def tags20 : List UInt8 := [54, 2, 6, 6, 6, 2, 2, 2, 6, 1, 6, 6, 6, 1, 6, 1, 6, 2, 2, 2, 2, 0, 0, 2, 2, 0, 0, 6, 6, 0, 0, 2, 6]
theorem checked20 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 20] tags20=true := by
  decide +kernel

theorem covered20 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 20) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags20 [childCell (ordinalCell 2241383) 20] checked20
  exact List.mem_cons_self
#print axioms checked20

def tags21 : List UInt8 := [6]
theorem checked21 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 21] tags21=true := by
  decide +kernel

theorem covered21 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 21) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags21 [childCell (ordinalCell 2241383) 21] checked21
  exact List.mem_cons_self
#print axioms checked21

def tags22 : List UInt8 := [54, 4, 6, 4, 4, 4, 4, 4, 4, 6, 6, 4, 6, 1, 6, 4, 4, 6, 6, 4, 6, 2, 6, 4, 4, 6, 6, 6, 6, 6, 6, 4, 6]
theorem checked22 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 22] tags22=true := by
  decide +kernel

theorem covered22 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 22) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags22 [childCell (ordinalCell 2241383) 22] checked22
  exact List.mem_cons_self
#print axioms checked22

def tags23 : List UInt8 := [6]
theorem checked23 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 23] tags23=true := by
  decide +kernel

theorem covered23 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 23) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags23 [childCell (ordinalCell 2241383) 23] checked23
  exact List.mem_cons_self
#print axioms checked23

def tags24 : List UInt8 := [54, 3, 6, 3, 6, 1, 6, 6, 6, 1, 3, 3, 3, 1, 1, 1, 6, 3, 6, 3, 6, 0, 6, 6, 6, 3, 3, 3, 3, 0, 0, 3, 6]
theorem checked24 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 24] tags24=true := by
  decide +kernel

theorem covered24 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 24) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags24 [childCell (ordinalCell 2241383) 24] checked24
  exact List.mem_cons_self
#print axioms checked24

def tags25 : List UInt8 := [6]
theorem checked25 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 25] tags25=true := by
  decide +kernel

theorem covered25 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 25) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags25 [childCell (ordinalCell 2241383) 25] checked25
  exact List.mem_cons_self
#print axioms checked25

def tags26 : List UInt8 := [6]
theorem checked26 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 26] tags26=true := by
  decide +kernel

theorem covered26 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 26) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags26 [childCell (ordinalCell 2241383) 26] checked26
  exact List.mem_cons_self
#print axioms checked26

def tags27 : List UInt8 := [6]
theorem checked27 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 27] tags27=true := by
  decide +kernel

theorem covered27 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 27) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags27 [childCell (ordinalCell 2241383) 27] checked27
  exact List.mem_cons_self
#print axioms checked27

def tags28 : List UInt8 := [54, 1, 1, 1, 6, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0]
theorem checked28 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 28] tags28=true := by
  decide +kernel

theorem covered28 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 28) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags28 [childCell (ordinalCell 2241383) 28] checked28
  exact List.mem_cons_self
#print axioms checked28

def tags29 : List UInt8 := [6]
theorem checked29 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 29] tags29=true := by
  decide +kernel

theorem covered29 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 29) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags29 [childCell (ordinalCell 2241383) 29] checked29
  exact List.mem_cons_self
#print axioms checked29

def tags30 : List UInt8 := [54, 1, 6, 6, 6, 1, 1, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 4, 6, 1, 6, 5, 5, 1, 1, 1, 6]
theorem checked30 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 30] tags30=true := by
  decide +kernel

theorem covered30 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 30) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags30 [childCell (ordinalCell 2241383) 30] checked30
  exact List.mem_cons_self
#print axioms checked30

def tags31 : List UInt8 := [6]
theorem checked31 : checkTape concretePhaseChecks [childCell (ordinalCell 2241383) 31] tags31=true := by
  decide +kernel

theorem covered31 : CoveredCell ClosedPhaseDomain phaseCentreLabel (childCell (ordinalCell 2241383) 31) := by
  apply checkTape_sound concretePhaseChecks ClosedPhaseDomain phaseCentreLabel concretePhaseChecks_sound
    tags31 [childCell (ordinalCell 2241383) 31] checked31
  exact List.mem_cons_self
#print axioms checked31

theorem covered : CoveredCell ClosedPhaseDomain phaseCentreLabel (ordinalCell 2241383) := by
  apply coveredCell_split
  intro m
  fin_cases m
  · exact covered0
  · exact covered1
  · exact covered2
  · exact covered3
  · exact covered4
  · exact covered5
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

end Seed0024ClusterTube20261007.CentrePilotChunked
#print axioms Seed0024ClusterTube20261007.CentrePilotChunked.covered
