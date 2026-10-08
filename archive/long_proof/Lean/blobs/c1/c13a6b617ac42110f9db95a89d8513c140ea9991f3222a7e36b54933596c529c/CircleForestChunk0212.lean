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
def state_72255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_72255 : String := "424344050744430540414205440505050543084440070507434406424405070644424305400A05064243440507444009050809"
theorem cover_72255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_72255)
  decide +kernel
#print axioms cover_72255

def state_72307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_72307 : String := "434405404405414205050505444043054142050505054043440541420707054441070507430507"
theorem cover_72307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_72307)
  decide +kernel
#print axioms cover_72307

def state_72346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_72346 : String := "43440A4042440541430707050A42050744400A0A4042430A4407070A424305440505430A0A"
theorem cover_72346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_72346)
  decide +kernel
#print axioms cover_72346

def state_72385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_72385 : String := "4344050844414305404205050505410808"
theorem cover_72385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_72385)
  decide +kernel
#print axioms cover_72385

def state_72402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_72402 : String := "43444142054043050505054142084440430606050642050644414243054006054340440606050642050641424308440608064243054405054306440505"
theorem cover_72402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_72402)
  decide +kernel
#print axioms cover_72402

def state_72463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_72463 : String := "424305440505434405054405420505"
theorem cover_72463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_72463)
  decide +kernel
#print axioms cover_72463
end Mub6.Numerical.CircleFullPrototype.Forest
