import canonicalLaneMathlib.AdmissibleClass
import EmbeddingsDifferentialTopologyCanonicalLaneLean.EmbeddingObjects

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure WhitneyTrickEvidence where
  manifold : Type u
  dimension : ℕ
  embedding1 : Embedding (ℝ^dim) (ℝ^(2*dim+1))
  embedding2 : Embedding (ℝ^dim) (ℝ^(2*dim+1))
  homotopy : RegularHomotopy (ℝ^dim) (ℝ^(2*dim+1))
  transverseRegularHomotopy : Prop
  selfIntersectionsRemoved : Prop
  finalEmbedding : Embedding (ℝ^dim) (ℝ^(2*dim+1))

default := by
  exact { manifold := ℝ^0, dimension := 0, embedding1 := { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }, embedding2 := { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }, homotopy := { h := λ (x,t) => x, smooth := True, levelwiseImmmersion := λ m t => True }, transverseRegularHomotopy := True, selfIntersectionsRemoved := True, finalEmbedding := { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True } }

default := by
  exact { manifold := ℝ^0, dimension := 0, embedding1 := { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }, embedding2 := { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }, homotopy := { h := λ (x,t) => x, smooth := True, levelwiseImmmersion := λ m t => True }, transverseRegularHomotopy := True, selfIntersectionsRemoved := True, finalEmbedding := { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True } }

structure EmbedingStabilityEvidence where
  manifold : Type u
  embeddingFamily : ℝ → Embedding (ℝ^dim) (ℝ^(2*dim+1))
  smoothFamily : Prop
  familyInjective : Prop
  limitEmbedding : Embedding (ℝ^dim) (ℝ^(2*dim+1))

default := by
  exact { manifold := ℝ^0, embeddingFamily := λ t => { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }, smoothFamily := True, familyInjective := True, limitEmbedding := { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True } }

default := by
  exact { manifold := ℝ^0, embeddingFamily := λ t => { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True }, smoothFamily := True, familyInjective := True, limitEmbedding := { f := id, smooth := True, injective := True, proper := True, immersion := True, properEmbedding := True } }

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse
