import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_277730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 8)))
def hex_277730 : String := "434440080640080644400A4106054041420A0A0A4142430644050606420506"
theorem cover_277730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_277730)
  decide +kernel
#print axioms cover_277730

def state_277763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 9)))
def hex_277763 : String := "424344400541054342444005410543424440050605050905050905444005410542430909090509"
theorem cover_277763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 39) (hex := hex_277763)
  decide +kernel
#print axioms cover_277763

def state_277807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
def hex_277807 : String := "43424408050542444105080505"
theorem cover_277807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_277807)
  decide +kernel
#print axioms cover_277807

def state_277821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 18)))
def hex_277821 : String := "424441400743074207070707440807"
theorem cover_277821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277821 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_277821)
  decide +kernel
#print axioms cover_277821

def state_277836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 18)))
def hex_277836 : String := "424441404309094342444140094307090707094244410940094342070742440A070909094043070A430742444140070707074408070909"
theorem cover_277836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_277836)
  decide +kernel
#print axioms cover_277836

def state_277891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
def hex_277891 : String := "40084307420707"
theorem cover_277891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277891 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_277891)
  decide +kernel
#print axioms cover_277891

def state_277898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 19)))
def hex_277898 : String := "410907"
theorem cover_277898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_277898)
  decide +kernel
#print axioms cover_277898

def state_277901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 9)))
def hex_277901 : String := "444140424309090942434441400943424441090A090909400A4342440A4109070A0A09440A0909400A4243440A070A434408070A09"
theorem cover_277901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_277901)
  decide +kernel
#print axioms cover_277901

def state_277954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 9)))
def hex_277954 : String := "43444109080909"
theorem cover_277954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_277954)
  decide +kernel
#print axioms cover_277954

def state_277967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 18)))
def hex_277967 : String := "43420A0542444005080505"
theorem cover_277967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_277967)
  decide +kernel
#print axioms cover_277967

def state_277979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 18)))
def hex_277979 : String := "42444041064306420A06060A440606"
theorem cover_277979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277979 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_277979)
  decide +kernel
#print axioms cover_277979
end Mub6.Numerical.CircleFullPrototype.Forest
