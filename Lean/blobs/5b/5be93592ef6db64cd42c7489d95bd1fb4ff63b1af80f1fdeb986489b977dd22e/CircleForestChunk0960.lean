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
def state_1530910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 4)))
def hex_1530910 : String := "4440410542430544050505410742050505"
theorem cover_1530910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1530910)
  decide +kernel
#print axioms cover_1530910

def state_1530930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
def hex_1530930 : String := "42094344090509"
theorem cover_1530930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1530930)
  decide +kernel
#print axioms cover_1530930

def state_1530938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 8)))
def hex_1530938 : String := "434409404206050509"
theorem cover_1530938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1530938)
  decide +kernel
#print axioms cover_1530938

def state_1530951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
def hex_1530951 : String := "424305094305444041054207050705"
theorem cover_1530951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1530951)
  decide +kernel
#print axioms cover_1530951

def state_1530966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
def hex_1530966 : String := "42430A444042084109080840420605094305444041424305090742430844404208870840420A05084305448705410742080705"
theorem cover_1530966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530966 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1530966)
  decide +kernel
#print axioms cover_1530966

def state_1531017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
def hex_1531017 : String := "4109420807"
theorem cover_1531017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1531017)
  decide +kernel
#print axioms cover_1531017

def state_1531022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 17)))
def hex_1531022 : String := "4005410505"
theorem cover_1531022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1531022)
  decide +kernel
#print axioms cover_1531022

def state_1531030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
def hex_1531030 : String := "09"
theorem cover_1531030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1531030)
  decide +kernel
#print axioms cover_1531030

def state_1531032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 16)))
def hex_1531032 : String := "09"
theorem cover_1531032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531032 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1531032)
  decide +kernel
#print axioms cover_1531032

def state_1531037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 32)))
def hex_1531037 : String := "4209434440410987094041054206050709"
theorem cover_1531037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531037 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1531037)
  decide +kernel
#print axioms cover_1531037

def state_1531055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 103) else (if j.val < 3 then 102 else (if j.val < 4 then 38 else 32)))
def hex_1531055 : String := "43444042098709404206410643448706060909"
theorem cover_1531055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1531055)
  decide +kernel
#print axioms cover_1531055

def state_1531074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 32)))
def hex_1531074 : String := "43448740414243050643050A424344870544870643054487404105054105420505414209074243448705094305448740410542090507440A0A"
theorem cover_1531074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1531074)
  decide +kernel
#print axioms cover_1531074

def state_1531131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 32)))
def hex_1531131 : String := "09"
theorem cover_1531131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531131 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1531131)
  decide +kernel
#print axioms cover_1531131

def state_1531132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 33)))
def hex_1531132 : String := "4041420643050642434440060905064344400541050505444006090641094209430709"
theorem cover_1531132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1531132)
  decide +kernel
#print axioms cover_1531132

def state_1531167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 16)))
def hex_1531167 : String := "09"
theorem cover_1531167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1531167)
  decide +kernel
#print axioms cover_1531167

def state_1531168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
def hex_1531168 : String := "09"
theorem cover_1531168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531168 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1531168)
  decide +kernel
#print axioms cover_1531168
end Mub6.Numerical.CircleFullD0.Forest
