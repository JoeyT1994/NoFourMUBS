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
def state_1307798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 46)))
def hex_1307798 : String := "4140434244050505054342444140430605434206060606410A064441090641400543070540064306060606"
theorem cover_1307798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307798 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1307798)
  decide +kernel
#print axioms cover_1307798

def state_1307841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 47)))
def hex_1307841 : String := "4140054344420A41074008430806420A0705400843444206060806"
theorem cover_1307841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1307841)
  decide +kernel
#print axioms cover_1307841

def state_1307868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 31 else 23)))
def hex_1307868 : String := "420605"
theorem cover_1307868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307868 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1307868)
  decide +kernel
#print axioms cover_1307868

def state_1307871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 11)))
def hex_1307871 : String := "4440094341090606400543444142400543440942410708070509424006060841424005430705050805"
theorem cover_1307871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1307871)
  decide +kernel
#print axioms cover_1307871

def state_1307912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
def hex_1307912 : String := "420644064006430806"
theorem cover_1307912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307912 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1307912)
  decide +kernel
#print axioms cover_1307912

def state_1307925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 22)))
def hex_1307925 : String := "40430542054144054043054205440541404305090505050505"
theorem cover_1307925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307925 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 25) (hex := hex_1307925)
  decide +kernel
#print axioms cover_1307925

def state_1307952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 23)))
def hex_1307952 : String := "05"
theorem cover_1307952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1307952)
  decide +kernel
#print axioms cover_1307952

def state_1307954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 23)))
def hex_1307954 : String := "4441404305424405054405410A050505410905"
theorem cover_1307954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1307954)
  decide +kernel
#print axioms cover_1307954

def state_1307975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 46)))
def hex_1307975 : String := "40430542444140430542440541080544410905410705050541404305420A444107050705054441404305424409070705054140070540430544054205070505"
theorem cover_1307975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1307975)
  decide +kernel
#print axioms cover_1307975

def state_1308038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 46)))
def hex_1308038 : String := "05"
theorem cover_1308038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1308038)
  decide +kernel
#print axioms cover_1308038
end Mub6.Numerical.CircleFullD0.Forest
