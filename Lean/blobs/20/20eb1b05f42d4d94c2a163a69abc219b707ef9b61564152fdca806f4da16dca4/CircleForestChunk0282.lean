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
def state_143102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_143102 : String := "42430644050643064440070640410642060706"
theorem cover_143102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143102 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_143102)
  decide +kernel
#print axioms cover_143102

def state_143121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_143121 : String := "424306444042094106090640420641060806430644404107074106074041420643064407064243064409064306440740070606"
theorem cover_143121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143121 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_143121)
  decide +kernel
#print axioms cover_143121

def state_143172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_143172 : String := "404142434406414206060808434406410A0644410A080A084142430644064008054306444041060606400A0642084306444041060806400806"
theorem cover_143172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143172 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_143172)
  decide +kernel
#print axioms cover_143172

def state_143231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_143231 : String := "41420543444105400A4205070A0A424344090844050543440940410A42084307064142434409080A4344070A0A42094309094409400A410A09"
theorem cover_143231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_143231)
  decide +kernel
#print axioms cover_143231

def state_143289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_143289 : String := "420543440540410542054344050A050505"
theorem cover_143289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_143289)
  decide +kernel
#print axioms cover_143289

def state_143307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
def hex_143307 : String := "4344054042054105090505"
theorem cover_143307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_143307)
  decide +kernel
#print axioms cover_143307

def state_143320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 8)))
def hex_143320 : String := "404142050709410509"
theorem cover_143320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143320 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_143320)
  decide +kernel
#print axioms cover_143320
end Mub6.Numerical.CircleFullPrototype.Forest
