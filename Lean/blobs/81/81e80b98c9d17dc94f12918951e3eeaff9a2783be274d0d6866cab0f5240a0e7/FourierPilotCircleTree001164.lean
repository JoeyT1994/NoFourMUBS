import FourierPilotCircleTree001165
import FourierPilotCircleTree001172
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001164
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![18, 29, 31, 44, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001165.state FourierPilotCircleTree001172.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001165.covered FourierPilotCircleTree001172.covered
#print axioms covered
end FourierPilotCircleTree001164
