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
def state_147419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
def hex_147419 : String := "4243090843440809440809"
theorem cover_147419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_147419)
  decide +kernel
#print axioms cover_147419

def state_147431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 13 else 13)))
def hex_147431 : String := "43440809440709"
theorem cover_147431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_147431)
  decide +kernel
#print axioms cover_147431

def state_147440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 26 else 26)))
def hex_147440 : String := "414008434406414206060844084142084008430644064106060808"
theorem cover_147440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147440 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_147440)
  decide +kernel
#print axioms cover_147440

def state_147467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 26 else 27)))
def hex_147467 : String := "4140094341420944400943064106090909414205444009434142054406050941050905094009430909"
theorem cover_147467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_147467)
  decide +kernel
#print axioms cover_147467

def state_147508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 27 else 13)))
def hex_147508 : String := "44414008440841420543400844084105080508084140414205430905094105420543444008414205430905070505400841420743090707"
theorem cover_147508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_147508)
  decide +kernel
#print axioms cover_147508

def state_147563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
def hex_147563 : String := "400808"
theorem cover_147563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147563 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_147563)
  decide +kernel
#print axioms cover_147563

def state_147566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_147566 : String := "40094209434109094144400942094309090509"
theorem cover_147566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_147566)
  decide +kernel
#print axioms cover_147566

def state_147585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_147585 : String := "4440084207444143080708414340420744080642074407410507050840064206410506"
theorem cover_147585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_147585)
  decide +kernel
#print axioms cover_147585

def state_147623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_147623 : String := "4307440841424007430744084107080708"
theorem cover_147623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147623 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_147623)
  decide +kernel
#print axioms cover_147623

def state_147641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 6)))
def hex_147641 : String := "44054142400743440541070544054142400743070705050505"
theorem cover_147641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147641 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 25) (hex := hex_147641)
  decide +kernel
#print axioms cover_147641
end Mub6.Numerical.CircleFullPrototype.Forest
