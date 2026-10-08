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
def state_73224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 41)))
def hex_73224 : String := "434041054205054142050542444340054105B8054340054105B805444340054105B8054340054105B80540054105420505"
theorem cover_73224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_73224)
  decide +kernel
#print axioms cover_73224

def state_73273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 20)))
def hex_73273 : String := "42440505440505"
theorem cover_73273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_73273)
  decide +kernel
#print axioms cover_73273

def state_73280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 21)))
def hex_73280 : String := "40410543440505054143440505054344424340050A05434005410544424340050A050542050505420643400541050705440505"
theorem cover_73280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73280 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 51) (hex := hex_73280)
  decide +kernel
#print axioms cover_73280

def state_73332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
def hex_73332 : String := "40410543420505054143420505054342444340050705434005410542444340050605054405050544064340050605420505"
theorem cover_73332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_73332)
  decide +kernel
#print axioms cover_73332

def state_73381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 21)))
def hex_73381 : String := "4041054342050505414342050505434244434005410509050909420505"
theorem cover_73381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_73381)
  decide +kernel
#print axioms cover_73381

def state_73410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
def hex_73410 : String := "42440505440505"
theorem cover_73410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_73410)
  decide +kernel
#print axioms cover_73410

def state_73421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
def hex_73421 : String := "43414206080808"
theorem cover_73421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_73421)
  decide +kernel
#print axioms cover_73421

def state_73431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 40 else (if j.val < 4 then 48 else 20)))
def hex_73431 : String := "4443404108060909434006414206444306060606400641420644090606"
theorem cover_73431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_73431)
  decide +kernel
#print axioms cover_73431

def state_73461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 40)))
def hex_73461 : String := "08"
theorem cover_73461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_73461)
  decide +kernel
#print axioms cover_73461
end Mub6.Numerical.CircleFullPrototype.Forest
