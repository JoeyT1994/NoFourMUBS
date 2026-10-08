import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1038265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1038265 : String := "4243440840420807424305440808084440080A404244080707424441430840070A08410743084007420807440A0743440A400808440A40070A"
theorem cover_1038265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1038265)
  decide +kernel
#print axioms cover_1038265

def state_1038324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1038324 : String := "4243444142430A070A4207430A07410A054441424407070A074142070606434441430A0A430A4407060A44410A0606"
theorem cover_1038324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_1038324)
  decide +kernel
#print axioms cover_1038324

def state_1038371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1038371 : String := "424344420543050705074344430A060606"
theorem cover_1038371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1038371)
  decide +kernel
#print axioms cover_1038371

def state_1038389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1038389 : String := "42434440410A42070A410742070A40410A420505410A42430A050A44074041070707430A4440410707070A"
theorem cover_1038389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1038389)
  decide +kernel
#print axioms cover_1038389

def state_1038432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1038432 : String := "4243444042054305074207430807400542434105050543050544070743444043084407060A0A440706"
theorem cover_1038432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1038432)
  decide +kernel
#print axioms cover_1038432

def state_1038480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_1038480 : String := "4344064044060A440641060644404306410506430605400A43440606440606"
theorem cover_1038480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 31) (hex := hex_1038480)
  decide +kernel
#print axioms cover_1038480
end Mub6.Numerical.CircleFullD0.Forest
