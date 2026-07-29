import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EmbeddingsDifferentialTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.embeddingExists

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse