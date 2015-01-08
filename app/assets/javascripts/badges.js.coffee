(($) ->

  $.badgeDetails = (element, options) ->

    defaults =
      class: "hide"

    plugin = @

    $element = $(element)
    element = element
    defaults = $.extend(defaults, { el: $element })

    plugin.init = ->
      @settings = $.extend({}, defaults, options)
      @bind()
      @collapse()

    plugin.bind = ->
      @tr = @el().prev()
      @tr.find('a.js-show-badge-details').on('click', ->
        plugin.showDetails()
      )
      @el().find('a.js-show-less').on('click', ->
        plugin.hideDetails()
      )

    plugin.collapse = ->
      @el().hide()

    plugin.toggleDetails = ->
      @el().toggle('hide')

    plugin.toggleTr = ->
      @tr.toggle('slide')

    plugin.hideDetails = ->
      @el().toggle('slide', ->
        plugin.toggleTr()
      )

    plugin.showDetails = ->
      @tr.toggle('hide', ->
        plugin.toggleDetails()
      )

    plugin.el = ->
      @settings.el

    plugin.init()


  $.fn.badgeDetails = (options) ->

    # iterate through the DOM elements we are attaching the plugin to
    @each ->

      # if plugin has not already been attached to the element
      if undefined is $(@).data("badges")

        # create a new instance of the plugin
        # pass the DOM element and the user-provided options as arguments
        plugin = new $.badgeDetails(this, options)

        $(@).data "badges", plugin
      return plugin

) jQuery

$(document).ready ->
  if $('.badge-details').length
    $('.badge-details').badgeDetails()
