import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingsDifferentialTopologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

def ConstrainedEmbeddingsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_embeddings_endgame (A : AdmissibleClass) :
    ConstrainedEmbeddingsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse