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
def state_1021389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 36 else (if j.val < 4 then 50 else 51)))
def hex_1021389 : String := "41404305444205410506050540064305440505"
theorem cover_1021389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1021389)
  decide +kernel
#print axioms cover_1021389

def state_1021408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 37 else (if j.val < 4 then 50 else 51)))
def hex_1021408 : String := "41404344070744424107400643054408050707430A440A0A40430844084206410708430A4442410A40060808424105400605410A40080A"
theorem cover_1021408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021408 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1021408)
  decide +kernel
#print axioms cover_1021408

def state_1021467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1021467 : String := "44434206414006440843050606420641400644060606434206414006440505064206414006440643050506"
theorem cover_1021467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1021467)
  decide +kernel
#print axioms cover_1021467

def state_1021510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1021510 : String := "4443420541404409050509420941404409430505090943420541054044050505420541404405050540440606440505"
theorem cover_1021510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1021510)
  decide +kernel
#print axioms cover_1021510

def state_1021557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 63) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1021557 : String := "4006444309074342064140064405050642064140060706"
theorem cover_1021557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021557 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1021557)
  decide +kernel
#print axioms cover_1021557

def state_1021583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 100)))
def hex_1021583 : String := "4308424140440843080A444308094342414006090608420A41400A090A4006440843080641400844084308424140084408430709080808"
theorem cover_1021583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1021583)
  decide +kernel
#print axioms cover_1021583
end Mub6.Numerical.CircleFullD0.Forest
