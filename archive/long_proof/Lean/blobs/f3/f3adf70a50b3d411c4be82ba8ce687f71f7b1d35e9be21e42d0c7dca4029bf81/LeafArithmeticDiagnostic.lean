import SquareConcretePhaseChecksNoInit

/- Diagnostic equalities for exactly two tagged leaves. Expected integers are
 generated outside Lean only as test inputs; no external computation is trusted. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 4000000
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007.LeafReductionDiagnostic

def controlCell : Cell := childCell (childCell (ordinalCell 2241383) 4) 0
def endpointCell : Cell := childCell (childCell (ordinalCell 2241383) 4) 1

theorem control_level : controlCell.level=2 := by
  decide +kernel
#print axioms control_level

theorem control_indices : List.ofFn controlCell.index=[68, 12, 58, 60, 40] := by
  decide +kernel
#print axioms control_indices

theorem control_valid : validCheck controlCell=true := by
  decide +kernel
#print axioms control_valid

theorem negative_mod_one : ((-36960:ℤ)%218880)=181920 := by
  decide +kernel
#print axioms negative_mod_one

theorem negative_mod_two : ((-65760:ℤ)%218880)=153120 := by
  decide +kernel
#print axioms negative_mod_two

theorem control_shifted_indices : List.ofFn (fun i : Fin 5 => supplierShiftedIndex (supplierMidpointIndex controlCell i) 1 i)=[160800, 181920, 59040, 28320, 153120] := by
  decide +kernel
#print axioms control_shifted_indices

theorem literal_lookup_0 : compactSupplierTable ⟨160800,by decide⟩=(-6462780, -66796947) := by
  decide +kernel
#print axioms literal_lookup_0

theorem literal_lookup_1 : compactSupplierTable ⟨181920,by decide⟩=(32750469, -58574793) := by
  decide +kernel
#print axioms literal_lookup_1

theorem literal_lookup_2 : compactSupplierTable ⟨59040,by decide⟩=(-8300872, 66593507) := by
  decide +kernel
#print axioms literal_lookup_2

theorem literal_lookup_3 : compactSupplierTable ⟨28320,by decide⟩=(46127575, 48742655) := by
  decide +kernel
#print axioms literal_lookup_3

theorem literal_lookup_4 : compactSupplierTable ⟨153120,by decide⟩=(-20913586, -63766931) := by
  decide +kernel
#print axioms literal_lookup_4

theorem control_entries : List.ofFn (leafMidpointEntry compactSupplierTable controlCell 1)=[(-6462780, -66796947), (32750469, -58574793), (-8300872, 66593507), (46127575, 48742655), (-20913586, -63766931)] := by
  decide +kernel
#print axioms control_entries

theorem control_midpoint_sum : leafMidpointPair compactSupplierTable controlCell 1=(110309670, -73802509) := by
  decide +kernel
#print axioms control_midpoint_sum

theorem literal_normfloor : integerPairNormFloor (110309670, -73802509)=132721639 := by
  decide +kernel
#print axioms literal_normfloor

theorem control_normfloor : leafMidpointNorm compactSupplierTable controlCell 1=132721639 := by
  decide +kernel
#print axioms control_normfloor

theorem control_square_midpoint : squareMidpointRejectCheck compactSupplierTable controlCell 1=true := by
  decide +kernel
#print axioms control_square_midpoint

theorem endpoint_indices : List.ofFn endpointCell.index=[69, 12, 58, 60, 40] := by
  decide +kernel
#print axioms endpoint_indices

theorem endpoint_valid : validCheck endpointCell=true := by
  decide +kernel
#print axioms endpoint_valid

theorem endpoint_midpoint_sum : leafMidpointPair compactSupplierTable endpointCell 1=(115847792, -74108056) := by
  decide +kernel
#print axioms endpoint_midpoint_sum

theorem endpoint_midpoint_norm : leafMidpointNorm compactSupplierTable endpointCell 1=137523506 := by
  decide +kernel
#print axioms endpoint_midpoint_norm

theorem endpoint_square_midpoint : squareMidpointRejectCheck compactSupplierTable endpointCell 1=false := by
  decide +kernel
#print axioms endpoint_square_midpoint

theorem endpoint_zero_difference : integerPairSub (integerFiveSum 67108864 (leafEndpointEntry compactSupplierTable endpointCell 1 0)) (integerFiveSum 67108864 (leafMidpointEntry compactSupplierTable endpointCell 1))=(-3104148, -1950829) := by
  decide +kernel
#print axioms endpoint_zero_difference

theorem endpoint_all_norms : List.ofFn (leafEndpointNorm compactSupplierTable endpointCell 1)=[3666260, 3173717, 1894436, 7314709, 9002919, 4091262, 3767544, 1779134, 7371660, 2388419, 5110938, 5547064, 12691236, 7175340, 8708742, 4421005, 4269644, 8578100, 7074551, 12597154, 5495215, 4960462, 2238572, 7259825, 1867142, 3684062, 4115643, 8961567, 7387066, 1926058, 3318954, 3666261] := by
  decide +kernel
#print axioms endpoint_all_norms

theorem endpoint_reject : endpointRejectCheck compactSupplierTable endpointCell 1=true := by
  decide +kernel
#print axioms endpoint_reject

theorem endpoint_combined : squareConcretePhaseChecks.reject endpointCell 1=true := by
  decide +kernel
#print axioms endpoint_combined

end Seed0024ClusterTube20261007.LeafReductionDiagnostic
