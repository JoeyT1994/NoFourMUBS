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
def state_62176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
def hex_62176 : String := "4341420840440843404142080608414208440606080844084340414208440843400641420505050808414208440543050505080808"
theorem cover_62176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62176 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 53) (hex := hex_62176)
  decide +kernel
#print axioms cover_62176

def state_62232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
def hex_62232 : String := "40440A0A44434208400A440809084309424008064044080909"
theorem cover_62232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_62232)
  decide +kernel
#print axioms cover_62232

def state_62258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
def hex_62258 : String := "44434044410706074441420A070A410707404408074408410707430707"
theorem cover_62258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62258 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_62258)
  decide +kernel
#print axioms cover_62258

def state_62289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
def hex_62289 : String := "40444142430A084340064107074007410707420843060741424309400709074208074441424309084309404142440807074208054142440509050542050509"
theorem cover_62289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_62289)
  decide +kernel
#print axioms cover_62289

def state_62352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
def hex_62352 : String := "4044084142080708444142084340084142080A08080841420843400744414208070807400744080708"
theorem cover_62352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62352 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_62352)
  decide +kernel
#print axioms cover_62352

def state_62393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 19)))
def hex_62393 : String := "430940444107070744414209070909"
theorem cover_62393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_62393)
  decide +kernel
#print axioms cover_62393

def state_62408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
def hex_62408 : String := "420A400A440843094140070908"
theorem cover_62408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62408 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_62408)
  decide +kernel
#print axioms cover_62408
end Mub6.Numerical.CircleFullPrototype.Forest
