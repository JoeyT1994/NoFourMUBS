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
def state_287316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
def hex_287316 : String := "43400A0A40444241430A4044070A0843094044090A09414305400506430540444209054241050A0509420A41430540050A430A400A0A44420906420A410A0A"
theorem cover_287316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_287316)
  decide +kernel
#print axioms cover_287316

def state_287380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_287380 : String := "430A4044090A09"
theorem cover_287380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_287380)
  decide +kernel
#print axioms cover_287380

def state_287388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
def hex_287388 : String := "4044090A09"
theorem cover_287388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_287388)
  decide +kernel
#print axioms cover_287388

def state_287396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 8)))
def hex_287396 : String := "4243094044090A09434044090A0940440942410A0A414005430544090A404308444209410508420A410508430944090909"
theorem cover_287396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_287396)
  decide +kernel
#print axioms cover_287396

def state_287445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 8)))
def hex_287445 : String := "42094309404409414240060940080942060809"
theorem cover_287445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_287445)
  decide +kernel
#print axioms cover_287445

def state_287464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 9)))
def hex_287464 : String := "41420A430A4044420A410A0A0A0A420A4307404441420640060706060A"
theorem cover_287464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_287464)
  decide +kernel
#print axioms cover_287464

def state_287493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_287493 : String := "4409410A0A"
theorem cover_287493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_287493)
  decide +kernel
#print axioms cover_287493

def state_287498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_287498 : String := "410A0A"
theorem cover_287498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_287498)
  decide +kernel
#print axioms cover_287498

def state_287504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 4)))
def hex_287504 : String := "08"
theorem cover_287504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_287504)
  decide +kernel
#print axioms cover_287504

def state_287508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 8)))
def hex_287508 : String := "4241074043440708070841400706404344420706424107404344070A07084105404305074344050507074344060808"
theorem cover_287508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_287508)
  decide +kernel
#print axioms cover_287508
end Mub6.Numerical.CircleFullPrototype.Forest
