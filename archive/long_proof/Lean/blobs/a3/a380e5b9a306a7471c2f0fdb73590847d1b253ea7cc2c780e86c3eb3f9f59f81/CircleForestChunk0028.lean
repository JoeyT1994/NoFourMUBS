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
def state_6513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 16 else 17)))
def hex_6513 : String := "414042440943074107070942080840424406430A410706064244434108064140090840064244060806430841404208070840420A064208084406430607"
theorem cover_6513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_6513)
  decide +kernel
#print axioms cover_6513

def state_6575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 16)))
def hex_6575 : String := "09"
theorem cover_6575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_6575)
  decide +kernel
#print axioms cover_6575

def state_6577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
def hex_6577 : String := "400909"
theorem cover_6577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_6577)
  decide +kernel
#print axioms cover_6577

def state_6581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
def hex_6581 : String := "42434441090641054005420506440905430609"
theorem cover_6581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6581 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_6581)
  decide +kernel
#print axioms cover_6581

def state_6603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 34)))
def hex_6603 : String := "410940424306090642434409410840064208060909"
theorem cover_6603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_6603)
  decide +kernel
#print axioms cover_6603

def state_6624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 35)))
def hex_6624 : String := "4140420507424408080940424443414205060605050742444341080A410940420509424409054409430805430A0544434107060907"
theorem cover_6624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_6624)
  decide +kernel
#print axioms cover_6624

def state_6677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 17)))
def hex_6677 : String := "440941400509400542054344090505"
theorem cover_6677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_6677)
  decide +kernel
#print axioms cover_6677

def state_6692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 55 else (if j.val < 4 then 17 else 17)))
def hex_6692 : String := "43440941070709"
theorem cover_6692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6692 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_6692)
  decide +kernel
#print axioms cover_6692

def state_6700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 16 else 8)))
def hex_6700 : String := "4441080541084042440808440508420805"
theorem cover_6700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_6700)
  decide +kernel
#print axioms cover_6700

def state_6718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 16)))
def hex_6718 : String := "4109400909"
theorem cover_6718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_6718)
  decide +kernel
#print axioms cover_6718

def state_6724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
def hex_6724 : String := "404243080909420808"
theorem cover_6724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_6724)
  decide +kernel
#print axioms cover_6724
end Mub6.Numerical.CircleFullPrototype.Forest
