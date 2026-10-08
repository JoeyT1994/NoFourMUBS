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
def state_2546618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
def hex_2546618 : String := "44404205054243414440054243414440054243E641440905054341080541080505054144090505434108054108050505414409050543410805410844050505"
theorem cover_2546618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 63) (hex := hex_2546618)
  decide +kernel
#print axioms cover_2546618

def state_2546681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
def hex_2546681 : String := "05"
theorem cover_2546681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2546681)
  decide +kernel
#print axioms cover_2546681

def state_2546682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 9 else 11)))
def hex_2546682 : String := "414409400543050509"
theorem cover_2546682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2546682)
  decide +kernel
#print axioms cover_2546682

def state_2546691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 4 else 11)))
def hex_2546691 : String := "434108444005420505054144400806084409400505"
theorem cover_2546691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546691 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2546691)
  decide +kernel
#print axioms cover_2546691

def state_2546714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 10)))
def hex_2546714 : String := "424340410544054243050606050606"
theorem cover_2546714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2546714)
  decide +kernel
#print axioms cover_2546714

def state_2546732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
def hex_2546732 : String := "4441064243404441064243404441054243E640060643400606060844050940440608064340080606084405094044060706434008060641084243080708"
theorem cover_2546732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 61) (hex := hex_2546732)
  decide +kernel
#print axioms cover_2546732

def state_2546793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
def hex_2546793 : String := "444105424305060609"
theorem cover_2546793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546793 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2546793)
  decide +kernel
#print axioms cover_2546793

def state_2546802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 9 else 11)))
def hex_2546802 : String := "4044060706"
theorem cover_2546802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2546802)
  decide +kernel
#print axioms cover_2546802

def state_2546807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 4 else 11)))
def hex_2546807 : String := "4340080606"
theorem cover_2546807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2546807)
  decide +kernel
#print axioms cover_2546807

def state_2546816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 10)))
def hex_2546816 : String := "4144064243404144064243404144054243E64006064340060606094105084009064340410607060609410508400906434041060A060644084208430A09"
theorem cover_2546816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 61) (hex := hex_2546816)
  decide +kernel
#print axioms cover_2546816
end Mub6.Numerical.CircleFullD0.Forest
