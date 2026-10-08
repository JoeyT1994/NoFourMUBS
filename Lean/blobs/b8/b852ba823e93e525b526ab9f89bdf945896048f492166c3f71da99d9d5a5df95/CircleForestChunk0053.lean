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
def state_12608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 8)))
def hex_12608 : String := "41434405414340420505054042440741430707084405410A054205054305404208050544410A0741434042080842070A0A434008420705084305440508"
theorem cover_12608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_12608)
  decide +kernel
#print axioms cover_12608

def state_12669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
def hex_12669 : String := "42074143054405404107070705"
theorem cover_12669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_12669)
  decide +kernel
#print axioms cover_12669

def state_12684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 9)))
def hex_12684 : String := "4143094442064106080609"
theorem cover_12684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_12684)
  decide +kernel
#print axioms cover_12684

def state_12695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 9)))
def hex_12695 : String := "4143444143094440420941434009090A0842094143050A05090909444143444042080842060A40420808094440080A400806434440080909080909"
theorem cover_12695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_12695)
  decide +kernel
#print axioms cover_12695

def state_12754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
def hex_12754 : String := "42414309060941434440090909444041064309440606060609"
theorem cover_12754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12754 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_12754)
  decide +kernel
#print axioms cover_12754

def state_12779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
def hex_12779 : String := "43094440424305074305080509"
theorem cover_12779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_12779)
  decide +kernel
#print axioms cover_12779

def state_12792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_12792 : String := "424143440706064344050907414344054009420905444042070507404241060941434405060609420641064305064305440509"
theorem cover_12792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_12792)
  decide +kernel
#print axioms cover_12792

def state_12843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
def hex_12843 : String := "09"
theorem cover_12843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12843 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_12843)
  decide +kernel
#print axioms cover_12843

def state_12847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
def hex_12847 : String := "4341440706440742074008064106440606"
theorem cover_12847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12847 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_12847)
  decide +kernel
#print axioms cover_12847
end Mub6.Numerical.CircleFullPrototype.Forest
