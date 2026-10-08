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
def state_1310656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 63 else 49)))
def hex_1310656 : String := "4441424006434406060640430806434406410706064206064142404344410A06080A43050A4008434408074441420606064107064240060608"
theorem cover_1310656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1310656)
  decide +kernel
#print axioms cover_1310656

def state_1310714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1310714 : String := "434107084142440A07074244080808"
theorem cover_1310714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1310714)
  decide +kernel
#print axioms cover_1310714

def state_1310729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1310729 : String := "4341074205440805414244400A0A0944400707074244400909094440084341070841444240080908420907440808400709"
theorem cover_1310729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310729 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1310729)
  decide +kernel
#print axioms cover_1310729

def state_1310779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 12)))
def hex_1310779 : String := "444043090643054142064406060609"
theorem cover_1310779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1310779)
  decide +kernel
#print axioms cover_1310779

def state_1310794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
def hex_1310794 : String := "444043084144420606080643414442054008054205084442050505414442064006064240060940084308064406420606400843054142090808"
theorem cover_1310794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1310794)
  decide +kernel
#print axioms cover_1310794

def state_1310851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_1310851 : String := "4043074107084309414209444007090709"
theorem cover_1310851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1310851)
  decide +kernel
#print axioms cover_1310851

def state_1310870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
def hex_1310870 : String := "430708"
theorem cover_1310870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1310870)
  decide +kernel
#print axioms cover_1310870

def state_1310874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
def hex_1310874 : String := "410708"
theorem cover_1310874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1310874)
  decide +kernel
#print axioms cover_1310874
end Mub6.Numerical.CircleFullD0.Forest
