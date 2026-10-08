import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1342031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 11)))
def hex_1342031 : String := "424441050A410543080505"
theorem cover_1342031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1342031)
  decide +kernel
#print axioms cover_1342031

def state_1342044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 22)))
def hex_1342044 : String := "4143404206050605430606"
theorem cover_1342044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1342044)
  decide +kernel
#print axioms cover_1342044

def state_1342056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 23)))
def hex_1342056 : String := "43404442410506054241434005440508050841050A444206410906424143060606414340440642060506050A40054442070542410543060505"
theorem cover_1342056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342056 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1342056)
  decide +kernel
#print axioms cover_1342056

def state_1342113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 23)))
def hex_1342113 : String := "430A404405420805440642060A"
theorem cover_1342113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342113 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1342113)
  decide +kernel
#print axioms cover_1342113

def state_1342126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 11)))
def hex_1342126 : String := "44414309050A4143400542440941090909050A"
theorem cover_1342126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1342126)
  decide +kernel
#print axioms cover_1342126

def state_1342145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 5)))
def hex_1342145 : String := "44054005424344054105050505"
theorem cover_1342145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342145 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1342145)
  decide +kernel
#print axioms cover_1342145

def state_1342159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_1342159 : String := "430608"
theorem cover_1342159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342159 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1342159)
  decide +kernel
#print axioms cover_1342159

def state_1342163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_1342163 : String := "44064206440640074143060A06"
theorem cover_1342163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1342163)
  decide +kernel
#print axioms cover_1342163

def state_1342176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
def hex_1342176 : String := "444206094243440608440808434440410A06060A444041050509404142080508414243440641400544060606440508430A0542080A"
theorem cover_1342176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 53) (hex := hex_1342176)
  decide +kernel
#print axioms cover_1342176

def state_1342231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1342231 : String := "424308444041430805430844420705054108430844084208054005410543080543444008414208444341050705050808444005410542080505"
theorem cover_1342231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342231 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1342231)
  decide +kernel
#print axioms cover_1342231
end Mub6.Numerical.CircleFullD0.Forest
