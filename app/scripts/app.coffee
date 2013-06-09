"use strict"

Zepto ($) ->

    ValidationMethods =
        USPhone:  (val) ->
            return /^\(?(\d{3})\)?[\- ]?\d{3}[\- ]?\d{4}$/.test(val)
        email:  (val) ->
            return /^(?:\w+\.?\+?)*\w+@(?:\w+\.)+\w+$/.test(val);
        maxLength:  (val, length) ->
            return val.length <= length;

    App =
        init: ->
            @bindElements()

        bindElements: ->


            $('.btn-contact').click (e) ->
                e.preventDefault();
                $.scrollTo $('#contact').offset().top, 1000



    App.init()
