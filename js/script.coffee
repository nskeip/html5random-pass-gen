root = exports ? this

randomString = (n=8) ->
    chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz'
    (chars.charAt (Math.floor (Math.random() * chars.length)) for i in [1..n]).join('')


ko = root.ko
AppViewModel = ()->
  @result = ko.observable(randomString 6)

  @generate = ()-> 
    @result randomString 6
    return

  return

ko.applyBindings new AppViewModel()