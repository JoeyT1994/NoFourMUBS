import FourierPilotCircleTree003946
import FourierPilotCircleTree003987
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003945
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![3, 2, 2, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003946.state FourierPilotCircleTree003987.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003946.covered FourierPilotCircleTree003987.covered
#print axioms covered
end FourierPilotCircleTree003945
