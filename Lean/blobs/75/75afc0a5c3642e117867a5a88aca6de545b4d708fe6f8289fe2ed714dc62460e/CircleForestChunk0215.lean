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
def state_72965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 9)))
def hex_72965 : String := "4143424408404105084143070543440742090808440740084106080808"
theorem cover_72965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_72965)
  decide +kernel
#print axioms cover_72965

def state_72994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 9)))
def hex_72994 : String := "414342440641074340440742090606090642090643424443400806084340414409420943400806084408420908414406420906094008094406434008060808"
theorem cover_72994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_72994)
  decide +kernel
#print axioms cover_72994

def state_73057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 4)))
def hex_73057 : String := "08"
theorem cover_73057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_73057)
  decide +kernel
#print axioms cover_73057

def state_73058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
def hex_73058 : String := "43440640080606"
theorem cover_73058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_73058)
  decide +kernel
#print axioms cover_73058

def state_73065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_73065 : String := "424344084008434142440843400805080808080808"
theorem cover_73065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73065 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_73065)
  decide +kernel
#print axioms cover_73065

def state_73086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_73086 : String := "41424344064106434042440643060606060606064243444306064340414244050506050540414209060806440609430606"
theorem cover_73086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_73086)
  decide +kernel
#print axioms cover_73086

def state_73146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
def hex_73146 : String := "4105434244050544050505"
theorem cover_73146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_73146)
  decide +kernel
#print axioms cover_73146

def state_73158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 48) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
def hex_73158 : String := "434244050544050505"
theorem cover_73158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_73158)
  decide +kernel
#print axioms cover_73158

def state_73169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 48 else 20)))
def hex_73169 : String := "444340410509410909094340410506410A420644434005410509050A40050A"
theorem cover_73169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_73169)
  decide +kernel
#print axioms cover_73169

def state_73201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 40)))
def hex_73201 : String := "4340410508410744074243400541050905084005410508"
theorem cover_73201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73201 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_73201)
  decide +kernel
#print axioms cover_73201
end Mub6.Numerical.CircleFullPrototype.Forest
