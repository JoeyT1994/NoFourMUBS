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
def state_998904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 213 else 175)))
def hex_998904 : String := "42410840444342080508080841404408060640440543054208054443050806"
theorem cover_998904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998904 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_998904)
  decide +kernel
#print axioms cover_998904

def state_998935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 87)))
def hex_998935 : String := "4443424106070642084106074306420806"
theorem cover_998935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998935 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_998935)
  decide +kernel
#print axioms cover_998935

def state_998952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 87)))
def hex_998952 : String := "4208410840444342084108404405430508440508080808"
theorem cover_998952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 23) (hex := hex_998952)
  decide +kernel
#print axioms cover_998952

def state_998975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
def hex_998975 : String := "44434241080741060742074108074342080608"
theorem cover_998975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998975 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_998975)
  decide +kernel
#print axioms cover_998975

def state_998996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 86)))
def hex_998996 : String := "430707"
theorem cover_998996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_998996)
  decide +kernel
#print axioms cover_998996

def state_999000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 87)))
def hex_999000 : String := "414240440743414207404407434207050707070707404443050743424140054405430507050542414044070A0707054407434207050707"
theorem cover_999000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999000 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_999000)
  decide +kernel
#print axioms cover_999000

def state_999055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 87)))
def hex_999055 : String := "414207404407434241400A070741400A4407080542074108070707"
theorem cover_999055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_999055)
  decide +kernel
#print axioms cover_999055

def state_999082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 43)))
def hex_999082 : String := "4407430707"
theorem cover_999082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999082 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_999082)
  decide +kernel
#print axioms cover_999082

def state_999090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 86)))
def hex_999090 : String := "434241404405060605054241404443410905094309094443060806404405430542414005080505440543054207054140050605"
theorem cover_999090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999090 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_999090)
  decide +kernel
#print axioms cover_999090

def state_999142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 106 else 87)))
def hex_999142 : String := "424106404405430542410605050606"
theorem cover_999142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_999142)
  decide +kernel
#print axioms cover_999142
end Mub6.Numerical.CircleFullD0.Forest
