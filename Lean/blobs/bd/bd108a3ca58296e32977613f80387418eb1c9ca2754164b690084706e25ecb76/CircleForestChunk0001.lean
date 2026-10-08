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
def state_20 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_20 : String := "404142054305054243050543050541424305054305054243050505"
theorem cover_20 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_20 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 27) (hex := hex_20)
  decide +kernel
#print axioms cover_20

def state_48 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_48 : String := "414243440506440543054008054344050808424344054105404205050544054143050505434405414205050505"
theorem cover_48 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_48 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_48)
  decide +kernel
#print axioms cover_48

def state_93 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_93 : String := "414243440506440540430505054306054243060505"
theorem cover_93 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_93 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_93)
  decide +kernel
#print axioms cover_93

def state_116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_116 : String := "414243440505440644054007054344050544420540410505054244050505424344050507430544414205050505"
theorem cover_116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_116)
  decide +kernel
#print axioms cover_116

def state_161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_161 : String := "41424344050544064044050505430544060542430544060505"
theorem cover_161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_161 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_161)
  decide +kernel
#print axioms cover_161

def state_187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_187 : String := "41424344070744074007410708430744420705074243440541080508430507"
theorem cover_187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_187)
  decide +kernel
#print axioms cover_187

def state_221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
def hex_221 : String := "440540430541070505"
theorem cover_221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_221)
  decide +kernel
#print axioms cover_221

def state_231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
def hex_231 : String := "404405414208050505"
theorem cover_231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_231)
  decide +kernel
#print axioms cover_231
end Mub6.Numerical.CircleFullPrototype.Forest
