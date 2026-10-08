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
def state_1477017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 89) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
def hex_1477017 : String := "4344070744424041080808084240414344070544420608064344070544080506404143054408050807"
theorem cover_1477017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1477017)
  decide +kernel
#print axioms cover_1477017

def state_1477058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 59)))
def hex_1477058 : String := "42404143444206050544420640050606430544420605050640414305444240054305050505054143440705444206404305050606430744420640050605"
theorem cover_1477058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1477058)
  decide +kernel
#print axioms cover_1477058

def state_1477124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 90 else 58)))
def hex_1477124 : String := "444240070A404341070707434144420A400709424007064007090A0A4240070640434107070743410644420640070606410606"
theorem cover_1477124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477124 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1477124)
  decide +kernel
#print axioms cover_1477124

def state_1477175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 90 else 58)))
def hex_1477175 : String := "440A424007064043410705074341440A060A0A"
theorem cover_1477175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1477175)
  decide +kernel
#print axioms cover_1477175

def state_1477194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 91 else 58)))
def hex_1477194 : String := "410707"
theorem cover_1477194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477194 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1477194)
  decide +kernel
#print axioms cover_1477194

def state_1477197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 45 else 58)))
def hex_1477197 : String := "434144420A404341090A0A0A060A0A"
theorem cover_1477197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1477197)
  decide +kernel
#print axioms cover_1477197

def state_1477218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 90 else 116)))
def hex_1477218 : String := "4341444207400643410606074207400743410707074442074006434106060742074005434105050707"
theorem cover_1477218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1477218)
  decide +kernel
#print axioms cover_1477218
end Mub6.Numerical.CircleFullD0.Forest
