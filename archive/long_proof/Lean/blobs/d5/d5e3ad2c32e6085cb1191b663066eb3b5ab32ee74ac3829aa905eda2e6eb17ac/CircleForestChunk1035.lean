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
def state_1548758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 80 else 87)))
def hex_1548758 : String := "414042444306080A4406070606"
theorem cover_1548758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548758 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1548758)
  decide +kernel
#print axioms cover_1548758

def state_1548776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 162 else 174)))
def hex_1548776 : String := "41404244080844080A0808"
theorem cover_1548776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1548776)
  decide +kernel
#print axioms cover_1548776

def state_1548787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 174)))
def hex_1548787 : String := "414042444308084341090809444308414042080808084341400A080841404209890940424405098908420844080840424405430505440843080508"
theorem cover_1548787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1548787)
  decide +kernel
#print axioms cover_1548787

def state_1548847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 162 else 175)))
def hex_1548847 : String := "414042440A070707400A420806"
theorem cover_1548847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548847 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1548847)
  decide +kernel
#print axioms cover_1548847

def state_1548861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 240) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 175)))
def hex_1548861 : String := "404244434109400A080909444341070A4109404209890943070942094443070907"
theorem cover_1548861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548861 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1548861)
  decide +kernel
#print axioms cover_1548861

def state_1548894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 241) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 175)))
def hex_1548894 : String := "4042444341400508050543410A050544430A414042050A42058905430A41400A0905424408094408430709"
theorem cover_1548894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1548894)
  decide +kernel
#print axioms cover_1548894

def state_1548937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 207 else (if j.val < 4 then 81 else 87)))
def hex_1548937 : String := "89"
theorem cover_1548937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1548937)
  decide +kernel
#print axioms cover_1548937

def state_1548938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 120) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
def hex_1548938 : String := "424408430841090889"
theorem cover_1548938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1548938)
  decide +kernel
#print axioms cover_1548938

def state_1548947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
def hex_1548947 : String := "4042444306054341400A060641404205440505420508058906"
theorem cover_1548947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1548947)
  decide +kernel
#print axioms cover_1548947

def state_1548972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
def hex_1548972 : String := "4244064306084406430641404208060606"
theorem cover_1548972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1548972)
  decide +kernel
#print axioms cover_1548972

def state_1548989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
def hex_1548989 : String := "404244064306050606"
theorem cover_1548989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1548989)
  decide +kernel
#print axioms cover_1548989

def state_1549001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 41 else 43)))
def hex_1549001 : String := "4443414042054405050905054341090509"
theorem cover_1549001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1549001)
  decide +kernel
#print axioms cover_1549001
end Mub6.Numerical.CircleFullD0.Forest
