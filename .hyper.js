module.exports = {
  config: {
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 16,

    // font family with optional fallbacks

    fontFamily: 'PowerlineSymbols, "Operator Mono", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // set to true for blinking cursor
    cursorBlink: true,

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#000',

    // border color (window, tabs)
    borderColor: '#333',
    css: '',
    termCSS: '',
    showHamburgerMenu: '',
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    shell: '',

    shellArgs: ['--login'],

    env: {},
    bell: 'SOUND',

    copyOnSelect: true
    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  plugins: [
    'hyperline',
    'hyper-keymap',
    'verminal',
    'hyperterm-overlay',
    'hyperminimal'
  ],
    overlay: {
      alwaysOnTop: true,
      animate: true,
      hasShadow: false,
      hideDock: false,
      hideOnBlur: true, 
      hotkeys: ['Ctrl+Space'],
      position: 'top',
      primaryDisplay: false,
      resizable: true,
      startAlone: false,
      startup: false,
      size: 0.4,
      tray: true,
      unique: false
    },

  localPlugins: [],
  keymaps: {
    // 'window:devtools': 'cmd+alt+o',
  }
};
