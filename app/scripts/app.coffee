"use strict"

Zepto ($) ->

    App =
        bindElements: ->
            $('.btn-contact').click (e) ->
                e.preventDefault();
                $.scrollTo $('#contact').offset().top, 1000

    App.bindElements()
