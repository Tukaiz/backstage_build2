# A simple helper for mocking an array of models (ie. the index action).
def mock_models(model_class, count)
  count.times.map { mock_model(model_class) }
end
