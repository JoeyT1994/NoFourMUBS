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
def state_961706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 27)))
def hex_961706 : String := "44430540410707414244054305400709050943064006410607"
theorem cover_961706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_961706)
  decide +kernel
#print axioms cover_961706

def state_961731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
def hex_961731 : String := "42444305400A41420A050543400641420505054041070741424443050A430740074142440A0707420A0744430540074107050742440A43050A07440507"
theorem cover_961731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961731 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_961731)
  decide +kernel
#print axioms cover_961731

def state_961792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 13)))
def hex_961792 : String := "44054305400641424405060507"
theorem cover_961792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_961792)
  decide +kernel
#print axioms cover_961792

def state_961805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
def hex_961805 : String := "42440A43054140420A0742440543050A09400A420A0509"
theorem cover_961805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_961805)
  decide +kernel
#print axioms cover_961805

def state_961831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
def hex_961831 : String := "43054041090505"
theorem cover_961831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_961831)
  decide +kernel
#print axioms cover_961831

def state_961839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 27)))
def hex_961839 : String := "05"
theorem cover_961839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961839 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_961839)
  decide +kernel
#print axioms cover_961839

def state_961845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 54)))
def hex_961845 : String := "05"
theorem cover_961845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_961845)
  decide +kernel
#print axioms cover_961845

def state_961848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
def hex_961848 : String := "4244430506434041C705054041C74243440505064305440540414206440543050606064142064305060644054305404142C7090909"
theorem cover_961848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 53) (hex := hex_961848)
  decide +kernel
#print axioms cover_961848

def state_961901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
def hex_961901 : String := "42440543054041420605050505"
theorem cover_961901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_961901)
  decide +kernel
#print axioms cover_961901

def state_961914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
def hex_961914 : String := "414244054305060909"
theorem cover_961914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_961914)
  decide +kernel
#print axioms cover_961914

def state_961924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 55)))
def hex_961924 : String := "4041424405084405064244050505410A05"
theorem cover_961924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961924 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_961924)
  decide +kernel
#print axioms cover_961924

def state_961946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 110)))
def hex_961946 : String := "4041C7424405084405084108420505"
theorem cover_961946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961946 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_961946)
  decide +kernel
#print axioms cover_961946

def state_961963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
def hex_961963 : String := "C7"
theorem cover_961963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_961963)
  decide +kernel
#print axioms cover_961963
end Mub6.Numerical.CircleFullD0.Forest
