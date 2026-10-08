import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_948031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 100 else (if j.val < 4 then 34 else 54)))
def hex_948031 : String := "410944434009050709"
theorem cover_948031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_948031)
  decide +kernel
#print axioms cover_948031

def state_948041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 101 else (if j.val < 4 then 34 else 54)))
def hex_948041 : String := "44434042094144430509094405094241070741440708440505400942074107074340090809"
theorem cover_948041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948041 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_948041)
  decide +kernel
#print axioms cover_948041

def state_948078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 101 else (if j.val < 4 then 34 else 54)))
def hex_948078 : String := "4443404205050540420941440A090A4207410705434042094109440506420841080509"
theorem cover_948078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948078 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_948078)
  decide +kernel
#print axioms cover_948078

def state_948113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 35 else 54)))
def hex_948113 : String := "40094209410944434009060609"
theorem cover_948113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948113 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_948113)
  decide +kernel
#print axioms cover_948113

def state_948126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 55)))
def hex_948126 : String := "4340090909"
theorem cover_948126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_948126)
  decide +kernel
#print axioms cover_948126

def state_948135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
def hex_948135 : String := "424106444306090606"
theorem cover_948135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948135 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_948135)
  decide +kernel
#print axioms cover_948135

def state_948146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 54)))
def hex_948146 : String := "44430A40090A0A"
theorem cover_948146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948146 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_948146)
  decide +kernel
#print axioms cover_948146

def state_948153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 54)))
def hex_948153 : String := "444340424106444306400609060642410A4443054042070707080A4042094109444340064209060909424109440707410A44434042070A07070A430609"
theorem cover_948153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_948153)
  decide +kernel
#print axioms cover_948153

def state_948214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 54)))
def hex_948214 : String := "410A444340060A404241064443064006424106444306070606060642410A44430A40424107070A0A0A0A0A"
theorem cover_948214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948214 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 43) (hex := hex_948214)
  decide +kernel
#print axioms cover_948214

def state_948258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
def hex_948258 : String := "42094105444340064209060505"
theorem cover_948258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948258 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_948258)
  decide +kernel
#print axioms cover_948258

def state_948272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 54)))
def hex_948272 : String := "410544434009420741074407070509"
theorem cover_948272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_948272)
  decide +kernel
#print axioms cover_948272
end Mub6.Numerical.CircleFullD0.Forest
