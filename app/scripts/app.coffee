"use strict"

Zepto ($) ->

    ValidationMethods =
        USPhone:  (val) ->
            return /^\(?(\d{3})\)?[\- ]?\d{3}[\- ]?\d{4}$/.test(val)
        email:  (val) ->
            return /^(?:\w+\.?)*\w+@(?:\w+\.)+\w+$/.test(val);
        maxLength:  (val, length) ->
            return val.length <= length;

    App =
        init: ->
            @bindElements()


        bindElements: ->
            $('.btn-contact').click (e) ->
                e.preventDefault();
                $.scrollTo $('#contact').offset().top, 1000

            $('form').isHappy
                fields:
                    #reference the field you're talking about, probably by `id`
                    #but you could certainly do $('[name=name]') as well.
                    '#name':
                        required: true,
                        message: 'Might we inquire your name'
                    '#email':
                        required: true,
                        message: 'How are we to reach you sans email??',
                        test: ValidationMethods.email



    App.init()
