import FourierPilotCircleTree000890
import FourierPilotCircleTree000891
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000889
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![2, 3, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000890.state FourierPilotCircleTree000891.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000890.covered FourierPilotCircleTree000891.covered
#print axioms covered
end FourierPilotCircleTree000889
