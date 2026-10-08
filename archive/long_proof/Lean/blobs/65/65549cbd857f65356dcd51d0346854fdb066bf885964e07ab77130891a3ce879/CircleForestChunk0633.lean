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
def state_390860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 48)))
def hex_390860 : String := "434440054205414344400505054440054205B5050740050544400A420A41434440054205B5050A0A4005420505"
theorem cover_390860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_390860)
  decide +kernel
#print axioms cover_390860

def state_390905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 49)))
def hex_390905 : String := "410505"
theorem cover_390905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_390905)
  decide +kernel
#print axioms cover_390905

def state_390908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 24)))
def hex_390908 : String := "400A42094441090A09"
theorem cover_390908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_390908)
  decide +kernel
#print axioms cover_390908

def state_390917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
def hex_390917 : String := "43400A420A4443070A070A"
theorem cover_390917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_390917)
  decide +kernel
#print axioms cover_390917

def state_390928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
def hex_390928 : String := "4143050507"
theorem cover_390928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_390928)
  decide +kernel
#print axioms cover_390928

def state_390937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 24)))
def hex_390937 : String := "44424143400544420507050607410807420707"
theorem cover_390937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_390937)
  decide +kernel
#print axioms cover_390937

def state_390960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 48)))
def hex_390960 : String := "4440424143050543054440054205050541084307084241430A440A0843440A0A44404205410807B54005B50A4042050742410843050508"
theorem cover_390960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390960 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_390960)
  decide +kernel
#print axioms cover_390960

def state_391015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 48)))
def hex_391015 : String := "44400642434108444006B508060808"
theorem cover_391015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_391015)
  decide +kernel
#print axioms cover_391015

def state_391031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 48)))
def hex_391031 : String := "44400742414307444007B5070741430744400709070707"
theorem cover_391031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_391031)
  decide +kernel
#print axioms cover_391031

def state_391054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 48)))
def hex_391054 : String := "444042414307060741060742414344404241050507B54007B544064006B543070A41434440420706B508084307444006B5074007424143070807410807"
theorem cover_391054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391054 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_391054)
  decide +kernel
#print axioms cover_391054
end Mub6.Numerical.CircleFullPrototype.Forest
