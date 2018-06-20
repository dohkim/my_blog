ready = ->
    Typed.new '.element',
        strings: ['temp'
        "Ruby on Rails Developer, web frameworks and other programming languages, a passion for Web 2.0 trends, APIs, mashups and other disruptive technologies"
        ]
        typeSpeed: 0
    return
        
$(document).ready ready
$(document).on 'turbolinks:load', ready