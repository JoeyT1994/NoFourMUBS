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
def state_1315416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
def hex_1315416 : String := "44424440410908414342064440090506064342084409080840084106084440094109094009414305064342440905050942084008410508"
theorem cover_1315416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1315416)
  decide +kernel
#print axioms cover_1315416

def state_1315472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1315472 : String := "430506"
theorem cover_1315472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1315472)
  decide +kernel
#print axioms cover_1315472

def state_1315476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
def hex_1315476 : String := "44424043054441054244404341054207054106420644400805064305064043070606054105420605050505"
theorem cover_1315476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 43) (hex := hex_1315476)
  decide +kernel
#print axioms cover_1315476

def state_1315519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
def hex_1315519 : String := "44424044410643420644404341054206050606060606064044410543050941054305064441054305060506"
theorem cover_1315519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 43) (hex := hex_1315519)
  decide +kernel
#print axioms cover_1315519

def state_1315562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1315562 : String := "40410543050805"
theorem cover_1315562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1315562)
  decide +kernel
#print axioms cover_1315562

def state_1315569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_1315569 : String := "444041064409080606"
theorem cover_1315569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315569 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1315569)
  decide +kernel
#print axioms cover_1315569

def state_1315578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
def hex_1315578 : String := "434440410542430544090505050544400941094244090609400905"
theorem cover_1315578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1315578)
  decide +kernel
#print axioms cover_1315578

def state_1315612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_1315612 : String := "4243444006410A060A4440084142444340084142070808080844430A4008410909430A08420844060808430A444006410A090A"
theorem cover_1315612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1315612)
  decide +kernel
#print axioms cover_1315612
end Mub6.Numerical.CircleFullD0.Forest
