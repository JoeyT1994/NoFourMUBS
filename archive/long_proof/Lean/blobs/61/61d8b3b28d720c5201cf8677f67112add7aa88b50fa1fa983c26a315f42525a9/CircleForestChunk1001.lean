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
def state_1540632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 21)))
def hex_1540632 : String := "444308074341404244430805430A050A42084408084042050A06414042054405430505424405430505440843414042050A08050505"
theorem cover_1540632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540632 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1540632)
  decide +kernel
#print axioms cover_1540632

def state_1540685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 21)))
def hex_1540685 : String := "40054205440505"
theorem cover_1540685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540685 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1540685)
  decide +kernel
#print axioms cover_1540685

def state_1540693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 20)))
def hex_1540693 : String := "4309414042070942084306440609400506"
theorem cover_1540693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1540693)
  decide +kernel
#print axioms cover_1540693

def state_1540711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 21)))
def hex_1540711 : String := "414009420A0609"
theorem cover_1540711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540711 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1540711)
  decide +kernel
#print axioms cover_1540711

def state_1540720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
def hex_1540720 : String := "4244430907430941400A420A0A0509"
theorem cover_1540720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1540720)
  decide +kernel
#print axioms cover_1540720

def state_1540737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 42)))
def hex_1540737 : String := "4341400906064140420744070A08400506"
theorem cover_1540737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540737 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1540737)
  decide +kernel
#print axioms cover_1540737

def state_1540755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 38 else 43)))
def hex_1540755 : String := "41400A420A0A0A"
theorem cover_1540755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540755 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1540755)
  decide +kernel
#print axioms cover_1540755

def state_1540764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 43)))
def hex_1540764 : String := "4244430A05430A41400542050A05440A0A"
theorem cover_1540764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1540764)
  decide +kernel
#print axioms cover_1540764

def state_1540781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 43)))
def hex_1540781 : String := "42444308414042050808054341400A080A41404205440A0A4244084308054408430841400508050544430841400A0808430A41400A4244080A0A400A0A"
theorem cover_1540781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1540781)
  decide +kernel
#print axioms cover_1540781

def state_1540842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 43)))
def hex_1540842 : String := "4042050A4244050544060A"
theorem cover_1540842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1540842)
  decide +kernel
#print axioms cover_1540842

def state_1540853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 21)))
def hex_1540853 : String := "44430641400942080606430941400A42440A0A0A400906"
theorem cover_1540853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1540853)
  decide +kernel
#print axioms cover_1540853

def state_1540876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
def hex_1540876 : String := "400942440643060506"
theorem cover_1540876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1540876)
  decide +kernel
#print axioms cover_1540876
end Mub6.Numerical.CircleFullD0.Forest
