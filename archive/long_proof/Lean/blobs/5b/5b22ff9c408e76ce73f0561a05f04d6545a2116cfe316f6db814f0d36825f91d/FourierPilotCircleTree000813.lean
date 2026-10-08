import FourierPilotCircleTree000814
import FourierPilotCircleTree000815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000813
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![11, 11, 10, 12, 7]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000814.state FourierPilotCircleTree000815.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000814.covered FourierPilotCircleTree000815.covered
#print axioms covered
end FourierPilotCircleTree000813
