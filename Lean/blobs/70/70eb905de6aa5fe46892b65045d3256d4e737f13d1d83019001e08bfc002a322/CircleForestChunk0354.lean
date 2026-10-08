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
def state_1022341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 150 else (if j.val < 4 then 207 else 203)))
def hex_1022341 : String := "41404443420A4107080A4342414007440A050A070A44094342410540440905054140070940440907094241400A050941400A090A40440A0A44094342090909"
theorem cover_1022341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1022341)
  decide +kernel
#print axioms cover_1022341

def state_1022404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 203)))
def hex_1022404 : String := "41404443070A0744430909434241074007090742414007060A0740440843080A440943420908420909"
theorem cover_1022404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022404 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1022404)
  decide +kernel
#print axioms cover_1022404

def state_1022445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 101)))
def hex_1022445 : String := "4409434241404409430505050941404408430606060942414044094309090909414044094306060609"
theorem cover_1022445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1022445)
  decide +kernel
#print axioms cover_1022445

def state_1022487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
def hex_1022487 : String := "440843084206414008440843080A08"
theorem cover_1022487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1022487)
  decide +kernel
#print axioms cover_1022487

def state_1022503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 100)))
def hex_1022503 : String := "430809"
theorem cover_1022503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1022503)
  decide +kernel
#print axioms cover_1022503

def state_1022507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 101)))
def hex_1022507 : String := "42414044084308420608440843050940060808"
theorem cover_1022507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1022507)
  decide +kernel
#print axioms cover_1022507

def state_1022526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 101)))
def hex_1022526 : String := "4241404443060643420641400609060644094309094006094140440843084241400A0940060941400809084409430909400809"
theorem cover_1022526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1022526)
  decide +kernel
#print axioms cover_1022526
end Mub6.Numerical.CircleFullD0.Forest
