#
# 360 Key feature
# todo: load dependencies full AMD
#
define [
  'lib/akqa/fs-modal-content'
  'lib/akqa/pagedata'
  'vendor/jquery.ui.slider'
  'vendor/jquery.ui.touch-punch'
  'vendor/bower_components/jquery-reel/jquery.reel'
  'frame-slider'
], (FSModal) ->
  "use strict"

  $ ->

    _currentModel = $('body').find('[data-carline]').data('carline')
    _pageData = window.Audi.Components.PageData
    _currentEngineIndex = 0

    # Initialise all three sixty components on the page
    $('.three-sixty').each ->
      $(@).frameSlider

        # Enable switch frame allows the user to switch frames on radio button click
        enableSwitchFrame: true

        # If the Frame needs to be Square then we will need to set the height as well as width
        calculateFrameHeight: true
        frameStart: 36
        loops: false

    $('.three-sixty .control-group label').on 'click', (e) ->
      e.preventDefault()
      _currentEngineIndex = $(e.currentTarget).find('span.global-radio').data('engine') - 1

    $('.three-sixty .specs-link').on 'click', (e) ->
      e.preventDefault()
      _setupAndCreateModalContent()

    # Create all the content for the modal
    #
    _setupAndCreateModalContent = ->
      data = {}
      data.engines = _pageData.getEngines()
      data.currentModel = _currentModel
      data.contentType = 'techSpecsOverlay'
      data.disclaimers = _pageData.getDisclaimers()
      data.title = "#{_currentModel} Technical Specifications"
      FSModal.create data, 'techSpecificationsOverlay', _currentEngineIndex, $('.three-sixty .control-group label').length
