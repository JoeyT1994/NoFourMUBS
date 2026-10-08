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
def state_1522074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 67 else 87)))
def hex_1522074 : String := "4007420744074143404207440706080707"
theorem cover_1522074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522074 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1522074)
  decide +kernel
#print axioms cover_1522074

def state_1522091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 87)))
def hex_1522091 : String := "4340070707"
theorem cover_1522091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522091 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1522091)
  decide +kernel
#print axioms cover_1522091

def state_1522096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 43)))
def hex_1522096 : String := "424407410A074408414308404208080808"
theorem cover_1522096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1522096)
  decide +kernel
#print axioms cover_1522096

def state_1522113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 43)))
def hex_1522113 : String := "434042074406414306070606400742074407410806"
theorem cover_1522113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522113 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1522113)
  decide +kernel
#print axioms cover_1522113

def state_1522135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 42)))
def hex_1522135 : String := "08"
theorem cover_1522135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522135 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1522135)
  decide +kernel
#print axioms cover_1522135

def state_1522138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 32 else 43)))
def hex_1522138 : String := "404244084143400A08404244080A0A0843400906400A0844080A08"
theorem cover_1522138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522138 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1522138)
  decide +kernel
#print axioms cover_1522138

def state_1522168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 86)))
def hex_1522168 : String := "410807"
theorem cover_1522168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1522168)
  decide +kernel
#print axioms cover_1522168

def state_1522173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 66 else 87)))
def hex_1522173 : String := "40424441080741430A40064244080A0A0A0A4244084108084408410808"
theorem cover_1522173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522173 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1522173)
  decide +kernel
#print axioms cover_1522173

def state_1522202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 67 else 87)))
def hex_1522202 : String := "40424407410607440A0A42440841434042440806080840060843404207080840070844084143400A0840060843400808404244070A0A08"
theorem cover_1522202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522202 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1522202)
  decide +kernel
#print axioms cover_1522202

def state_1522257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 87)))
def hex_1522257 : String := "4340424407410A070A42080840420744070A420744074143084042070808430807"
theorem cover_1522257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522257 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1522257)
  decide +kernel
#print axioms cover_1522257

def state_1522290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 33 else 43)))
def hex_1522290 : String := "4441080841430A400A4244080A0A430A400A4244080A0A"
theorem cover_1522290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522290 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1522290)
  decide +kernel
#print axioms cover_1522290

def state_1522313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 43)))
def hex_1522313 : String := "4244084108084408410808"
theorem cover_1522313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1522313)
  decide +kernel
#print axioms cover_1522313
end Mub6.Numerical.CircleFullD0.Forest
