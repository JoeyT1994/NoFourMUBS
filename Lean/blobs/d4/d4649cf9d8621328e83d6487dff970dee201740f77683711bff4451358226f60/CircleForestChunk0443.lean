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
def state_181964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 15)))
def hex_181964 : String := "4344410542054043444105420540434441054205960505434441054205960505050543444105420540434441054205960505434407060606060505"
theorem cover_181964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181964 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_181964)
  decide +kernel
#print axioms cover_181964

def state_182024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 15)))
def hex_182024 : String := "43444109424009434441094240094344094108080909410808090941064240060608440906"
theorem cover_182024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182024 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 37) (hex := hex_182024)
  decide +kernel
#print axioms cover_182024

def state_182064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
def hex_182064 : String := "4240434441054205090505434407060640090A"
theorem cover_182064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182064 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_182064)
  decide +kernel
#print axioms cover_182064

def state_182088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 98) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 60)))
def hex_182088 : String := "4240434409050543440A050540090A"
theorem cover_182088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_182088)
  decide +kernel
#print axioms cover_182088

def state_182103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 60)))
def hex_182103 : String := "4240434441424005050996414205089644094105964344414240430705070A9641420540430705079644410A9641059640094344410996410896440909"
theorem cover_182103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_182103)
  decide +kernel
#print axioms cover_182103

def state_182164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 61)))
def hex_182164 : String := "414205084240434441050806054344410542050806064008430808"
theorem cover_182164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_182164)
  decide +kernel
#print axioms cover_182164

def state_182191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 30)))
def hex_182191 : String := "4441094240094409060906"
theorem cover_182191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182191 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_182191)
  decide +kernel
#print axioms cover_182191
end Mub6.Numerical.CircleFullPrototype.Forest
