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
def state_1322733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
def hex_1322733 : String := "4142050542054043440541054205404344054105420540434405414205404344054105E1050542404344054205E10505E1050505050505"
theorem cover_1322733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 55) (hex := hex_1322733)
  decide +kernel
#print axioms cover_1322733

def state_1322789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
def hex_1322789 : String := "0A"
theorem cover_1322789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1322789)
  decide +kernel
#print axioms cover_1322789

def state_1322791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
def hex_1322791 : String := "0A"
theorem cover_1322791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322791 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1322791)
  decide +kernel
#print axioms cover_1322791

def state_1322796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
def hex_1322796 : String := "420A40430A0A430A05"
theorem cover_1322796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322796 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1322796)
  decide +kernel
#print axioms cover_1322796

def state_1322806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 31) else (if j.val < 3 then 30 else (if j.val < 4 then 22 else 22)))
def hex_1322806 : String := "40430A0A430A05"
theorem cover_1322806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322806 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1322806)
  decide +kernel
#print axioms cover_1322806

def state_1322817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 62) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
def hex_1322817 : String := "420A404344410A420A40430A08430A050A4405084344050A05"
theorem cover_1322817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1322817)
  decide +kernel
#print axioms cover_1322817

def state_1322843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 63) else (if j.val < 3 then 62 else (if j.val < 4 then 44 else 44)))
def hex_1322843 : String := "404344420A410A40430A0A4307050A44050A4344050705"
theorem cover_1322843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322843 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1322843)
  decide +kernel
#print axioms cover_1322843

def state_1322869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 88 else 88)))
def hex_1322869 : String := "414240430A0A430A0540434441420A09E10A444105E10843444105E10A44050A4240434442410A06E10A444205E10A43444205E10744050AE1"
theorem cover_1322869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_1322869)
  decide +kernel
#print axioms cover_1322869

def state_1322926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 88 else 89)))
def hex_1322926 : String := "410A420A44E10A"
theorem cover_1322926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1322926)
  decide +kernel
#print axioms cover_1322926

def state_1322933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 89 else 44)))
def hex_1322933 : String := "444142054340080505424340440509050543E1054108420A08"
theorem cover_1322933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1322933)
  decide +kernel
#print axioms cover_1322933

def state_1322958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 63) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 44)))
def hex_1322958 : String := "43444142054043440506050542404307050540E105410A074405410A420A40430A0505"
theorem cover_1322958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1322958)
  decide +kernel
#print axioms cover_1322958

def state_1322993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 31) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 45)))
def hex_1322993 : String := "0A"
theorem cover_1322993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1322993 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1322993)
  decide +kernel
#print axioms cover_1322993
end Mub6.Numerical.CircleFullD0.Forest
