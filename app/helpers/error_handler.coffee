module.exports = (err, documents, next) ->
  return next(err) if err
  return next(new NotFoundError()) if !documents
  next(documents)
