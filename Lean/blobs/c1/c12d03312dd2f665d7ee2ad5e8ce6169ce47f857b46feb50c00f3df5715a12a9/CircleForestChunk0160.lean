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
def state_59743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_59743 : String := "444306410A0A0A"
theorem cover_59743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59743 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_59743)
  decide +kernel
#print axioms cover_59743

def state_59751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 8)))
def hex_59751 : String := "4341420A4006050541420A4044430640064106054306400641420A0606440543054041420A0605050A"
theorem cover_59751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_59751)
  decide +kernel
#print axioms cover_59751

def state_59792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 9)))
def hex_59792 : String := "43094142400A09404443064006440A0907444309404441420906090909090A"
theorem cover_59792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_59792)
  decide +kernel
#print axioms cover_59792

def state_59823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_59823 : String := "420A430A400A0A"
theorem cover_59823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_59823)
  decide +kernel
#print axioms cover_59823

def state_59830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_59830 : String := "41424309440A09090A"
theorem cover_59830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_59830)
  decide +kernel
#print axioms cover_59830

def state_59840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_59840 : String := "4441060507"
theorem cover_59840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_59840)
  decide +kernel
#print axioms cover_59840

def state_59847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_59847 : String := "4306404244060606424443064140064244054305400605054006054341060641400642444306400642090607064006420906440606"
theorem cover_59847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59847 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_59847)
  decide +kernel
#print axioms cover_59847

def state_59900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_59900 : String := "43064006424405414305070505"
theorem cover_59900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_59900)
  decide +kernel
#print axioms cover_59900

def state_59913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
def hex_59913 : String := "410707"
theorem cover_59913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59913 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_59913)
  decide +kernel
#print axioms cover_59913

def state_59919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_59919 : String := "09"
theorem cover_59919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_59919)
  decide +kernel
#print axioms cover_59919

def state_59923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
def hex_59923 : String := "434144070909414407420643070644074243074041064406060643094041060906"
theorem cover_59923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_59923)
  decide +kernel
#print axioms cover_59923

def state_59957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 4)))
def hex_59957 : String := "414440420708070909"
theorem cover_59957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_59957)
  decide +kernel
#print axioms cover_59957

def state_59967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_59967 : String := "444340420708074042070A07434008420708404244060608420608"
theorem cover_59967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_59967)
  decide +kernel
#print axioms cover_59967
end Mub6.Numerical.CircleFullPrototype.Forest
