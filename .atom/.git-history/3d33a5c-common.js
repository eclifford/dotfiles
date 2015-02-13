// For those libraries not managed by require we simply return their
// global objects
define('jquery', function() { return jQuery; });

require.config({
  baseUrl: './',
  skipDataMain: true,
  enforceDefine: false,
  shim: {
    'carousel': ['transit', 'imagesloaded', 'widget'],
    'carousel-accordion': ['carousel'],
    'carousel-cinematic': ['carousel'],
    'disclaimer': ['widget'],
    'drag': ['jquery-ui-core', 'jquery-ui-mouse', 'widget'],
    'form-handler': ['widget'],
    'global-image-gallery': ['imagesloaded'],
    'loading-spinner': ['widget'],
    'mobile-forms': ['selectbox'],
    'select-panel': ['widget'],
    'sidebar': ['widget'],
    'vendor/jquery.handleBarHelper': ['vendor/handlebars']
    // 'handlebars': {
    //   exports: 'Handlebars'
    // }
  },
  // packages: [{
  //   // Include hbs as a package, so it will find hbs-builder when needed
  //   name: "hbs",
  //   location: "vendor/bower_components/requirejs-hbs",
  //   main: "hbs"
  // }],
  paths: {
    // Packages
    'app': 'components/app/app',
    'core': 'components/core/core',

    // Require Plugins
    'hbs': 'vendor/bower_components/require-handlebars-plugin/hbs',

    // Libraries
    'accordion': 'vendor/bower_components/audi-bootstrap/accordion',
    'async': 'vendor/bower_components/requirejs-plugins/src/async',
    'atrackt': 'vendor/bower_components/atrackt/lib/atrackt',
    'atrackt-console': 'vendor/bower_components/atrackt/lib/atrackt.console',
    'atrackt-omniture': 'vendor/bower_components/atrackt/lib/plugins/atrackt.omniture',
    'atrackt-akqa': 'lib/akqa/atrackt-config',
    'backbone': 'vendor/bower_components/backbone/backbone',
    'breadcrumb': 'vendor/bower_components/audi-bootstrap/breadcrumb',
    'bronson': 'vendor/bower_components/bronson/bronson',
    'button': 'vendor/bower_components/audi-bootstrap/button',
    'bumper-core': 'vendor/bower_components/bumper/lib/bumper-core',
    'bumper-responsive-image': 'vendor/bower_components/bumper/lib/bumper-responsive-image',
    'bumper-responsive-breakpoint': 'vendor/bower_components/bumper/lib/bumper-responsive-breakpoint',
    'bumper-dom-jquery': 'vendor/bower_components/bumper/lib/bumper-dom-jquery',
    'carousel': 'vendor/bower_components/audi-bootstrap/carousel',
    'carousel-accordion': 'vendor/bower_components/audi-bootstrap/carousel_accordion',
    'carousel-cinematic': 'vendor/bower_components/audi-bootstrap/carousel_cinematic',
    'collapse': 'vendor/bower_components/twitter/js/collapse',
    'disclaimer': 'vendor/bower_components/audi-bootstrap/disclaimer',
    'drag': 'vendor/bower_components/jquery-ui/ui/jquery.ui.draggable',
    'effect': 'vendor/bower_components/jquery-ui/ui/jquery.ui.effect',
    'floating-nav': 'vendor/bower_components/audi-bootstrap/floating_nav',
    'form-handler': 'vendor/bower_components/audi-bootstrap/form_handler',
    'fullscreen-button': 'vendor/bower_components/audi-bootstrap/fullscreen_button',
    'frame-slider': 'vendor/jquery.frame-slider',
    'global-image-gallery': 'vendor/bower_components/audi-bootstrap/global_image_gallery',
    'handlebars': 'vendor/bower_components/handlebars/handlebars',
    'handlebars-compiler': 'vendor/bower_components/handlebars/handlebars',
    'imagesloaded': 'vendor/bower_components/imagesloaded/jquery.imagesloaded',
    'jcanvas': 'vendor/jcanvas',
    'joystick': 'vendor/joystick',
    'jrespond': 'vendor/bower_components/jRespond/js/jRespond',
    'jquery': 'empty:',
    'jquery-deparam': 'vendor/bower_components/jquery-deparam/jquery-deparam',
    'jquery-maskedinput': 'vendor/bower_components/jquery.maskedinput/dist/jquery.maskedinput',
    'jquery.scrollTo': 'vendor/bower_components/jquery.scrollTo/jquery.scrollTo',
    'jquery.hoverIntent': 'vendor/bower_components/jquery-hoverIntent/jquery.hoverIntent',
    'jquery-ui-core': 'vendor/bower_components/jquery-ui/ui/jquery.ui.core',
    'jquery-ui-mouse': 'vendor/bower_components/jquery-ui/ui/jquery.ui.mouse',
    'loading-spinner': 'vendor/bower_components/audi-bootstrap/loading_spinner',
    'marionette': 'vendor/bower_components/marionette/lib/backbone.marionette',
    'modal': 'vendor/bower_components/audi-bootstrap/modal',
    'mousewheel': 'vendor/bower_components/jquery-mousewheel/jquery.mousewheel',
    'backbone.wreqr': 'vendor/bower_components/backbone.wreqr/lib/backbone.wreqr',
    'backbone.babysitter': 'vendor/bower_components/backbone.babysitter/lib/backbone.babysitter',
    'mobile-forms': 'vendor/bower_components/audi-bootstrap/mobile_forms',
    'mobile-scaffold': 'vendor/bower_components/audi-bootstrap/mobile_scaffold',
    'parachute': 'vendor/jquery.parachute',
    'parsley': 'vendor/bower_components/parsleyjs/dist/parsley',
    'queue-loader': 'vendor/bower_components/audi-bootstrap/queue-loader',
    'text': 'vendor/bower_components/requirejs-text/text',
    'json': 'vendor/bower_components/requirejs-json/json',
    'tpl': 'vendor/bower_components/requirejs-tpl/tpl',
    'scrollbar': 'vendor/jquery.mCustomScrollbar',
    'search-field': 'vendor/bower_components/audi-bootstrap/search_field',
    'select-panel': 'vendor/bower_components/audi-bootstrap/select_panel',
    'selectbox': 'vendor/bower_components/jquery-selectBox/jquery.selectBox',
    'sidebar': 'vendor/bower_components/audi-bootstrap/sidebar',
    'slider': 'vendor/bower_components/slider/js/bootstrap-slider',
    'spaceframe': 'vendor/bower_components/space-frame/lib/space-frame',
    'tab': 'vendor/bower_components/twitter/js/tab',
    'tiler': 'vendor/bower_components/tiler/lib/tiler',
    'transit': 'vendor/bower_components/jquery.transit/jquery.transit',
    'transition': 'vendor/bower_components/twitter/js/transition',
    'underscore': 'vendor/bower_components/underscore/underscore',
    'videopreview': 'vendor/bower_components/audi-bootstrap/video_preview',
    'videoplayer': 'vendor/bower_components/audi-bootstrap/videoplayer',
    'widget': 'vendor/bower_components/jquery-ui/ui/jquery.ui.widget'
  },
  waitSeconds: 10
});
