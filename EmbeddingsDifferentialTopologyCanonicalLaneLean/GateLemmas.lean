import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingsDifferentialTopologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse