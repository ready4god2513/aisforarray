@app.filter "toID", ->
  (text) ->
    text.replace(/[^a-z0-9]/gi,"").toLowerCase()
    
@app.filter "lettering", ->
  (text) ->
    return unless text
    words = text.split(" ")
    result = []
    angular.forEach words, (word, key) ->
      result.push("<span class='single-word word-#{key + 1}'>#{word}</span>")
    result.join(" ")