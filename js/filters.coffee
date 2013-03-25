@app.filter "toID", ->
  (text) ->
    text.replace(/[^a-z0-9]/gi,"").toLowerCase()