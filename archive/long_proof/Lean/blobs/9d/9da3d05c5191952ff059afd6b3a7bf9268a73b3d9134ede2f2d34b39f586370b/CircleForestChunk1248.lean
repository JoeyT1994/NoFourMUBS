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
def state_1599945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 119 else 100)))
def hex_1599945 : String := "414442400843410605084043414408420840089F08089F4240080540434144420840079F42050708410A089F440808"
theorem cover_1599945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1599945)
  decide +kernel
#print axioms cover_1599945

def state_1599992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
def hex_1599992 : String := "43410605414442059F0505"
theorem cover_1599992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599992 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1599992)
  decide +kernel
#print axioms cover_1599992

def state_1600003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 101)))
def hex_1600003 : String := "42054043054144420540430541070505050505"
theorem cover_1600003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600003 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1600003)
  decide +kernel
#print axioms cover_1600003

def state_1600023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 51)))
def hex_1600023 : String := "4341424440430541050505054440430707430541444205400605050540050505414244404106070505444006410643440705060642054440070505"
theorem cover_1600023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600023 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1600023)
  decide +kernel
#print axioms cover_1600023

def state_1600082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 51)))
def hex_1600082 : String := "43054142054440414305444205060505050505"
theorem cover_1600082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1600082)
  decide +kernel
#print axioms cover_1600082

def state_1600101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
def hex_1600101 : String := "43420544404143054406050505054205444041434408050808414305444205400805050505"
theorem cover_1600101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1600101)
  decide +kernel
#print axioms cover_1600101

def state_1600139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 12)))
def hex_1600139 : String := "44084008410A05"
theorem cover_1600139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1600139)
  decide +kernel
#print axioms cover_1600139

def state_1600148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
def hex_1600148 : String := "08"
theorem cover_1600148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1600148)
  decide +kernel
#print axioms cover_1600148

def state_1600152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 48)))
def hex_1600152 : String := "420840410508414344054240050705440542080543440842084005414306050608"
theorem cover_1600152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1600152)
  decide +kernel
#print axioms cover_1600152

def state_1600186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 49)))
def hex_1600186 : String := "400841434442084008410606420840080A0A08"
theorem cover_1600186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1600186)
  decide +kernel
#print axioms cover_1600186
end Mub6.Numerical.CircleFullD0.Forest
