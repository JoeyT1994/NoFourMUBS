import FourierPilotCircleTree004676
import FourierPilotCircleTree004709
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004675
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![23, 22, 20, 15, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004676.state FourierPilotCircleTree004709.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004676.covered FourierPilotCircleTree004709.covered
#print axioms covered
end FourierPilotCircleTree004675
